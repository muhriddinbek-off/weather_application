import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/weather_model.dart';

class WeatherApi {
  Future<WetherModel> getWeatherData() async {
    Uri url = Uri.parse('http://api.weatherapi.com/v1/forecast.json?key=4c86cc5911e74b6abe9102831230203&q=toshkent&days=7');
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
    WetherModel wetherModel = WetherModel.fromJson(data);
    return wetherModel;
  }
}
