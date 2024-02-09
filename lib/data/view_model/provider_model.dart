import 'package:flutter/material.dart';
import 'package:fontfamily_example/data/model/weather_model.dart';
import 'package:fontfamily_example/data/services/weather_api.dart';

class ProviderWeather extends ChangeNotifier {
  List<WetherModel> weatherData = [];
  bool isLoading = false;
  Future getWeatherData() async {
    getLoading();
    final info = await WeatherApi().getWeatherData();
    weatherData.add(info);
    getLoading();
    notifyListeners();
  }

  void getLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }
}
