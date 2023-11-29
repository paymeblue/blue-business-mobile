import 'package:blue_business/core/managers/disposable_provider.dart';
import 'package:blue_business/core/models/nessages.dart';

class MessagingStateManager extends DisposableProvider {
  Chat? _current;
  Chat? get current => _current;
  set current(Chat? v) {
    _current = v;
    notifyListeners();
  }

  List<BlueMessage> _messages = [];
  List<BlueMessage> get messages => _messages;
  set messages(List<BlueMessage> m) {
    _messages = m;
    notifyListeners();
  }

  List<Chat> _chats = [];
  List<Chat> get chats => _chats;
  set chats(List<Chat> c) {
    _chats = c;
    notifyListeners();
  }

  String _peer = "";
  String get peer => _peer;

  set peer(String v) {
    RegExp exp = RegExp(r'[a-zA-Z]+?');
    if (v.isNotEmpty && !exp.hasMatch(v)) {
      if (v.isNotEmpty && v[0] == "0") {
        v = v.replaceFirst("0", "");
      }
      if (v.length > 1 && v[0] != "+") {
        v.replaceAll(" ", "");
        v = "+234$v";
      }
    }
    _peer = v;
    notifyListeners();
  }

  @override
  void disposeValues() {}
}
