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
  static String homeToBranchesToDetails = "/dash/home/branches/details";
  static String homeToStaff = "/dash/home/staff";
  static String homeToStaffToDetails = "/dash/home/staff/details";
  static String homeToRecive = "/dash/home/receive-money";
  static String transactionHistory = "/dash/home/transactions";
  static String initiateTransaction = "/dash/home/transactions/initiate";
  static String verifyReceiver = "/dash/home/transactions/verify-receiver";
  static String confirmTransaction = "/dash/home/transactions/confirm";
  static String transactionPin = "/dash/home/transactions/pin";
  static String transactionDetails({required String method}) =>
      "/dash/home/transactions/$method-details";

  //INSIGHTS
  static String insights = "/dash/insights";

  //SETTINGS
  static String settings = "/dash/settings";
  static String settingsToBranches = "/dash/settings/branches";
  static String settingsToBranchesToDetails = "/dash/settings/branches/details";
  static String settingsToStaff = "/dash/settings/staff";
  static String settingsToStaffToDetails = "/dash/settings/staff/details";
  static String paymentLinkHistory = "/dash/settings/payment-link-history";
  static String personalInfo = "/dash/settings/personal-info";
  static String beneficiary = "/dash/settings/manage-beneficiaries";
  static String accountRecovery = "/dash/settings/account-recovery";
  static String withdrawalInfo = "/dash/settings/withdrawal-info";
  static String changePin = "/dash/settings/change-pin";
  static String changePassword = "/dash/settings/change-password";

  //WEBVIEW
  static String webview = "/webview";
}
