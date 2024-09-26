class MyKey {
  static const apiToken = "81e002136f7c60133b4836707b232688";
}

const assetPath = "assets/images/";

class AssetCustom {
  static String getLinkImg(String name) =>
      "$assetPath${name.replaceAll(" ", "").toLowerCase()}.png";
}
