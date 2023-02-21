import 'package:flutter_bloc/flutter_bloc.dart';

import 'history.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {

  HistoryBloc() : super(HistoryState.initial());
}