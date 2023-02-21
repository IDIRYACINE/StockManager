import 'package:flutter_bloc/flutter_bloc.dart';

import 'stock.dart';

class StockBloc extends Bloc<StockEvent, StockState> {
  StockBloc() : super(StockState.initial());
}