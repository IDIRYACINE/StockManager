import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Types/events_keys_enum.dart';
import 'package:stock_manager/Types/i_delegates.dart';
import 'package:stock_manager/Types/i_stores.dart';

import 'delegates.dart';

class InventoryStore implements Store {
  final Map<String, Store> _stores = {};

  InventoryStore(BuildContext context) {
    _registerStores(context);
  }

  @override
  void receiveEvent({required StoreEvent event}) {
    _stores[event.subEventType]?.receiveEvent(event: event);
  }

  @override
  void off(
      {String? subEventType,
      required String event,
      required EventListener listener}) {
    _stores[subEventType]?.off(event: event, listener: listener);
  }

  @override
  void on(
      {String? subEventType,
      required String event,
      required EventListener listener}) {
    _stores[subEventType]?.on(event: event, listener: listener);
  }

  void _registerStores(BuildContext context) {
    ControllersProvider controllersProvider =
        Provider.of<ControllersProvider>(context, listen: false);

    ProductStoreDelegate productDelegate =
        ProductStoreHandler(controllersProvider.stockLiveModel);

    CategoryStoreDelegate categoryStoreDelegate =
        CategoryStoreHandler(controllersProvider.stockLiveModel);

    _stores[SubEventType.product.name] = ProductStore(productDelegate);
    _stores[SubEventType.category.name] = CategoryStore(categoryStoreDelegate);
  }
}

class ProductStore implements Store {
  final List<EventListener> _listeners = [];
  final Map<String, EventCallback> _callbacks = {};

  ProductStoreDelegate productDelegate;

  ProductStore(this.productDelegate) {
    _registerStringHandlers();
  }

  @override
  void receiveEvent({required StoreEvent event}) {
    String target = event.event;
    _callbacks[target]?.call(event);
  }

  @override
  void on({required String event, required EventListener listener}) {
    _listeners.add(listener);
  }

  @override
  void off({required String event, required EventListener listener}) {
    _listeners.remove(listener);
  }

  void _registerStringHandlers() {
    _callbacks[StockProductEvents.addStockProduct.name] =
        productDelegate.addProduct;

    _callbacks[StockProductEvents.updateStockProduct.name] =
        productDelegate.updateProduct;

    _callbacks[StockProductEvents.removeStockProduct.name] =
        productDelegate.removeProduct;

    _callbacks[StockProductEvents.searchStockProducts.name] =
        productDelegate.searchProducts;
  }
}

class CategoryStore implements Store {
  final List<EventListener> _listeners = [];
  final Map<String, EventCallback> _callbacks = {};

  CategoryStoreDelegate categoryDelegate;

  CategoryStore(this.categoryDelegate) {
    _registerStringHandlers();
  }

  @override
  void receiveEvent({required StoreEvent event}) {
    String target = event.event;
    _callbacks[target]?.call(event);
  }

  @override
  void on({required String event, required EventListener listener}) {
    _listeners.add(listener);
  }

  @override
  void off({required String event, required EventListener listener}) {
    _listeners.remove(listener);
  }

  void _registerStringHandlers() {
    _callbacks[StockCategoryEvents.addStockCategory.name] =
        categoryDelegate.addCategory;

    _callbacks[StockCategoryEvents.updateStockCategory.name] =
        categoryDelegate.updateCategory;

    _callbacks[StockCategoryEvents.removeStockCategory.name] =
        categoryDelegate.removeCategory;

    _callbacks[StockCategoryEvents.searchStockCategories.name] =
        categoryDelegate.searchCategories;
  }
}
