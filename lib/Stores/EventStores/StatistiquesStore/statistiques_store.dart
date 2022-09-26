
import 'package:stock_manager/Stores/EventStores/StatistiquesStore/delegates.dart';
import 'package:stock_manager/Types/events_keys_enum.dart';
import 'package:stock_manager/Types/i_stores.dart';

class StatistiquesStore implements Store  {
  final List<EventListener> _listeners = [];
  final Map<String, EventCallback> _callbacks = {};

  StatistiquesStoreHandler statistiauesDelegate;

  StatistiquesStore(this.statistiauesDelegate) {
    _registerHandlers();
  }

  @override
  void receiveEvent({required StoreEvent event}) {
    String target = event.event;
    _callbacks[target]?.call(event.data);
  }

  @override
  void on({required String event, required EventListener listener}) {
    _listeners.add(listener);
  }

  @override
  void off({required String event, required EventListener listener}) {
    _listeners.remove(listener);
  }

  void _registerHandlers() {
    _callbacks[StatistiquesEvents.searchStatistiques.name] = statistiauesDelegate.searchStatistiques;
  }
  
}