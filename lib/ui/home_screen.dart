import 'package:fontfamily_example/resources/app_images.dart';
import 'package:fontfamily_example/resources/shorts.dart';
import 'package:fontfamily_example/services/weather_api.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<ProviderModel>().getData();
    super.initState();
  }

  WeatherApi weatherApi = WeatherApi();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backroundAppColor,
      appBar: AppBar(
        backgroundColor: AppColors.backroundAppColor,
        centerTitle: true,
        title: Text('Weather App', style: AppStyles.getAppBarStyle()),
      ),
      body: Column(
        children: [
          Consumer<ProviderModel>(
            builder: (context, value, child) {
              Future.delayed(const Duration(seconds: 5), () {
                if (value.data.isEmpty) {
                  return Center(
                    child: Image.asset(AppImages.notInternet),
                  );
                }
              });
              if (value.data.isNotEmpty) {
                return HasData(value: value);
              }
              return Image.asset(AppImages.notInternet);
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
