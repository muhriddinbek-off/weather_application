class WetherModel {
  Location location;
  WetherModel({
    required this.location,
  });
  factory WetherModel.fromJson(Map<String, dynamic> json) {
    return WetherModel(
      location: Location.formJson(json['location']),
    );
  }
}

class Location {
  String name;
  String country;
  String localtime;
  Location({
    required this.country,
    required this.localtime,
    required this.name,
  });
  factory Location.formJson(Map<String, dynamic> json) {
    return Location(
      country: json['country'],
      localtime: json['localtime'],
      name: json['name'],
    );
  }
}
