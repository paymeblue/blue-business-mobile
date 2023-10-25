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

  static String activeNavItemIcon(String item) {
    return "assets/images/navbar_icons/active/$item.svg";
  }

  static String inactiveNavItemIcon(String item) {
    return "assets/images/navbar_icons/inactive/$item.svg";
  }
}
