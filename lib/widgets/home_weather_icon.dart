// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:weather_app/utils/helper.dart';

class HomeWeatherIcon extends StatelessWidget {
  const HomeWeatherIcon({
    super.key,
    required this.nameIcon,
  });

  final String nameIcon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width / 1.5,
      padding: const EdgeInsets.all(20),
      child: Image.asset(
        AssetCustom.getLinkImg(nameIcon),
        fit: BoxFit.cover,
      ),
    );
  }
}
