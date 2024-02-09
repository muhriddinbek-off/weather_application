import 'package:flutter/material.dart';
import 'package:fontfamily_example/data/view_model/provider_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Weather App'),
      ),
      body: Column(
        children: [
          Consumer<ProviderWeather>(
            builder: (context, value, child) {
              if (value.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (value.weatherData.isNotEmpty) {
                return ListTile(
                  title: Text(value.weatherData[0].location.country),
                  subtitle: Text(value.weatherData[0].location.name),
                );
              } else {
                return const Center(
                  child: Text('error'),
                );
              }
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        context.read<ProviderWeather>().getWeatherData();
      }),
    );
  }
}
