import 'package:fontfamily_example/models/forcast/day.dart';
import 'package:fontfamily_example/models/forcast/hour.dart';

class ForecastDay {
  final String date;
  final Day day;
  final List<Hour> hour;
  ForecastDay({
    required this.date,
    required this.day,
    required this.hour,
  });
  factory ForecastDay.fromJson(Map<String, dynamic> json) {
    List<Hour> data = [];
    json['hour'].forEach((e) {
      data.add(Hour.fromJson(e));
    });
    return ForecastDay(
      date: json['date'],
      day: Day.fromJson(json['day']),
      hour: List.from(data),
    );
  }
}
