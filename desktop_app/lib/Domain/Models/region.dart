class City {
  int cityId;
  String cityName;

  City({required this.cityId, required this.cityName});

  City copyWith({int? cityId, String? cityName}) {
    return City(
        cityId: cityId ?? this.cityId, cityName: cityName ?? this.cityName);
  }

  static City defaultInstance() {
    return City(cityId: 0, cityName: '');
  }
}

enum _CityFields {
  cityId,
  cityName,
}

extension _ApiCityFields on _CityFields {
  String get name {
    switch (this) {
      case _CityFields.cityId:
        return 'city_id';
      case _CityFields.cityName:
        return 'city_name';
    }
  }
}

City cityFromJson(Map<String, dynamic> json) {
  return City(
    cityId: json[_CityFields.cityId.name],
    cityName: json[_CityFields.cityName.name],
  );
}

List<City> citiesFromJsonList(List<dynamic> json) {
  return json.map((e) => cityFromJson(e)).toList();
}
