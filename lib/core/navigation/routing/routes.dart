class RoutePaths {
  RoutePaths._();

  // **********************************************************************************
  //PRE AUTH PATHS
  static String initial = '/';
  static String welcome = '/welcome';

  static String comingSoon = '/coming-soon';

  static String login = '/login';
  static String initiateResetPassword = "$login/initiate-reset-password";
  static String verifyPasswordOtp = "$login/verify-reset-password";
  static String resetPassword = "$login/reset-password";

  static String initiateResetPhone = "$login/initiate-reset-phone";
  static String verifyPhoneOtp = "$login/verify-reset-phone";
  static String resetPhone = "$login/reset-phone";

  // **********************************************************************************
  //AUTH
  static String signup = '/signup';
  static String initiateSignup = '/signup/initiate';
  static String verifySignupOtp = '/signup/verify-signup-otp';
  static String businessDetails = '/signup/business-details';
  static String shareholders = '/signup/shareholders';
  static String shareholderKyc = '/signup/shareholders/kyc';
  static String createPin = "/signup/create-pin";

  // **********************************************************************************
  //HOME
  static String home = "/dash/home";

  static String homeToBranches = "/dash/home/branches";
  static String homeToBranchInsights = "/dash/home/branches/insights";
  static String homeToBranchesToDetails = "/dash/home/branches/details";

  static String homeToStaff = "/dash/home/staff";
  static String homeToStaffToDetails = "/dash/home/staff/details";

  static String transactionHistory = "/dash/home/transactions";
  static String transactionDetails({required String method}) =>
      "/dash/home/transactions/$method-details";

  static String wallet = "/dash/home/wallet";
  static String walletPaymentSuccess = "/dash/home/wallet/success";
  static String walletPaymentFailure = "/dash/home/wallet/failure";
  static String initiateTransaction = "/dash/home/wallet/initiate-transaction";
  static String verifyReceiver = "/dash/home/wallet/verify-receiver";
  static String confirmTransaction = "/dash/home/wallet/confirm-transaction";
  static String transactionPin = "/dash/home/wallet/pin";

  static String initiateResetPin = "$transactionPin/initiate-reset-pin";
  static String verifyPinOtp = "$transactionPin/verify-reset-pin";
  static String resetPin = "$transactionPin/reset-pin";

  static String bills = "$wallet/bills";

  static String initiateAirtime = "$bills/initiate-airtime";
  static String reviewAirtime = "$bills/review-airtime";
  static String confirmAirtime = "$bills/confirm-airtime";
  static String airtimeSuccess = "$bills/airtime-success";

  static String initiateData = "$bills/initiate-data";
  static String reviewData = "$bills/review-data";
  static String confirmData = "$bills/confirm-data";
  static String dataSuccess = "$bills/data-success";

  static String initiatePower = "$bills/initiate-power";
  static String reviewPower = "$bills/review-power";
  static String confirmPower = "$bills/confirm-power";
  static String powerSuccess = "$bills/power-success";

  static String initiateTv = "$bills/initiate-tv";
  static String reviewTv = "$bills/review-tv";
  static String confirmTv = "$bills/confirm-tv";
  static String tvSuccess = "$bills/tv-success";

  static String receive = "/dash/home/receive-money";

  // **********************************************************************************
  //INSIGHTS
  static String insights = "/dash/insights";

  // **********************************************************************************
  //SETTINGS
  static String settings = "/dash/settings";

  static String settingsToBranches = "/dash/settings/branches";
  static String settingsToBusinessFees = "/dash/settings/business-fees";
  static String settingsToBranchInsights = "/dash/settings/branches/insights";
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

  // **********************************************************************************
  static String webview = "/webview";
}
