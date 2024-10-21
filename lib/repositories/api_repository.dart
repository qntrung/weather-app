import 'package:dio/dio.dart';
import 'package:weather_app/apps/utils/helper.dart';
import 'package:weather_app/models/forecast.dart';
import 'package:weather_app/models/weather.dart';

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

  static Future<List<Forecast>> callApiGetForecast() async {
    try {
      final dio = Dio();
      final res = await dio.get(
          "https://api.openweathermap.org/data/2.5/forecast?lat=10.015851&lon=105.9866751&units=metric&appid=${MyKey.apiToken}");
      final data = res.data["list"] as List;
      // List<Forecast> fData = [];
      // for (var d in data) {
      //   fData.add(Forecast.fromMap(d));
      // }
      List<Forecast> fdata =
          List<Forecast>.from(data.map((d) => Forecast.fromMap(d)).toList());
      return fdata;
    } catch (e) {
      rethrow;
    }
  }
}
