import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/providers/weather_provider.dart';
import 'package:weather_app/widgets/home_details_weather.dart';
import 'package:weather_app/widgets/home_location.dart';
import 'package:weather_app/widgets/home_temperature.dart';
import 'package:weather_app/widgets/home_weather_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: FutureBuilder(
          future: context.read<WeatherProvider>().getWeather(),
          initialData: null,
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (!snapshot.hasData) {
              return Container(
                child: const Text('No data'),
              );
            }
            WeatherObj data = snapshot.data as WeatherObj;

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HomeWeatherIcon(
                  nameIcon: data.weather[0].main,
                ),
                HomeTemperature(
                  temp: data.main.temp,
                ),
                HomeLocation(
                  location: data.name,
                ),
                const SizedBox(
                  height: 40,
                ),
                HomeDetailsWeather(
                  windSpeed: data.wind.speed,
                  humidity: data.main.humidity,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
