class RoutePaths {
  RoutePaths._();

  //PRE AUTH PATHS
  static String initial = '/';
  static String welcome = '/welcome';
  static String login = '/login';

  //AUTH
  static String signup = '/signup';
  static String initiateSignup = '/signup/initiate';
  static String verifySignupOtp = '/signup/verify-signup-otp';
  static String businessDetails = '/signup/business-details';
  static String shareholders = '/signup/shareholders';
  static String shareholderKyc = '/signup/shareholders/kyc';

  //HOME
  static String home = "/dash/home";
}
