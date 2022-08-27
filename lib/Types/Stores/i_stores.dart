
import 'events_keys_enum.dart';

class StoreDispatch{
  EStores store;
  EEvents event;


}

abstract class StoreSubscriber {
  void notifyEventResult();
}