import 'package:flutter_bloc/flutter_bloc.dart';
import 'events.dart';
import 'state.dart';

class SizeColorBloc extends Bloc<SizeColorEvent, SizeColorState> {
  SizeColorBloc._() : super(SizeColorState.initial());

  factory SizeColorBloc.initial() => SizeColorBloc._();
}