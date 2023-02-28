import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/graphql.dart';
import 'package:stock_manager/Infrastructure/SellersService/api.dart';
import 'package:stock_manager/Infrastructure/helpers.dart';
import 'package:stock_manager/Infrastructure/services.dart';

import 'Commands/commands.dart';

final _sellersServiceId = Services.sellersService.index;
final _sellersServiceName = Services.sellersService.name;

class SellersService extends Service {
  SellersService._(
    SearchAlgorithm<Command, int, Comparator> searchAlgorithm,
  ) : super(
            searchAlgorithm: searchAlgorithm,
            serviceId: _sellersServiceId,
            serviceName: _sellersServiceName);

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
      return;
    }
    throw UnimplementedError();
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
    final commandsCount = SellersApi.values.length;
    instance.initCommands(commandsCount);

    final graphQL = getGraphQlClient();

    instance.replaceCommandAtIndex(LoadSellers(graphQL));

    instance.replaceCommandAtIndex(RegisterSeller(graphQL));

    instance.replaceCommandAtIndex(UpdateSeller(graphQL));

    instance.replaceCommandAtIndex(DeleteSeller(graphQL));
  }
}
