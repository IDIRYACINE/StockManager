
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart';
import 'package:stock_manager/Infrastructure/helpers.dart';
import 'package:stock_manager/Infrastructure/services.dart';

import 'Commands/login.dart';
import 'api.dart';

final _regionServiceId = Services.authService.index;
final _regionServiceName = Services.authService.name;

class AuthService extends Service {
  AuthService._(
    SearchAlgorithm<Command, int, Comparator> searchAlgorithm,
  ) : super(
            searchAlgorithm: searchAlgorithm,
            serviceId: _regionServiceId,
            serviceName: _regionServiceName);

  factory AuthService.instance() {
    final searchAlgorithm = commandsBinarySearchAlgorithm();
    final instance = AuthService._(searchAlgorithm);
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

  static void _registerBaseCommands(AuthService instance) {
    final commandsCount = AuthApi.values.length;
    instance.initCommands(commandsCount);

    final graphQL = getGraphQlClient();

    instance.replaceCommandAtIndex(LoginEvent(graphQL));

  }
}
