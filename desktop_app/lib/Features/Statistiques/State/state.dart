class StatistiquesState{

  StatistiquesState({required this.totalPrice});

  final double totalPrice;

  factory StatistiquesState.initial() {
    return StatistiquesState(totalPrice: 0);
  }

  

}