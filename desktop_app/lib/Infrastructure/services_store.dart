import 'package:stock_manager/Application/ServiceStore/service.dart';

class ServicesGateway extends ServiceStore {
  static ServicesGateway? _instance;

  ServicesGateway._(super.searchAlgorithm);

  factory ServicesGateway.instance() {
    if (_instance == null) {
      final searchAlgorithm = _searchAlgorithm();
      _instance = ServicesGateway._(searchAlgorithm);
      _registerBaseServices(_instance!);
    }
    return _instance!;
  }

  static BinarySearchAlgorithm<Service, int> _searchAlgorithm() {
    return BinarySearchAlgorithm(
      BinarySearchComparator(
        isGreaterThan: (Service service, int id) => service.serviceId > id,
        isLessThan: (Service service, int id) => service.serviceId < id,
      ),
    );
  }

  static void _registerBaseServices(ServicesGateway gateway) {}
}
