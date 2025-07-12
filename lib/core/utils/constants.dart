import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/models/login/data/login_data.dart';
import 'package:blue_business/core/models/topup_account/topup_account.dart';
import 'package:blue_business/core/models/wallet/wallet.dart';
import 'package:blue_business/core/models/withdrawal_account/get/data/withdrawal_account.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:flutter/material.dart';

class AppStateValues extends ChangeNotifier {
  String _refreshToken = "";
  String _fcmToken = "";
  String _narration = "";
  String _recoveryCode = "";
  PageRouteInfo _path = HomeRoute();
  String _kycLevel = "basic";
  bool _hasSavedBeneficiary = true;
  bool _showLiveChat = false;
  bool _notificationStatus = false;
  int _count = 0;
  bool _newMessage = false;
  bool _hasNetwork = true;
  bool _isTestApp = false;
  bool _hasClosedAddressBanner = false;
  List<String> _lockedFeatures = [];
  String? _channelId;
  String _token = "";
  LoginData? _currentUser;
  Wallet? _wallet;
  TopupAccount? _account;
  WithdrawalAccount? _withdrawalAccount;
  Object? _extra;
  bool _isAutowithdrawalEnabled = false;

  String get refreshToken => _refreshToken;
  String get fcmToken => _fcmToken;
  String get narration => _narration;
  String get recoveryCode => _recoveryCode;
  String get kycLevel => _kycLevel;
  bool get hasSavedBeneficiary => _hasSavedBeneficiary;
  bool get notificationStatus => _notificationStatus;
  bool get isTestApp => _isTestApp;
  List<String> get lockedFeatures => _lockedFeatures;
  PageRouteInfo get resetPath => _path;
  int get unreadCount => _count;
  bool get hasNewMessage => _newMessage;
  bool get showLiveChat => _showLiveChat;
  bool get hasNetwork => _hasNetwork;
  bool get hasClosedAddressBanner => _hasClosedAddressBanner;
  String? get channelId => _channelId;
  String get accessToken => _token;

  LoginData? get currentUser => _currentUser;
  Wallet? get wallet => _wallet;
  TopupAccount? get account => _account;
  WithdrawalAccount? get withdrawalAccount => _withdrawalAccount;
  Object? get extra => _extra;

  bool get isAutoWithdrawalEnabled => _isAutowithdrawalEnabled;

  NotificationState? notificationState;

  set isAutoWithdrawalEnabled(bool c) {
    _isAutowithdrawalEnabled = c;
    notifyListeners();
  }

  set hasClosedAddressBanner(bool v) {
    _hasClosedAddressBanner = v;
    notifyListeners();
  }

  set lockedFeatures(List<String> v) {
    _lockedFeatures = v;
    notifyListeners();
  }

  set isTestApp(bool v) {
    _isTestApp = v;
    notifyListeners();
  }

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

  set kycLevel(String v) {
    _kycLevel = v;
    notifyListeners();
  }

  set resetPath(PageRouteInfo path) {
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

  set showLiveChat(bool v) {
    _showLiveChat = v;
    notifyListeners();
  }

  set notificationStatus(bool v) {
    _notificationStatus = v;
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
    kycLevel = "basic";
    hasSavedBeneficiary = true;
    hasNetwork = true;
    notificationStatus = false;
    resetPath = HomeRoute();
    unreadCount = 0;
    hasNewMessage = false;
    hasClosedAddressBanner = false;
    isAutoWithdrawalEnabled = false;
    isTestApp = false;

    lockedFeatures = [];

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
