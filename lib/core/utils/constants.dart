import 'package:blue_business/core/io/api/timed_refresh.dart';
import 'package:blue_business/core/models/login/data/login_data.dart';
import 'package:blue_business/core/models/todo/todo.dart';
import 'package:blue_business/core/models/topup_account/topup_account.dart';
import 'package:blue_business/core/models/wallet/wallet.dart';
import 'package:blue_business/core/models/withdrawal_account/get/data/withdrawal_account.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/modules/bill_pages/airtime/initiate/presentation/view_model.dart';
import 'package:flutter/material.dart';

class AppStateValues extends ChangeNotifier {
  String _refreshToken = "ABCDE";
  String _fcmToken = "";
  String _narration = "";
  String _recoveryCode = "";
  String _path = RoutePaths.homePath;
  FetchState _todoState = FetchState.loading;
  String _kycLevel = "basic";
  bool _hasSavedBeneficiary = true;
  int _count = 0;
  bool _newMessage = false;
  bool _hasNetwork = true;
  String? _channelId;
  String _token = "";

  List<TodoOption> _todos = [];
  LoginData? _currentUser;
  Wallet? _wallet;
  TopupAccount? _account;
  WithdrawalAccount? _withdrawalAccount;
  Object? _extra;

  String get refreshToken => _refreshToken;
  String get fcmToken => _fcmToken;
  String get narration => _narration;
  String get recoveryCode => _recoveryCode;
  List<TodoOption> get todos => _todos;
  FetchState get todoState => _todoState;
  String get kycLevel => _kycLevel;
  bool get hasSavedBeneficiary => _hasSavedBeneficiary;
  String get resetPath => _path;
  int get unreadCount => _count;
  bool get hasNewMessage => _newMessage;
  bool get hasNetwork => _hasNetwork;
  String? get channelId => _channelId;
  String get accessToken => _token;

  LoginData? get currentUser => _currentUser;
  Wallet? get wallet => _wallet;
  TopupAccount? get account => _account;
  WithdrawalAccount? get withdrawalAccount => _withdrawalAccount;
  Object? get extra => _extra;

  NotificationState? notificationState;

  set accessToken(String v) {
    _token = v;
    notifyListeners();
  }

  set refreshToken(String v) {
    _refreshToken = v;
    notifyListeners();
  }

  set fcmToken(String t) {
    _fcmToken = t;
    notifyListeners();
  }

  set narration(String v) {
    _narration = v;
    notifyListeners();
  }

  set recoveryCode(String v) {
    _recoveryCode = v;
    notifyListeners();
  }

  set todos(List<TodoOption> t) {
    _todos = t;
    notifyListeners();
  }

  set todoState(FetchState v) {
    _todoState = v;
    notifyListeners();
  }

  set kycLevel(String v) {
    _kycLevel = v;
    notifyListeners();
  }

  set resetPath(String path) {
    _path = path;
    notifyListeners();
  }

  set hasNetwork(bool v) {
    _hasNetwork = v;
    notifyListeners();
  }

  set hasSavedBeneficiary(bool v) {
    _hasSavedBeneficiary = v;
    notifyListeners();
  }

  set unreadCount(int v) {
    _count = v;
    notifyListeners();
  }

  set hasNewMessage(bool v) {
    _newMessage = v;
    notifyListeners();
  }

  set channelId(String? id) {
    _channelId = id;
    notifyListeners();
  }

  set currentUser(LoginData? u) {
    _currentUser = u;
    notifyListeners();
  }

  set wallet(Wallet? w) {
    _wallet = w;
    notifyListeners();
  }

  set withdrawalAccount(WithdrawalAccount? a) {
    _withdrawalAccount = a;
    notifyListeners();
  }

  set account(TopupAccount? acc) {
    _account = acc;
    notifyListeners();
  }

  set extra(Object? e) {
    _extra = e;
    notifyListeners();
  }

  clear() {
    accessToken = "";
    refreshToken = "";
    narration = "";
    todos = [];
    todoState = FetchState.loading;
    kycLevel = "basic";
    hasSavedBeneficiary = true;
    resetPath = RoutePaths.homePath;
    unreadCount = 0;
    hasNewMessage = false;

    currentUser = null;
    wallet = null;
    account = null;
    withdrawalAccount = null;
    extra = null;
  }
}

class AppConstants {
  static const String baseUrl =
      "https://blue-business-backend-8c46f2828f9e.herokuapp.com/api";
}
