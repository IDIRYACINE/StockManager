import 'package:stock_manager/Domain/Models/region.dart';

class RegionState {
  late List<City> _cities;

  RegionState({required List<City> cities}) {
    _cities = cities;
  }

  factory RegionState.initial() {
    return RegionState(cities: []);
  }

  get citiesCount => _cities.length;

  City city(int index) {
    return _cities[index].copyWith();
  }

  RegionState copyWith({List<City>? cities}) {
    return RegionState(
      cities: cities ?? _cities,
    );
  }

  List<City> removeCity(City city) {
    final cities = _cities
        .where((element) => element.cityId != city.cityId)
        .toList();
    return cities;
  }

  List<City> addCity(City city) {
    final cities = _cities.map((e) => e).toList();
    cities.add(city);
    return cities;
  }

  List<City> replaceCity(City city) {
    final cities = _cities.map((e) {
      if (e.cityId == city.cityId) {
        return city;
      }
      return e;
    }).toList();
    return cities;
  }
}
