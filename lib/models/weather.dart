import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Weather {
  int id;
  String main;
  String description;
  String icon;
  Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'main': main,
      'description': description,
      'icon': icon,
    };
  }

  factory Weather.fromMap(Map<String, dynamic> map) {
    return Weather(
      id: map['id'] as int,
      main: map['main'] as String,
      description: map['description'] as String,
      icon: map['icon'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Weather.fromJson(String source) =>
      Weather.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Main {
  num temp;
  num feels_like;
  num temp_min;
  num temp_max;
  num pressure;
  num humidity;
  num sea_level;
  num grnd_level;
  Main({
    required this.temp,
    required this.feels_like,
    required this.temp_min,
    required this.temp_max,
    required this.pressure,
    required this.humidity,
    required this.sea_level,
    required this.grnd_level,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'temp': temp,
      'feels_like': feels_like,
      'temp_min': temp_min,
      'temp_max': temp_max,
      'pressure': pressure,
      'humidity': humidity,
      'sea_level': sea_level,
      'grnd_level': grnd_level,
    };
  }

  factory Main.fromMap(Map<String, dynamic> map) {
    return Main(
      temp: map['temp'] as num,
      feels_like: map['feels_like'] as num,
      temp_min: map['temp_min'] as num,
      temp_max: map['temp_max'] as num,
      pressure: map['pressure'] as num,
      humidity: map['humidity'] as num,
      sea_level: map['sea_level'] as num,
      grnd_level: map['grnd_level'] as num,
    );
  }

  String toJson() => json.encode(toMap());

  factory Main.fromJson(String source) =>
      Main.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Wind {
  num speed;
  num deg;
  num gust;
  Wind({
    required this.speed,
    required this.deg,
    required this.gust,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'speed': speed,
      'deg': deg,
      'gust': gust,
    };
  }

  factory Wind.fromMap(Map<String, dynamic> map) {
    return Wind(
      speed: map['speed'] as num,
      deg: map['deg'] as num,
      gust: map['gust'] as num,
    );
  }

  String toJson() => json.encode(toMap());

  factory Wind.fromJson(String source) =>
      Wind.fromMap(json.decode(source) as Map<String, dynamic>);
}

class WeatherObj {
  List<Weather> weather;
  String base;
  Main main;
  num visibility;
  Wind wind;
  num timezone;
  num id;
  String name;
  int cod;
  WeatherObj({
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weather': weather.map((x) => x.toMap()).toList(),
      'base': base,
      'main': main.toMap(),
      'visibility': visibility,
      'wind': wind.toMap(),
      'timezone': timezone,
      'id': id,
      'name': name,
      'cod': cod,
    };
  }

  factory WeatherObj.fromMap(Map<String, dynamic> map) {
    return WeatherObj(
      weather: List<Weather>.from(
        (map['weather'] as List).map<Weather>(
          (x) => Weather.fromMap(x as Map<String, dynamic>),
        ),
      ),
      base: map['base'] as String,
      main: Main.fromMap(map['main'] as Map<String, dynamic>),
      visibility: map['visibility'] as num,
      wind: Wind.fromMap(map['wind'] as Map<String, dynamic>),
      timezone: map['timezone'] as num,
      id: map['id'] as num,
      name: map['name'] as String,
      cod: map['cod'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory WeatherObj.fromJson(String source) =>
      WeatherObj.fromMap(json.decode(source) as Map<String, dynamic>);
}
