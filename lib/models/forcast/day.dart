class Day {
  final double maxtempC;
  final double maxtempF;
  final double mintempC;
  Day({
    required this.maxtempC,
    required this.maxtempF,
    required this.mintempC,
  });
  factory Day.fromJson(Map<String, dynamic> json) {
    return Day(
      maxtempC: json['maxtemp_c'],
      maxtempF: json['maxtemp_f'],
      mintempC: json['mintemp_c'],
    );
  }
}
