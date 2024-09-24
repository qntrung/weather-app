import 'package:flutter/material.dart';
import 'package:weather_app/widgets/home_details_weather.dart';
import 'package:weather_app/widgets/home_location.dart';
import 'package:weather_app/widgets/home_temperature.dart';
import 'package:weather_app/widgets/home_weather_icon.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF1D6CF3),
                Color(0xFF19D2FE),
              ],
            ),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HomeWeatherIcon(),
              HomeTemperature(),
              HomeLocation(),
              SizedBox(
                height: 40,
              ),
              HomeDetailsWeather()
            ],
          ),
        ),
      ),
    );
  }
}
