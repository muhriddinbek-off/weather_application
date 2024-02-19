import 'package:fontfamily_example/models/forcast/forecastday.dart';

class Forecast {
  List<ForecastDay> forecastDay;
  Forecast({
    required this.forecastDay,
  });
  factory Forecast.formJson(Map<String, dynamic> json) {
    List<ForecastDay> data = [];
    json['forecastday'].forEach((element) {
      data.add(ForecastDay.fromJson(element));
    });
    return Forecast(forecastDay: List.from(data));
  }
}
