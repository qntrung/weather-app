import 'package:flutter/material.dart';

class MyKey {
  static const apiToken = "81e002136f7c60133b4836707b232688";
}

const assetPath = "assets/images/";

class AssetCustom {
  static String getLinkImg(String name) =>
      "$assetPath${name.replaceAll(" ", "").toLowerCase()}.png";
}

Widget createTemp(num temp, {double size = 100}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        temp.round().toString(),
        style: TextStyle(
            fontSize: size,
            fontFamily: "Inter",
            fontWeight: FontWeight.w700,
            color: Colors.white),
      ),
      Text(
        "o",
        style: TextStyle(
            fontSize: size / 2,
            fontFamily: "Inter",
            fontWeight: FontWeight.w700,
            color: Colors.white),
      ),
    ],
  );
}
