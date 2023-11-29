import 'package:blue_business/core/managers/disposable_provider.dart';
import 'package:blue_business/core/models/nessages.dart';
import 'package:blue_business/ui/views/message/view_model.dart';

class MessagingStateManager extends DisposableProvider {
  Conversation? _current;
  Conversation? get current => _current;
  set current(Conversation? v) {
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

  List<Conversation> conversations = [
    Conversation(
        firstName: "Michael",
        lastName: "Olamide",
        message: "Thank you very much...",
        unreadCount: 3,
        dateTime: DateTime(2023, 5, 1, 18, 4, 58).toUtc().toString()),
    Conversation(
        firstName: "Favour",
        lastName: "Momoh",
        message: "08053930590",
        unreadCount: 5,
        dateTime: DateTime(2023, 5, 1, 18, 4, 54).toUtc().toString()),
    Conversation(
        firstName: "Sharon",
        lastName: "Onoja",
        message: "Thank you very much...",
        unreadCount: 2,
        dateTime: DateTime(2023, 5, 1, 18, 4, 50).toUtc().toString()),
    Conversation(
        firstName: "Mary",
        lastName: "Adebanjo",
        message: "Okay, I'll send it now",
        unreadCount: 1,
        dateTime: DateTime(2023, 5, 1, 18, 4, 46).toUtc().toString()),
    Conversation(
        firstName: "Semira",
        lastName: "Yesufu",
        message: "Please send me money",
        dateTime: DateTime(2023, 5, 1, 18, 4, 42).toUtc().toString()),
    Conversation(
        firstName: "Aondo",
        lastName: "Terwase",
        message: "Hello",
        unreadCount: 1,
        dateTime: DateTime(2023, 5, 1, 18, 4, 38).toUtc().toString()),
  ];

  @override
  void disposeValues() {}
}
