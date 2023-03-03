import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/graphql.dart';
import 'package:stock_manager/Infrastructure/SellersService/api.dart';
import 'package:stock_manager/Infrastructure/helpers.dart';
import 'package:stock_manager/Infrastructure/services.dart';

import 'Commands/commands.dart';

final _regionServiceId = Services.regionService.index;
final _regionServiceName = Services.regionService.name;

class RegionService extends Service {
  RegionService._(
    SearchAlgorithm<Command, int, Comparator> searchAlgorithm,
  ) : super(
            searchAlgorithm: searchAlgorithm,
            serviceId: _regionServiceId,
            serviceName: _regionServiceName);

  factory RegionService.instance() {
    final searchAlgorithm = commandsBinarySearchAlgorithm();
    final instance = RegionService._(searchAlgorithm);
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

  static void _registerBaseCommands(RegionService instance) {
    final commandsCount = SellersApi.values.length;
    instance.initCommands(commandsCount);

    final graphQL = getGraphQlClient();

    instance.replaceCommandAtIndex(LoadAllCities(graphQL));

    instance.replaceCommandAtIndex(RegisterCity(graphQL));

    instance.replaceCommandAtIndex(UpdateCity(graphQL));

    instance.replaceCommandAtIndex(DeleteCity(graphQL));
  }
}
