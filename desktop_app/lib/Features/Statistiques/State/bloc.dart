import 'package:flutter_bloc/flutter_bloc.dart';

import 'statistiques.dart';

class StatistiquesBloc extends Bloc<StatistiquesEvent, StatistiquesState> {
  StatistiquesBloc._() : super(StatistiquesState.initial());

  factory StatistiquesBloc.initial() => StatistiquesBloc._();
}
