enum NotificationState { success, error, warning }

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
  blue,
  phone,
  qr,
  withdrawal,
  topup,
  airtime,
  data,
  electricity,
  tv,
  offline,
}

enum FetchState { error, complete, loading, empty }

enum SlideDirections { rtl, ltr, ttb, btt }
