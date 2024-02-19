import 'package:fontfamily_example/resources/shorts.dart';

class HasData extends StatelessWidget {
  ProviderModel value;
  HasData({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: value.data[0].forecast.forecastDay[0].hour.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              value.data[0].forecast.forecastDay[0].hour[index].time,
              style: AppStyles.getTitleStyle(),
            ),
          );
        },
      ),
    );
  }
}
