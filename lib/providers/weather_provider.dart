import 'package:flutter/material.dart';
import 'package:weather_app/models/forecast.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/repositories/api_repository.dart';

class WeatherProvider extends ChangeNotifier {
  Future<WeatherObj> getWeather() async {
    WeatherObj weatherObj = await ApiRepository.callApiGetWeather();
    return weatherObj;
  }

  Future<List<Forecast>> getForecast() async {
    List<Forecast> forecastObjLst = await ApiRepository.callApiGetForecast();
    return forecastObjLst;
  }
}
