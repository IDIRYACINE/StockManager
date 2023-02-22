import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Features/Purchase/State/helpers/state_helpers.dart';
import 'package:stock_manager/DataModels/models.dart';

import 'helpers/events_helpers.dart';
import 'purchase.dart';

class PurchaseBloc extends Bloc<PurchaseEvent, PurchaseState> {
  factory PurchaseBloc.initial() => PurchaseBloc._();

  PurchaseBloc._() : super(PurchaseState.initial()) {
    on<AddPurchaseProduct>(_addPurchaseProduct);
    on<RemovePurchaseProduct>(_removePurchaseProduct);
    on<UpdatePurchaseCustomer>(_updatePurchaseCustomer);
    on<ClearPurchase>(_clearPurchase);
    on<SearchQuickPurchase>(_searchQuickPurchase);
    on<SearchPurchase>(_searchPurchase);
    on<RegisterPurchase>(_registerPurchase);
    on<LoadPurchaseProduct>(_loadPurchaseProduct);
  }

  FutureOr<void> _addPurchaseProduct(
      AddPurchaseProduct event, Emitter<PurchaseState> emit) {
    final newPurchaseRecord =
        updateRecordAmounts(state.activePurchaseRecord, true, event.product);

    newPurchaseRecord.products[event.product.timeStamp] = event.product;

    emit(state.copyWith(activePurchaseRecord: newPurchaseRecord));
  }

  FutureOr<void> _removePurchaseProduct(
      RemovePurchaseProduct event, Emitter<PurchaseState> emit) {
    Record newPurchaseRecord = state.activePurchaseRecord.copyWith();
    final removedProduct =
        newPurchaseRecord.products.remove(event.productTimeStamp);
    if (removedProduct == null) return null;

    newPurchaseRecord =
        updateRecordAmounts(newPurchaseRecord, false, removedProduct);

    emit(state.copyWith(activePurchaseRecord: newPurchaseRecord));
  }

  FutureOr<void> _updatePurchaseCustomer(
      UpdatePurchaseCustomer event, Emitter<PurchaseState> emit) {
    final newPurchaseRecord = state.activePurchaseRecord.copyWith(
      customer: event.customerDataHolder.name,
      phoneNumber: event.customerDataHolder.phoneNumber,
      address: event.customerDataHolder.address,
    );

    emit(state.copyWith(activePurchaseRecord: newPurchaseRecord));
  }

  FutureOr<void> _searchPurchase(
      SearchPurchase event, Emitter<PurchaseState> emit) {
    loadProductDetaills(event.productCode, (products) {
      if (products.isEmpty) return;
      add(LoadPurchaseProduct(products.first));
    });
  }

  FutureOr<void> _searchQuickPurchase(
      SearchQuickPurchase event, Emitter<PurchaseState> emit) {}

  FutureOr<void> _clearPurchase(
      ClearPurchase event, Emitter<PurchaseState> emit) {
    final clearedPurchaseRecord = clearPurchase(state.activePurchaseRecord);

    emit(state.copyWith(activePurchaseRecord: clearedPurchaseRecord));
  }

  FutureOr<void> _registerPurchase(
      RegisterPurchase event, Emitter<PurchaseState> emit) {
    emit(
        state.copyWith(activePurchaseRecord: Record.defaultPurchaseInstance()));
  }

  FutureOr<void> _loadPurchaseProduct(
      LoadPurchaseProduct event, Emitter<PurchaseState> emit) {
    state.productFormEditor.updateSelf(event.product);

    emit(state.copyWith(loadedProduct: event.product));
  }
}
