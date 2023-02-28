

abstract class SearchAlgorithm<E,T,C extends Comparator<E,T>>{


  SearchAlgorithm();

  E? search(List<E> list, T target);

}

abstract class Comparator<S,T>{

}

class EmptySearchAlgorithm<E,T,C extends Comparator<E,T>> extends SearchAlgorithm<E,T,C>{

  @override
  E? search(List<E> list, T target) {
    throw UnimplementedError();
  }

}
