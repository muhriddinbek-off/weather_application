import 'package:fontfamily_example/resources/shorts.dart';

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
              if (value.data.isEmpty) {
                return const IsLoading();
              }
              if (value.data.isNotEmpty) {
                return HasData(value: value);
              } else {
                return Text('data');
              }
            },
          ),
        ],
      ),
    );
  }
}
