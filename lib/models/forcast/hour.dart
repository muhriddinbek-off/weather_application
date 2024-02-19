class Hour {
  final String time;
  final double tempC;
  final double tempF;
  final int isDay;
  Hour({
    required this.isDay,
    required this.tempC,
    required this.tempF,
    required this.time,
  });
  factory Hour.fromJson(Map<String, dynamic> json) {
    return Hour(
      isDay: json['is_day'],
      tempC: json['temp_c'],
      tempF: json['temp_f'],
      time: json['time'],
    );
  }
}
