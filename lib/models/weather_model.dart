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
      forecast: Forecast.fromJson(json['forecast']),
      location: Location.fromJson(json['location']),
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

class Forecast {
  final List<ForecastDay> forecastday;
  Forecast({
    required this.forecastday,
  });
  factory Forecast.fromJson(Map<String, dynamic> json) {
    List<ForecastDay> forecastData = [];
    json['forecastday'].forEach((e) {
      forecastData.add(ForecastDay.fromJson(e));
    });

    return Forecast(
      forecastday: List.from(forecastData),
    );
  }
}

class ForecastDay {
  String date;
  ForecastDay({
    required this.date,
  });
  factory ForecastDay.fromJson(Map<String, dynamic> json) {
    return ForecastDay(date: json['date']);
  }
}
