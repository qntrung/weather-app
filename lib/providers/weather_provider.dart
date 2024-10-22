import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/models/forecast.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/repositories/api_repository.dart';

class WeatherProvider extends ChangeNotifier {
  Position? position;

  updatePosition(Position positionCurrent) {
    position = positionCurrent;
    notifyListeners();
  }

  String cityName = "Ho Chi Minh";

  updateCityName(String name) {
    cityName = name;
    notifyListeners();
  }

  Future<WeatherObj> getWeather() async {
    WeatherObj weatherObj = await ApiRepository.callApiGetWeather(position);
    updateCityName(weatherObj.name);
    return weatherObj;
  }

  Future<List<Forecast>> getForecast() async {
    List<Forecast> forecastObjLst =
        await ApiRepository.callApiGetForecast(position);
    return forecastObjLst;
  }
}
