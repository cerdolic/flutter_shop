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
String search = 'search'.toSvgAsset();
