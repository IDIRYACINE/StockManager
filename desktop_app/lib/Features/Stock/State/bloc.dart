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
    on<RefreshProducts>(_refreshProduct);
    on<RefreshProductFamily>(_refreshProductFamily);

    on<LoadProducts>(_loadProducts);
  }

  factory StockBloc.initial() => StockBloc._();

  FutureOr<void> _addProduct(AddProduct event, Emitter<StockState> emit) {

    addProduct(event.product);
    
    final newState = state.copyWith(
      products: state.addProduct(event.product)
    );

    emit(newState);
  }

  FutureOr<void> _removeProduct(RemoveProduct event, Emitter<StockState> emit) {
     removeProduct(event.product);
    
    final newState = state.copyWith(
      products: state.removeProduct(event.product)
    );

    emit(newState);
  }

  FutureOr<void> _updateProduct(UpdateProduct event, Emitter<StockState> emit) {
     updateProduct(event.updateWrapper);
    
    final newState = state.copyWith(
      products: state.updateProduct(event.updateWrapper.instance)
    );

    emit(newState);
  }

  FutureOr<void> _addProductModel(AddProductModel event, Emitter<StockState> emit) {
  }

  FutureOr<void> _removeProductModel(RemoveProductModel event, Emitter<StockState> emit) {
  }

  FutureOr<void> _updateProductModel(UpdateProductModel event, Emitter<StockState> emit) {
  }

  FutureOr<void> _removeProductFamily(RemoveProductFamily event, Emitter<StockState> emit) {
  }

  FutureOr<void> _refreshProduct(RefreshProducts event, Emitter<StockState> emit) {
    loadProducts().then((products) {
      add(LoadProducts(products));
    });
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

  FutureOr<void> _loadProducts(LoadProducts event, Emitter<StockState> emit) {
    final newState = state.copyWith(
      products: event.products
    );

    emit(newState);
  }
}
