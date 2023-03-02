import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/graphql.dart';
import 'package:stock_manager/Infrastructure/helpers.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'Commands/commands.dart';
import 'api.dart';

final _stockServiceId = Services.stockService.index;
final _stockServiceName = Services.stockService.name;

class StockService extends Service {
  StockService._(
    SearchAlgorithm<Command, int, Comparator> searchAlgorithm,
  ) : super(
            searchAlgorithm: searchAlgorithm,
            serviceId: _stockServiceId,
            serviceName: _stockServiceName);

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
    instance.initCommands(StockApi.values.length);

    final graphQl = getGraphQlClient();

    instance.replaceCommandAtIndex(RegisterProduct(graphQl));

    instance.replaceCommandAtIndex(DeleteProduct(graphQl));

    instance.replaceCommandAtIndex(QuickSearchProduct(graphQl));

    instance.replaceCommandAtIndex(SearchProduct(graphQl));

    instance.replaceCommandAtIndex(UpdateProduct(graphQl));

    instance.replaceCommandAtIndex(AddProductModel(graphQl));

    instance.replaceCommandAtIndex(UpdateProductModel(graphQl));

    instance.replaceCommandAtIndex(DeleteProductModel(graphQl));

    instance.replaceCommandAtIndex(LoadProducts(graphQl));

    instance.replaceCommandAtIndex(RegisterColor(graphQl));
    instance.replaceCommandAtIndex(DeleteColor(graphQl));
    instance.replaceCommandAtIndex(UpdateColor(graphQl));
    instance.replaceCommandAtIndex(LoadAllColors(graphQl));

    instance.replaceCommandAtIndex(RegisterSize(graphQl));
    instance.replaceCommandAtIndex(DeleteSize(graphQl));
    instance.replaceCommandAtIndex(UpdateSize(graphQl));
    instance.replaceCommandAtIndex(LoadAllSizes(graphQl));
  }
}
