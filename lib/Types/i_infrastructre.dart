
import 'package:stock_manager/Infrastructure/serivces_store.dart';

import 'special_enums.dart';

abstract class DispatchHelper {
  ServiceResponse dispatch(ServiceMessage message);
}

class AuthObject {
  String identifier;
  String password;
  AuthObject(this.identifier, this.password);
}

typedef ServiceEventHandler = ServiceResponse Function(ServiceMessageData message); 

typedef CallbackDelegate = Map<DatabaseEvent , ServiceEventHandler>;
