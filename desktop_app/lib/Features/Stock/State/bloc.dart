import 'package:flutter_bloc/flutter_bloc.dart';

import 'stock.dart';

class StockBloc extends Bloc<StockEvent, StockState> {
  StockBloc._() : super(StockState.initial());

  factory StockBloc.initial() => StockBloc._();
}