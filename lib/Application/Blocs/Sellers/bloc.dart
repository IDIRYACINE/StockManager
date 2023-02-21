import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Application/Blocs/Sellers/sellers.dart';

class SellersBloc extends Bloc<SellersEvent, SellersState> {
  SellersBloc._() : super(SellersState.initial());

  factory SellersBloc.initial() => SellersBloc._();
}
