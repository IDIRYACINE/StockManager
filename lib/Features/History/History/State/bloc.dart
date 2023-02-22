import 'package:flutter_bloc/flutter_bloc.dart';

import 'history.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {

  HistoryBloc._() : super(HistoryState.initial());

  factory HistoryBloc.initial() => HistoryBloc._();
}