enum NotificationState { logoutSuccess, error, warning, signupSuccess }

enum LogLevel {
  debug('DEBUG'),
  info('INFO'),
  warning('WARNING'),
  error('ERROR'),
  severe('SEVERE'),
  all('ALL');

  const LogLevel(this.key);
  final String key;
}

enum TransactionType { debit, credit }

enum PaymentMode {
  blue("blue-user"),
  phone("phone"),
  qr("blue-user"),
  withdrawal("withdraw"),
  topup("wallet_topup"),
  airtime("airtime"),
  data("data"),
  electricity("power"),
  tv("tv"),
  offline("offline");

  const PaymentMode(this.key);
  final String key;
}

enum FetchState { error, success, loading, idle }

enum SlideDirections { rtl, ltr, ttb, btt }
