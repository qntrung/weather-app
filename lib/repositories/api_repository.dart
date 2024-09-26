import 'package:dio/dio.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/utils/helper.dart';

class ApiRepository {
  static Future<WeatherObj> callApiGetWeather() async {
    try {
      final dio = Dio();
      final res = await dio.get(
          "https://api.openweathermap.org/data/2.5/weather?lat=10.015851&lon=105.9866751&units=metric&appid=${MyKey.apiToken}");
      final data = res.data;
      WeatherObj wData = WeatherObj.fromMap(data);
      return wData;
    } catch (e) {
      rethrow;
    }
  }
}
