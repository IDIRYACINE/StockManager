

import 'package:stock_manager/Application/ServiceStore/searchAlgorithms/binary_search.dart';
import 'package:stock_manager/Application/ServiceStore/service_store.dart';

BinarySearchAlgorithm<Command, int> commandsBinarySearchAlgorithm() {
  return BinarySearchAlgorithm(
    BinarySearchComparator(
      isGreaterThan: (Command command, int id) => command.commandId > id,
      isLessThan: (Command command, int id) => command.commandId < id,
    ),
  );
}