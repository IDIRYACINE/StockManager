import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_manager/Domain/Models/transaction.dart';
import 'package:stock_manager/Features/Deposit/State/helpers/state_helpers.dart';

import 'deposit.dart';
import 'helpers/events_helpers.dart';

class DepositBloc extends Bloc<DepositEvent, DepositState> {
  factory DepositBloc.initial() => DepositBloc._();

  DepositBloc._() : super(DepositState.initial()) {
    on<AddDepositProduct>(_addDepositProduct);
    on<RemoveDepositProduct>(_removeDepositProduct);
    on<UpdateDepositCustomer>(_updateDepositCustomer);
    on<ClearDeposit>(_clearDeposit);
    on<SearchQuickDeposit>(_searchQuickDeposit);
    on<SearchDeposit>(_searchDeposit);
    on<RegisterDeposit>(_registerDeposit);
    on<LoadDepositProduct>(_loadDepositProduct);
    on<SearchDepositProduct>(_searchDepositProduct);
  }

  FutureOr<void> _addDepositProduct(
      AddDepositProduct event, Emitter<DepositState> emit) {
   

    final newDepositRecord =
        updateRecordAmounts(state.activeDepositRecord, true, event.product);

    newDepositRecord.products[event.product.timeStamp] = event.product;

    emit(state.copyWith(activeDepositRecord: newDepositRecord));
  }

  FutureOr<void> _removeDepositProduct(
      RemoveDepositProduct event, Emitter<DepositState> emit) {
    Record newDepositRecord = state.activeDepositRecord.copyWith();
    final removedProduct =
        newDepositRecord.products.remove(event.productTimeStamp);

    if (removedProduct == null) return null;

    newDepositRecord =
        updateRecordAmounts(newDepositRecord, false, removedProduct);

    emit(state.copyWith(activeDepositRecord: newDepositRecord));
  }

  FutureOr<void> _updateDepositCustomer(
      UpdateDepositCustomer event, Emitter<DepositState> emit) {
    final newDepositRecord = state.activeDepositRecord.copyWith(
      customer: event.customerDataHolder.name,
      phoneNumber: event.customerDataHolder.phoneNumber,
      address: event.customerDataHolder.address,
    );

    emit(state.copyWith(activeDepositRecord: newDepositRecord));
  }

  FutureOr<void> _searchDeposit(
      SearchDeposit event, Emitter<DepositState> emit) {}

  FutureOr<void> _searchQuickDeposit(
      SearchQuickDeposit event, Emitter<DepositState> emit) {}

  FutureOr<void> _clearDeposit(ClearDeposit event, Emitter<DepositState> emit) {
    final clearedDepositRecord = clearDeposit(state.activeDepositRecord);

    emit(state.copyWith(activeDepositRecord: clearedDepositRecord));
  }

  FutureOr<void> _registerDeposit(
      RegisterDeposit event, Emitter<DepositState> emit) {
    emit(state.copyWith(activeDepositRecord: Record.defaultDepositInstance()));
  }

  FutureOr<void> _loadDepositProduct(
      LoadDepositProduct event, Emitter<DepositState> emit) {
    state.formEditor.updateSelf(event.product);

    emit(state.copyWith(loadedProduct: event.product));
  }

  FutureOr<void> _searchDepositProduct(
      SearchDepositProduct event, Emitter<DepositState> emit) {
    loadProductDetaills(event.productCode, (products) {
      if (products.isEmpty) return;
      add(LoadDepositProduct(products.first));
    });
  }
}
