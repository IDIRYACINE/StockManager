import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Features/Cities/Logic/actions.dart';

import 'events.dart';
import 'state.dart';

class RegionBloc extends Bloc<RegionEvent, RegionState> {
  RegionBloc._() : super(RegionState.initial()) {
    on<RefreshCities>(_refreshCities);
    on<AddCityEvent>(_addCity);
    on<UpdateCityEvent>(_updateCity);
    on<DeleteCityEvent>(_deleteCity);
    on<LoadCitiesEvent>(_loadCities);
  }

  factory RegionBloc.initial() => RegionBloc._();

  FutureOr<void> _loadCities(
      LoadCitiesEvent event, Emitter<RegionState> emit) {
    final newState = state.copyWith(cities: event.cities);
    emit(newState);
  }

  FutureOr<void> _addCity(AddCityEvent event, Emitter<RegionState> emit) {
    addCity(event.city);
    final cities = state.addCity(event.city);
    final newState = state.copyWith(cities: cities);
    emit(newState);
  }

  FutureOr<void> _updateCity(
      UpdateCityEvent event, Emitter<RegionState> emit) {
    updateCity(event.city);
    final cities = state.replaceCity(event.city.instance);
    final newState = state.copyWith(cities: cities);
    emit(newState);
  }

  FutureOr<void> _deleteCity(
      DeleteCityEvent event, Emitter<RegionState> emit) {
    deleteCity(event.city);
    final cities = state.removeCity(event.city);
    final newState = state.copyWith(cities: cities);
    emit(newState);
  }

  FutureOr<void> _refreshCities(
      RefreshCities event, Emitter<RegionState> emit) {
    loadCities().then((cities) {
      add(LoadCitiesEvent(cities));
    });
  }
}
