import 'package:stock_manager/Application/ServiceStore/service_store.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/graphql.dart';
import 'package:stock_manager/Infrastructure/helpers.dart';

import 'Commands/commands.dart';

class SellersService extends Service {
  SellersService._(super.searchAlgorithm);

  factory SellersService.instance() {
    final searchAlgorithm = commandsBinarySearchAlgorithm();
    final instance = SellersService._(searchAlgorithm);
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

  static void _registerBaseCommands(SellersService instance) {
    final graphQL = getGraphQlClient();

    instance.registerCommandAtIndex(LoadSellers(graphQL));

    instance.registerCommandAtIndex(RegisterSeller(graphQL));

    instance.registerCommandAtIndex(UpdateSeller(graphQL));

    instance.registerCommandAtIndex(DeleteSeller(graphQL));
  }
}
