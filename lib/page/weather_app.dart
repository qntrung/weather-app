import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/apps/config/theme_config.dart';
import 'package:weather_app/page/bottom_nav_custom/bottom_custom.dart';
import 'package:weather_app/providers/weather_provider.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WeatherProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeConfig.themeLight,
        home: const BottomCustom(),
      ),
    );
  }
}
