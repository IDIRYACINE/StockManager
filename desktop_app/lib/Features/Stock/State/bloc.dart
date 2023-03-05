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
    on<SearchProductFamily>(_searchProductFamily);
    on<RefreshProducts>(_refreshProduct);
    on<RefreshProductFamily>(_refreshProductFamily);

    on<SearchProducts>(_searchProducts);

    on<LoadProducts>(_loadProducts);
    on<LoadProductFamillies>(_loadProductFamilies);

    on<QuickSearchProducts>(_quickSearchProducts);
    on<SetQuickSearchProduct>(_setQuickSearchProduct);
  }

  factory StockBloc.initial() => StockBloc._();

  FutureOr<void> _addProduct(AddProduct event, Emitter<StockState> emit) {
    addProduct(event.product);

    final newState = state.copyWith(products: state.addProduct(event.product));

    emit(newState);
  }

  FutureOr<void> _removeProduct(RemoveProduct event, Emitter<StockState> emit) {
    removeProduct(event.product);

    final newState =
        state.copyWith(products: state.removeProduct(event.product));

    emit(newState);
  }

  FutureOr<void> _updateProduct(UpdateProduct event, Emitter<StockState> emit) {
    updateProduct(event.updateWrapper);

    final newState = state.copyWith(
        products: state.updateProduct(event.updateWrapper.instance));

    emit(newState);
  }

  FutureOr<void> _addProductModel(
      AddProductModel event, Emitter<StockState> emit) {}

  FutureOr<void> _removeProductModel(
      RemoveProductModel event, Emitter<StockState> emit) {}

  FutureOr<void> _updateProductModel(
      UpdateProductModel event, Emitter<StockState> emit) {}

  FutureOr<void> _removeProductFamily(
      RemoveProductFamily event, Emitter<StockState> emit) {}

  FutureOr<void> _refreshProduct(
      RefreshProducts event, Emitter<StockState> emit) {
    loadProducts().then((products) {
      add(LoadProducts(products));
    });
  }

  FutureOr<void> _searchProductFamily(
      SearchProductFamily event, Emitter<StockState> emit) {
    searchProductFamilies(event.query).then((famillies) {
      add(LoadProductFamillies(famillies));
    });
  }

  FutureOr<void> _addProductFamily(
      AddProductFamily event, Emitter<StockState> emit) {
    addProductFamily(event.family);

    final newState =
        state.copyWith(productFamillies: state.addProductFamily(event.family));

    emit(newState);
  }

  FutureOr<void> _refreshProductFamily(
      RefreshProductFamily event, Emitter<StockState> emit) {
    loadProductFamillies().then((famillies) {
      add(LoadProductFamillies(famillies));
    });
  }

  FutureOr<void> _searchProducts(
      SearchProducts event, Emitter<StockState> emit) {
    searchProducts(event.query).then((products) {
      add(LoadProducts(products));
    });
  }

  FutureOr<void> _updateProductFamily(
      UpdateProductFamily event, Emitter<StockState> emit) {
    updateProductFamily(event.updateWrapper);

    final newState = state.copyWith(
        productFamillies:
            state.updateProductFamily(event.updateWrapper.instance));

    emit(newState);
  }

  FutureOr<void> _loadProducts(LoadProducts event, Emitter<StockState> emit) {
    final newState = state.copyWith(products: event.products);

    emit(newState);
  }

  FutureOr<void> _loadProductFamilies(
      LoadProductFamillies event, Emitter<StockState> emit) {
    final newState = state.copyWith(productFamillies: event.productFamillies);

    emit(newState);
  }

  FutureOr<void> _quickSearchProducts(
      QuickSearchProducts event, Emitter<StockState> emit) {
    quickSearchProduct(event.barcode).then((product) {
      add(SetQuickSearchProduct(product));
    });
  }

  FutureOr<void> _setQuickSearchProduct(
      SetQuickSearchProduct event, Emitter<StockState> emit) {
    final newState = state.copyWith(quickSearchProduct: event.product);

    emit(newState);
  }
}
