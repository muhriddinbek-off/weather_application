import 'package:fontfamily_example/resources/shorts.dart';
import 'package:http/http.dart' as http;

class WeatherApi {
  Future<WeatherModel> getWeatherData() async {
    Uri url = Uri.parse('http://api.weatherapi.com/v1/forecast.json?key=4c86cc5911e74b6abe9102831230203&q=samarkand&days=7');
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
    WeatherModel weatherModel = WeatherModel.fromJson(data);
    return weatherModel;
  }
}
