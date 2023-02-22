import 'package:stock_manager/Application/ServiceStore/service_store.dart';
import 'package:stock_manager/Infrastructure/helpers.dart';

class DepositService extends Service {
  DepositService._(super.searchAlgorithm);

  factory DepositService.instance() {
    final searchAlgorithm = commandsBinarySearchAlgorithm();
    final instance = DepositService._(searchAlgorithm);
    _registerBaseCommands(instance);
    return instance;
  }

  @override
  void onEventForCallback(ServiceEvent<ServiceEventResponse> event) {
    Command? command = searchAlgorithm.search(commands, event.eventId);
    if (command != null) {
      command.handleEvent(event.eventData).then((response) {
        event.callback?.call(response);
      });
    }
  }

  @override
  Future<ServiceEventResponse> onEventForResponse(
      ServiceEvent<ServiceEventResponse> event) {
    throw UnimplementedError();
  }

  @override
  Future<ServiceEventResponse> onRawEvent(RawServiceEventData event) {
    throw UnimplementedError();
  }

  static void _registerBaseCommands(DepositService instance) {}
}
