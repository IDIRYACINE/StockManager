import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Stores/EventStores/RecordsStore/delegates.dart';
import 'package:stock_manager/Types/events_keys_enum.dart';
import 'package:stock_manager/Types/i_stores.dart';

class RecordsStore implements Store {
  final List<EventListener> _listeners = [];
  final Map<String, EventCallback> _callbacks = {};

  late RecordsStoreHandler recordDelegate;

  RecordsStore(BuildContext context) {
    _registerHandlers(context);
  }

  @override
  void receiveEvent({required StoreEvent event}) {
    _callbacks[event.event]?.call(event.data);
  }

  @override
  void off(
      {String? subEventType,
      required String event,
      required EventListener listener}) {
    _listeners.remove(listener);
  }

  @override
  void on(
      {String? subEventType,
      required String event,
      required EventListener listener}) {
    _listeners.add(listener);
  }

  void _registerHandlers(BuildContext context) {
    ControllersProvider controllersProvider =
        Provider.of<ControllersProvider>(context);

    recordDelegate = RecordsStoreHandler(controllersProvider.recordsLiveModel);

    _callbacks[RecordEvents.searchRecords.name] = recordDelegate.searchRecords;
  }
}
