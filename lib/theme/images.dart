const String basePath = 'assets/images/';

extension ImageAsset on String {
  String toSvgAsset() {
    return '$basePath$this.svg';
  }

  String toPngAsset() {
    return '$basePath$this.png';
  }
}

String google = 'google'.toSvgAsset();
String eye = 'eye'.toSvgAsset();
String favorite = 'favorite'.toSvgAsset();
String notification = 'notification'.toSvgAsset();
String notifications = 'notifications'.toSvgAsset();
String profile = 'profile'.toSvgAsset();
String shopping = 'shopping'.toSvgAsset();
String home = 'home'.toSvgAsset();
String search = 'search'.toSvgAsset();
String arrow = 'arrow'.toSvgAsset();
String payment = 'payment'.toSvgAsset();
String delete = 'delete'.toSvgAsset();
String cart = 'cart'.toSvgAsset();
String delivery = 'delivery'.toSvgAsset();
String logout = 'logout'.toSvgAsset();
