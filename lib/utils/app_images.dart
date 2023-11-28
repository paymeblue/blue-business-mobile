class AppAssets {
  AppAssets._();

  static String imagePath = "assets/images";
  static String iconPath = "$imagePath/icons";
  static String logoPath = "$imagePath/logos";

  static String loader = "$imagePath/loader.svg";
  static String aboutBlueIcon = "$iconPath/about_blue.png";
  static String blueRegisterIcon = "$logoPath/blue_register_icon.png";
  static String phoneRegisterIcon = "$logoPath/phone_register_icon.png";
  static String launcher = "$imagePath/launcher.png";
  static String phoneImage = "$imagePath/phone.png";
  static String watermark = "$imagePath/watermark.png";
  static String wemaLogo = "$imagePath/wema_logo.png";
  static String polarisLogo = "$imagePath/polaris_logo.png";
  static String messageNotification = "$imagePath/notification_message.png";
  static String avatarPlaceholder = "$imagePath/avatar_placeholder.png";
  static String blueBgLogo = "$logoPath/blue_bg_logo.png";

  //ICONS
  static String searchIcon = "$iconPath/search.svg";
  static String successIcon = "$iconPath/success.svg";
  static String warningIcon = "$iconPath/warning.svg";
  static String faceIdIcon = "$iconPath/face_id.svg";
  static String hideIcon = "$iconPath/hide.svg";
  static String exportIcon = "$iconPath/export.svg";
  static String comingSoonIcon = "$iconPath/coming_soon.svg";
  static String userIcon = "$iconPath/user.svg";
  static String notificationIcon = "$iconPath/notifications.svg";
  static String copyWhiteIcon = "$iconPath/copy_white.svg";
  static String copyIcon = "$iconPath/copy.svg";
  static String payBlueIcon = "$iconPath/pay_blue.svg";
  static String payQrIcon = "$iconPath/pay_qr.svg";
  static String payPhoneIcon = "$iconPath/pay_phone.svg";
  static String payOfflineIcon = "$iconPath/pay_offline.svg";
  static String scanIcon = "$iconPath/scan.svg";
  static String deleteIcon = "$iconPath/delete.svg";
  static String pinIcon = "$iconPath/pin.svg";
  static String passwordIcon = "$iconPath/password.svg";
  static String recoverAccountIcon = "$iconPath/recover_account.svg";
  static String supportIcon = "$iconPath/support.svg";
  static String virtualBankIcon = "$iconPath/virtual_bank.svg";
  static String kycIcon = "$iconPath/kyc.svg";
  static String recoveryCodeIcon = "$iconPath/recovery_code.svg";
  static String recoveryPhoneIcon = "$iconPath/recovery_phone.svg";
  static String securityQuestionIcon = "$iconPath/security_question.svg";
  static String editInfoIcon = "$iconPath/edit_info.svg";
  static String beneficiariesIcon = "$iconPath/beneficiaries.svg";
  static String biometricsIcon = "$iconPath/biometrics.svg";
  static String fundWalletIcon = "$iconPath/fund_wallet.svg";
  static String cameraWhiteIcon = "$iconPath/camera_white.svg";

  static String activeNavItemIcon(String item) {
    return "assets/images/navbar_icons/active/$item.svg";
  }

  static String inactiveNavItemIcon(String item) {
    return "assets/images/navbar_icons/inactive/$item.svg";
  }
}
