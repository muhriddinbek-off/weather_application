import 'package:flutter/material.dart';
import 'package:fontfamily_example/models/weather_model.dart';
import 'package:fontfamily_example/services/weather_api.dart';

class ProviderModel extends ChangeNotifier {
  List<WeatherModel> data = [];
  Future getData() async {
    final info = await WeatherApi().getWeatherData();
    data.add(info);
    notifyListeners();
  }
}
