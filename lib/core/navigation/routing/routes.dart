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
  static String createPin = "/signup/create-pin";

  //HOME
  static String home = "/dash/home";
  static String homeToBranches = "/dash/home/branches";
  static String homeToBranchesToDetails = "/dash/home/branches/enter-details";
  static String homeToStaff = "/dash/home/staff";

  //INSIGHTS
  static String insights = "/dash/insights";

  //SETTINGS
  static String settings = "/dash/settings";
  static String settingsToBranches = "/dash/settings/branches";
  static String settingsToStaff = "/dash/settings/staff";
}
