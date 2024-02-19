import 'package:fontfamily_example/models/forcast/forecast.dart';

class WeatherModel {
  Location location;
  Current current;
  Forecast forecast;
  WeatherModel({
    required this.current,
    required this.forecast,
    required this.location,
  });
  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      current: Current.fromJson(json['current']),
      location: Location.fromJson(json['location']),
      forecast: Forecast.formJson(json['forecast']),
    );
  }
}

class Location {
  final String name;
  Location({
    required this.name,
  });
  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      name: json['name'],
    );
  }
}

class Current {
  final num tempC;
  Current({
    required this.tempC,
  });
  factory Current.fromJson(Map<String, dynamic> json) {
    return Current(
      tempC: json['temp_c'],
    );
  }
}
