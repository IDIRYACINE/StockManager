import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Features/SizesAndColors/Logic/actions.dart';
import 'events.dart';
import 'state.dart';

class SizeColorBloc extends Bloc<SizeColorEvent, SizeColorState> {
  factory SizeColorBloc.initial() => SizeColorBloc._();

  SizeColorBloc._() : super(SizeColorState.initial()) {
    on<AddModelColor>(_addModelColor);
    on<DeleteModelColor>(_deleteModelColor);
    on<UpdateModelColor>(_updateModelColor);
    on<RefreshModelColors>(_refreshModelColor);
    on<LoadModelColors>(_loadModelColor);

    on<AddModelSize>(_addModelSize);
    on<DeleteModelSize>(_deleteModelSize);
    on<UpdateModelSize>(_updateModelSize);
    on<RefreshModelSizes>(_refreshModelSize);
    on<LoadModelSizes>(_loadModelSizes);
  }

  FutureOr<void> _addModelColor(
      AddModelColor event, Emitter<SizeColorState> emit) {
    final newColors = state.colors..add(event.modelColor);

    addModelColor(event.modelColor);

    emit(state.copyWith(colors: newColors));
  }

  FutureOr<void> _deleteModelColor(
      DeleteModelColor event, Emitter<SizeColorState> emit) {
    final newColors = state.colors..remove(event.modelColor);
    deleteModelColor(event.modelColor);
    emit(state.copyWith(colors: newColors));
  }

  FutureOr<void> _refreshModelColor(event, Emitter<SizeColorState> emit) {
    loadAllColors().then((colors) {
      add(LoadModelColors(colors));
    });
  }

  FutureOr<void> _updateModelColor(
      UpdateModelColor event, Emitter<SizeColorState> emit) {
    final newColors = state.replaceColor(event.modelColor);
    updateModelColor(event.modelColor);
    emit(state.copyWith(colors: newColors));
  }

  FutureOr<void> _loadModelColor(event, Emitter<SizeColorState> emit) {
    emit(state.copyWith(colors: event.colors));
  }

  FutureOr<void> _addModelSize(
      AddModelSize event, Emitter<SizeColorState> emit) {
    final newSizes = state.sizes..add(event.modelSize);
    addModelSize(event.modelSize);
    emit(state.copyWith(sizes: newSizes));
  }

  FutureOr<void> _loadModelSizes(
      LoadModelSizes event, Emitter<SizeColorState> emit) {
    emit(state.copyWith(sizes: event.sizes));
  }

  FutureOr<void> _updateModelSize(
      UpdateModelSize event, Emitter<SizeColorState> emit) {
    final newSizes = state.replaceSize(event.modelSize);
    updateModelSize(event.modelSize);
    emit(state.copyWith(sizes: newSizes));
  }

  FutureOr<void> _deleteModelSize(
      DeleteModelSize event, Emitter<SizeColorState> emit) {
    final newSizes = state.sizes..remove(event.modelSize);
    deleteModelSize(event.modelSize);
    emit(state.copyWith(sizes: newSizes));
  }

  FutureOr<void> _refreshModelSize(
      RefreshModelSizes event, Emitter<SizeColorState> emit) {
    loadAllSizes().then((sizes) {
      add(LoadModelSizes(sizes));
    });
  }
}
