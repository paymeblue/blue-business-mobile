class RoutePaths {
  RoutePaths._();

  static String accountPhonePath = "/account-phone";
  static String personalInfoPath = "/personal-info";
  static String passwordPath = "/password";
  static String transactionPath = "$homePath/transaction";

  static String splashPath = '/';
  static String welcomePath = '/welcome';
  static String loginPath = '/login';
  static String addAccountPhonePath = "$accountPhonePath/add";
  static String registerOtpPath = '/register/otp';
  static String pinPath = "/pin";
  static String homePath = "/dash/home";
  static String walletPath = "/dash/wallet";
  static String billsPath = "$walletPath/bills";

  static String initiateElectricityPath = "$billsPath/electricity/initiate";
  static String reviewElectricityPath = "$billsPath/electricity/review";
  static String electricityPinPath = "$billsPath/electricity/pin";
  static String electricitySuccessPath = "$billsPath/electricity/success";

  static String initiateAirtimePath = "$billsPath/airtime/initiate";
  static String reviewAirtimePath = "$billsPath/airtime/review";
  static String airtimePinPath = "$billsPath/airtime/pin";
  static String airtimeSuccessPath = "$billsPath/airtime/success";

  static String initiateDataPath = "$billsPath/data/initiate";
  static String reviewDataPath = "$billsPath/data/review";
  static String dataPinPath = "$billsPath/data/pin";
  static String dataSuccessPath = "$billsPath/data/success";

  static String initiateCablePath = "$billsPath/cable/initiate";
  static String reviewCablePath = "$billsPath/cable/review";
  static String cablePinPath = "$billsPath/cable/pin";
  static String cableSuccessPath = "$billsPath/cable/success";
  static String loansPath = "/dash/loans";
  static String settingsPath = "/dash/settings";
  static String insightsPath = "/dash/insights";
  static String enterRecoveryCodePath = "/recover-phone/recovery-code";
  static String recoverPhoneNumberPath = "/recover-phone$accountPhonePath";
  static String phoneRecoveryOtpPath = "/recover-phone/otp";
  static String passwordRecoveryPhonePath =
      "/recover-password$accountPhonePath";
  static String pinRecoveryPhonePath = "/dash/recover-pin$accountPhonePath";
  static String passwordRecoveryOtpPath = "/recover-password/otp";
  static String pinRecoveryOtpPath = "/dash/recover-pin/otp";
  static String recoverPasswordPath = "/recover-password/add";
  static String recoverPinPath = "/dash/recover-pin/add";
  static String receiveMoneyPath = "$homePath/receive-money";
  static String transactionHistoryPath = "$transactionPath/history";
  static String manageBeneficiaryPath = "$settingsPath/manage-beneficiaries";
  static String updateKycPath = "$settingsPath/update-kyc";
  static String paymentLinkPath = "$settingsPath/payment-link-history";
  static String changePinPath = "$settingsPath$pinPath/change";
  static String changePasswordPath = "$settingsPath/password/change";
  static String initiateTransactionPath = "$transactionPath/initiate";
  static String verifyReceiverPath = "$transactionPath/verify";
  static String confirmPaymentPath = "$transactionPath/confirm";
  static String transactionPinPath = "$transactionPath/pin";
  static String successPath = "$transactionPath/success";
  static String viewPersonalInfoPath = "$settingsPath$personalInfoPath/view";
  static String addWithdrawalBankPath = "$settingsPath/withdrawal-details/add";
  static String accountRecoveryPath = "$settingsPath/account-recovery";
  static String pushPaymentPin = "$transactionPath/push-payment/pin";

  static String businessProfilePath = "/dash/business-profile";
  static String businessNamePath = "$businessProfilePath/name";
  static String businessSizePath = "$businessProfilePath/size";
  static String businessLocation = "$businessProfilePath/location";

  static String staffManagementPath = "$settingsPath/staff-management";
  static String addStaffPath = "$staffManagementPath/add";

  static String branchManagementPath = "$settingsPath/branch-management";
  static String addBranchPath = "$branchManagementPath/add";
}
