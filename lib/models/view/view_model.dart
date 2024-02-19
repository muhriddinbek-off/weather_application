import 'package:flutter/material.dart';
import 'package:fontfamily_example/models/weather_model.dart';
import 'package:fontfamily_example/services/weather_api.dart';

class ProviderModel extends ChangeNotifier {
  List<WeatherModel> data = [];
  bool isLoading = false;
  Future getData() async {
    getISLoading();
    final info = await WeatherApi().getWeatherData();
    getISLoading();
    data.add(info);
    notifyListeners();
  }

  void getISLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }
}
