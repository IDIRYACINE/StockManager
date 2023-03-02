import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
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
    on<LoadModelSizes>(_loadModelSize);
  }

  FutureOr<void> _addModelColor(
      AddModelColor event, Emitter<SizeColorState> emit) {}

  FutureOr<void> _deleteModelColor(
      DeleteModelColor event, Emitter<SizeColorState> emit) {}

  FutureOr<void> _refreshModelColor(event, Emitter<SizeColorState> emit) {}

  FutureOr<void> _updateModelColor(
      UpdateModelColor event, Emitter<SizeColorState> emit) {}

  FutureOr<void> _loadModelColor(event, Emitter<SizeColorState> emit) {}

  FutureOr<void> _addModelSize(
      AddModelSize event, Emitter<SizeColorState> emit) {}

  FutureOr<void> _loadModelSize(
      LoadModelSizes event, Emitter<SizeColorState> emit) {}

  FutureOr<void> _updateModelSize(
      UpdateModelSize event, Emitter<SizeColorState> emit) {}

  FutureOr<void> _deleteModelSize(
      DeleteModelSize event, Emitter<SizeColorState> emit) {}

  FutureOr<void> _refreshModelSize(
      RefreshModelSizes event, Emitter<SizeColorState> emit) {}
}
