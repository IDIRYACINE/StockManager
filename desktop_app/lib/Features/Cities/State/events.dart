
import 'package:stock_manager/Domain/Models/region.dart';
import 'package:stock_manager/Types/i_wrappers.dart';

class RegionEvent{}

class LoadCitiesEvent extends RegionEvent{
  final List<City> cities;
  LoadCitiesEvent(this.cities);
}

class RefreshCities extends RegionEvent{}

class AddCityEvent extends RegionEvent{
  final City city;
  AddCityEvent(this.city);
}

class UpdateCityEvent extends RegionEvent{
  final UpdateRequestWrapper<City> city;
  UpdateCityEvent(this.city);
}

class DeleteCityEvent extends RegionEvent{
  final City city;
  DeleteCityEvent(this.city);
}