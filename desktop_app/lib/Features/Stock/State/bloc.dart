import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Features/Stock/Logic/actions.dart';

import 'stock.dart';

class StockBloc extends Bloc<StockEvent, StockState> {
  StockBloc._() : super(StockState.initial()) {
    on<AddProduct>(_addProduct);
    on<RemoveProduct>(_removeProduct);
    on<UpdateProduct>(_updateProduct);
    on<AddProductModel>(_addProductModel);
    on<RemoveProductModel>(_removeProductModel);
    on<UpdateProductModel>(_updateProductModel);
    on<AddProductFamily>(_addProductFamily);
    on<RemoveProductFamily>(_removeProductFamily);
    on<UpdateProductFamily>(_updateProductFamily);
    on<SearchProduct>(_searchProduct);
    on<SearchProductFamily>(_searchProductFamily);
    on<RefreshProduct>(_refreshProduct);
    on<RefreshProductFamily>(_refreshProductFamily);
  }

  factory StockBloc.initial() => StockBloc._();

  FutureOr<void> _addProduct(AddProduct event, Emitter<StockState> emit) {

    addProduct(event.product);
    
    final newState = state.copyWith(
      products: state.products..add(event.product),
    );

    emit(newState);
  }

  FutureOr<void> _removeProduct(RemoveProduct event, Emitter<StockState> emit) {
  }

  FutureOr<void> _updateProduct(UpdateProduct event, Emitter<StockState> emit) {
  }

  FutureOr<void> _addProductModel(AddProductModel event, Emitter<StockState> emit) {
  }

  FutureOr<void> _removeProductModel(RemoveProductModel event, Emitter<StockState> emit) {
  }

  FutureOr<void> _updateProductModel(UpdateProductModel event, Emitter<StockState> emit) {
  }

  FutureOr<void> _removeProductFamily(RemoveProductFamily event, Emitter<StockState> emit) {
  }

  FutureOr<void> _refreshProduct(RefreshProduct event, Emitter<StockState> emit) {
  }

  FutureOr<void> _searchProductFamily(SearchProductFamily event, Emitter<StockState> emit) {
  }

  FutureOr<void> _addProductFamily(AddProductFamily event, Emitter<StockState> emit) {
  }

  FutureOr<void> _refreshProductFamily(RefreshProductFamily event, Emitter<StockState> emit) {
  }

  FutureOr<void> _searchProduct(SearchProduct event, Emitter<StockState> emit) {
  }

  FutureOr<void> _updateProductFamily(UpdateProductFamily event, Emitter<StockState> emit) {
  }
}
