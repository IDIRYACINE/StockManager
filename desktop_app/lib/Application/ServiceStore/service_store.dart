import 'dart:async';

import 'search_algorithm.dart';

typedef VoidCallback = void Function();
typedef ServiceCallback<T> = void Function(T);

abstract class ServiceStore {
  late List<Service> _services;
  final SearchAlgorithm<Service, int, Comparator> _searchAlgorithm;

  ServiceStore(this._searchAlgorithm);

  void registerService(Service service) {
    _services.add(service);
  }

  void unregisterService(Service service) {
    _services.remove(service);
  }

  void registerServiceAtIndex(Service service) {
    _services[service.serviceId] = service;
  }

  void sendEvent(ServiceEvent event) {
    Service? service = _searchAlgorithm.search(_services, event.serviceId);
    if (service != null) {
      service.onEventForCallback(event);
      return;
    }
    throw Exception('Service not found');
  }

  void initServices(int servicesCount) {
    _services = List.filled(servicesCount, EmptyService());
  }
}

class EmptyService extends Service {
  static int counter = -1;

  EmptyService()
      : super(
          searchAlgorithm: EmptySearchAlgorithm(),
          serviceName: "EmptyService",
          serviceId: EmptyService.counter,
        ) {
    EmptyService.counter++;
  }

  @override
  void onEventForCallback(ServiceEvent<ServiceEventResponse> event) {
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
}

abstract class Service {
  final int serviceId;
  final String serviceName;
  late Stream stream;

  late List<Command> commands;

  final SearchAlgorithm<Command, int, Comparator> searchAlgorithm;

  Service({
    required this.searchAlgorithm,
    required this.serviceName,
    required this.serviceId,
  });

  void registerCommand(Command command) {
    commands.add(command);
  }

  void registerCommandAtIndex(Command command) {
    commands.insert(command.commandId, command);
  }

  void replaceCommandAtIndex(Command command) {
    commands[command.commandId] = command;
  }

  void unregisterCommand(Command command) {
    commands.remove(command);
  }

  void unregisterCommandById(int commandId) {
    Command? command = searchAlgorithm.search(commands, commandId);
    if (command != null) {
      commands.remove(command);
    }
  }

  void initCommands(int commandsCount) {
    commands = List.filled(commandsCount,EmptyCommand());
  }

  void onEventForCallback(ServiceEvent event);
  Future<ServiceEventResponse> onEventForResponse(ServiceEvent event);
  Future<ServiceEventResponse> onRawEvent(RawServiceEventData event);
}

abstract class Command<A extends ServiceEventData,
    B extends RawServiceEventData, O extends ServiceEventResponse> {
  final int commandId;
  final String commandName;

  Command(this.commandId, this.commandName);

  Future<O> handleEvent(A eventData);
  Future<O> handleRawEvent(B eventData);
}

class EmptyCommand extends Command {
  static int counter = -1;
  EmptyCommand() : super(EmptyCommand.counter, "EmptyCommand"){
    EmptyCommand.counter++;
  }

  @override
  Future<ServiceEventResponse> handleEvent(
      ServiceEventData<RawServiceEventData> eventData) {
    throw UnimplementedError("EmptyCommand");
  }

  @override
  Future<ServiceEventResponse> handleRawEvent(RawServiceEventData eventData) {
    throw UnimplementedError("EmptyCommand");
  }
}

abstract class ServiceEvent<R extends ServiceEventResponse> {
  final int serviceId;
  final int eventId;
  final String eventName;

  final ServiceEventData eventData;

  final ServiceCallback<R>? callback;

  ServiceEvent(
    this.eventId,
    this.eventName,
    this.serviceId, {
    this.callback,
    required this.eventData,
  });
}

abstract class ServiceEventData<T extends RawServiceEventData> {
  final String requesterId;
  int messageId = 0;

  ServiceEventData(this.requesterId);

  T toRawServiceEventData();

  void setMessageId(int messageId) {
    this.messageId = messageId;
  }
}

abstract class RawServiceEventData {
  final String requesterId;
  final int messageId;
  final int eventId;

  RawServiceEventData(this.messageId, this.requesterId, this.eventId);
}

enum ServiceEventResponseStatus {
  success,
  error,
  unhandled,
}

abstract class ServiceEventResponse {
  final int messageId;
  final ServiceEventResponseStatus responseType;

  ServiceEventResponse(this.messageId, this.responseType);
}

class UnhandeledEventResponse extends ServiceEventResponse {
  UnhandeledEventResponse(int messageId)
      : super(messageId, ServiceEventResponseStatus.unhandled);
}
