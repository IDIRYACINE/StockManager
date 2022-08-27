
import 'events_keys_enum.dart';

class StoreDispatch{
  EStores store;
  EEvents event;

  StoreDispatch(this.store, this.event);

}

abstract class StoreSubscriber {
  void notifyEventResult();
}