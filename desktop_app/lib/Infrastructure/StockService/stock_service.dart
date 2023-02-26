import 'package:stock_manager/Application/ServiceStore/service_store.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/graphql.dart';
import 'package:stock_manager/Infrastructure/helpers.dart';

import 'Commands/commands.dart';

class StockService extends Service {
  StockService._(super.searchAlgorithm);

  factory StockService.instance() {
    final searchAlgorithm = commandsBinarySearchAlgorithm();
    final instance = StockService._(searchAlgorithm);
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

  static void _registerBaseCommands(StockService instance) {
    final graphQl = getGraphQlClient();

    instance.registerCommandAtIndex(RegisterProduct(graphQl));

    instance.registerCommandAtIndex(DeleteProduct(graphQl));

    instance.registerCommandAtIndex(QuickSearchProduct(graphQl));

    instance.registerCommandAtIndex(SearchProduct(graphQl));

    instance.registerCommandAtIndex(UpdateProduct(graphQl));

    instance.registerCommandAtIndex(AddProductModel(graphQl));

    instance.registerCommandAtIndex(UpdateProductModel(graphQl));

    instance.registerCommandAtIndex(DeleteProductModel(graphQl));

    instance.registerCommandAtIndex(LoadProducts(graphQl));
  }
}
