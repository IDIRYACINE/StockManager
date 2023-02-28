import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Features/Sellers/Logic/actions.dart';
import 'package:stock_manager/Features/Sellers/State/sellers.dart';

class SellersBloc extends Bloc<SellersEvent, SellersState> {
  SellersBloc._() : super(SellersState.initial()) {
    on<RefreshSellers>(_refreshSellers);
    on<AddSellerEvent>(_addSeller);
    on<UpdateSellerEvent>(_updateSeller);
    on<DeleteSellerEvent>(_deleteSeller);
    on<LoadSellersEvent>(_loadSellers);
  }

  factory SellersBloc.initial() => SellersBloc._();

  FutureOr<void> _loadSellers(
      LoadSellersEvent event, Emitter<SellersState> emit) {
    final newState = state.copyWith(sellers: event.sellers);
    emit(newState);
  }

  FutureOr<void> _addSeller(AddSellerEvent event, Emitter<SellersState> emit) {}

  FutureOr<void> _updateSeller(
      UpdateSellerEvent event, Emitter<SellersState> emit) {}

  FutureOr<void> _deleteSeller(
      DeleteSellerEvent event, Emitter<SellersState> emit) {
        deleteSeller(event.seller);
    final sellers = state.removeSeller(event.seller);
    final newState = state.copyWith(sellers: sellers);
    emit(newState);
  }

  FutureOr<void> _refreshSellers(
      RefreshSellers event, Emitter<SellersState> emit) {
    loadSellers().then((sellers) {
      add(LoadSellersEvent(sellers));
    });
  }
}
