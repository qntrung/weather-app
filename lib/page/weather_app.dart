// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:geolocator_platform_interface/src/models/position.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/apps/config/theme_config.dart';
import 'package:weather_app/page/bottom_nav_custom/bottom_custom.dart';
import 'package:weather_app/providers/weather_provider.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({
    super.key,
    required this.positionCurrent,
  });

  final Position positionCurrent;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WeatherProvider()..updatePosition(positionCurrent),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeConfig.themeLight,
        home: const BottomCustom(),
      ),
    );
  }
}
