import 'package:fontfamily_example/resources/shorts.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ProviderModel(),
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
