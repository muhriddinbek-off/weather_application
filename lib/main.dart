import 'package:flutter/material.dart';
import 'package:fontfamily_example/data/view_model/provider_model.dart';
import 'package:provider/provider.dart';
import 'ui/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ProviderWeather(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
