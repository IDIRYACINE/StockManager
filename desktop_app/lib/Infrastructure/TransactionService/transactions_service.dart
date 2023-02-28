import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/graphql.dart';
import 'package:stock_manager/Infrastructure/helpers.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'api.dart';
import 'Commands/commands.dart';

final _transactionServiceId = Services.transactionService.index;
final _transactionServiceName = Services.transactionService.name;

class TransactionsService extends Service {
  TransactionsService._(
    SearchAlgorithm<Command, int, Comparator> searchAlgorithm,
  ) : super(
            searchAlgorithm: searchAlgorithm,
            serviceId: _transactionServiceId,
            serviceName: _transactionServiceName);

  factory TransactionsService.instance() {
    final searchAlgorithm = commandsBinarySearchAlgorithm();
    final instance = TransactionsService._(searchAlgorithm);
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

  static void _registerBaseCommands(TransactionsService instance) {
    instance.initCommands(TransactionApi.values.length);

    final graphQL = getGraphQlClient();

    instance.replaceCommandAtIndex(LoadTransactions(graphQL));

    instance.replaceCommandAtIndex(RegisterTransaction(graphQL));

    instance.replaceCommandAtIndex(SearchTransaction(graphQL));

    instance.replaceCommandAtIndex(QuickSearchTransactions(graphQL));
  }
}
