import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/page/home/home_page.dart';
import 'package:weather_app/providers/weather_provider.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WeatherProvider(),
      builder: (context, child) {
        context.read<WeatherProvider>().getWeather();
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
      },
    );
  }
}
