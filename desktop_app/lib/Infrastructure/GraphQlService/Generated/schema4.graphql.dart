import 'schema1.graphql.dart';
import 'schema3.graphql.dart';

class Input$ColorsSumOrderByAggregateInput {
  factory Input$ColorsSumOrderByAggregateInput({Enum$SortOrder? id}) =>
      Input$ColorsSumOrderByAggregateInput._({
        if (id != null) r'id': id,
      });

  Input$ColorsSumOrderByAggregateInput._(this._$data);

  factory Input$ColorsSumOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortOrder((l$id as String));
    }
    return Input$ColorsSumOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get id => (_$data['id'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortOrder(l$id);
    }
    return result$data;
  }

  CopyWith$Input$ColorsSumOrderByAggregateInput<
          Input$ColorsSumOrderByAggregateInput>
      get copyWith => CopyWith$Input$ColorsSumOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ColorsSumOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Input$ColorsSumOrderByAggregateInput<TRes> {
  factory CopyWith$Input$ColorsSumOrderByAggregateInput(
    Input$ColorsSumOrderByAggregateInput instance,
    TRes Function(Input$ColorsSumOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$ColorsSumOrderByAggregateInput;

  factory CopyWith$Input$ColorsSumOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ColorsSumOrderByAggregateInput;

  TRes call({Enum$SortOrder? id});
}

class _CopyWithImpl$Input$ColorsSumOrderByAggregateInput<TRes>
    implements CopyWith$Input$ColorsSumOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$ColorsSumOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$ColorsSumOrderByAggregateInput _instance;

  final TRes Function(Input$ColorsSumOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Input$ColorsSumOrderByAggregateInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$ColorsSumOrderByAggregateInput<TRes>
    implements CopyWith$Input$ColorsSumOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$ColorsSumOrderByAggregateInput(this._res);

  TRes _res;

  call({Enum$SortOrder? id}) => _res;
}

class Input$ColorsScalarWhereWithAggregatesInput {
  factory Input$ColorsScalarWhereWithAggregatesInput({
    List<Input$ColorsScalarWhereWithAggregatesInput>? AND,
    List<Input$ColorsScalarWhereWithAggregatesInput>? OR,
    List<Input$ColorsScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? id,
    Input$StringWithAggregatesFilter? color,
  }) =>
      Input$ColorsScalarWhereWithAggregatesInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (id != null) r'id': id,
        if (color != null) r'color': color,
      });

  Input$ColorsScalarWhereWithAggregatesInput._(this._$data);

  factory Input$ColorsScalarWhereWithAggregatesInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) => Input$ColorsScalarWhereWithAggregatesInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) => Input$ColorsScalarWhereWithAggregatesInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) => Input$ColorsScalarWhereWithAggregatesInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IntWithAggregatesFilter.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input$StringWithAggregatesFilter.fromJson(
              (l$color as Map<String, dynamic>));
    }
    return Input$ColorsScalarWhereWithAggregatesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ColorsScalarWhereWithAggregatesInput>? get AND =>
      (_$data['AND'] as List<Input$ColorsScalarWhereWithAggregatesInput>?);
  List<Input$ColorsScalarWhereWithAggregatesInput>? get OR =>
      (_$data['OR'] as List<Input$ColorsScalarWhereWithAggregatesInput>?);
  List<Input$ColorsScalarWhereWithAggregatesInput>? get NOT =>
      (_$data['NOT'] as List<Input$ColorsScalarWhereWithAggregatesInput>?);
  Input$IntWithAggregatesFilter? get id =>
      (_$data['id'] as Input$IntWithAggregatesFilter?);
  Input$StringWithAggregatesFilter? get color =>
      (_$data['color'] as Input$StringWithAggregatesFilter?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('AND')) {
      final l$AND = AND;
      result$data['AND'] = l$AND?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('OR')) {
      final l$OR = OR;
      result$data['OR'] = l$OR?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('NOT')) {
      final l$NOT = NOT;
      result$data['NOT'] = l$NOT?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ColorsScalarWhereWithAggregatesInput<
          Input$ColorsScalarWhereWithAggregatesInput>
      get copyWith => CopyWith$Input$ColorsScalarWhereWithAggregatesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ColorsScalarWhereWithAggregatesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$AND = AND;
    final lOther$AND = other.AND;
    if (_$data.containsKey('AND') != other._$data.containsKey('AND')) {
      return false;
    }
    if (l$AND != null && lOther$AND != null) {
      if (l$AND.length != lOther$AND.length) {
        return false;
      }
      for (int i = 0; i < l$AND.length; i++) {
        final l$AND$entry = l$AND[i];
        final lOther$AND$entry = lOther$AND[i];
        if (l$AND$entry != lOther$AND$entry) {
          return false;
        }
      }
    } else if (l$AND != lOther$AND) {
      return false;
    }
    final l$OR = OR;
    final lOther$OR = other.OR;
    if (_$data.containsKey('OR') != other._$data.containsKey('OR')) {
      return false;
    }
    if (l$OR != null && lOther$OR != null) {
      if (l$OR.length != lOther$OR.length) {
        return false;
      }
      for (int i = 0; i < l$OR.length; i++) {
        final l$OR$entry = l$OR[i];
        final lOther$OR$entry = lOther$OR[i];
        if (l$OR$entry != lOther$OR$entry) {
          return false;
        }
      }
    } else if (l$OR != lOther$OR) {
      return false;
    }
    final l$NOT = NOT;
    final lOther$NOT = other.NOT;
    if (_$data.containsKey('NOT') != other._$data.containsKey('NOT')) {
      return false;
    }
    if (l$NOT != null && lOther$NOT != null) {
      if (l$NOT.length != lOther$NOT.length) {
        return false;
      }
      for (int i = 0; i < l$NOT.length; i++) {
        final l$NOT$entry = l$NOT[i];
        final lOther$NOT$entry = lOther$NOT[i];
        if (l$NOT$entry != lOther$NOT$entry) {
          return false;
        }
      }
    } else if (l$NOT != lOther$NOT) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$AND = AND;
    final l$OR = OR;
    final l$NOT = NOT;
    final l$id = id;
    final l$color = color;
    return Object.hashAll([
      _$data.containsKey('AND')
          ? l$AND == null
              ? null
              : Object.hashAll(l$AND.map((v) => v))
          : const {},
      _$data.containsKey('OR')
          ? l$OR == null
              ? null
              : Object.hashAll(l$OR.map((v) => v))
          : const {},
      _$data.containsKey('NOT')
          ? l$NOT == null
              ? null
              : Object.hashAll(l$NOT.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('color') ? l$color : const {},
    ]);
  }
}

abstract class CopyWith$Input$ColorsScalarWhereWithAggregatesInput<TRes> {
  factory CopyWith$Input$ColorsScalarWhereWithAggregatesInput(
    Input$ColorsScalarWhereWithAggregatesInput instance,
    TRes Function(Input$ColorsScalarWhereWithAggregatesInput) then,
  ) = _CopyWithImpl$Input$ColorsScalarWhereWithAggregatesInput;

  factory CopyWith$Input$ColorsScalarWhereWithAggregatesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ColorsScalarWhereWithAggregatesInput;

  TRes call({
    List<Input$ColorsScalarWhereWithAggregatesInput>? AND,
    List<Input$ColorsScalarWhereWithAggregatesInput>? OR,
    List<Input$ColorsScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? id,
    Input$StringWithAggregatesFilter? color,
  });
  TRes AND(
      Iterable<Input$ColorsScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$ColorsScalarWhereWithAggregatesInput<
                      Input$ColorsScalarWhereWithAggregatesInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$ColorsScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$ColorsScalarWhereWithAggregatesInput<
                      Input$ColorsScalarWhereWithAggregatesInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$ColorsScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$ColorsScalarWhereWithAggregatesInput<
                      Input$ColorsScalarWhereWithAggregatesInput>>?)
          _fn);
}

class _CopyWithImpl$Input$ColorsScalarWhereWithAggregatesInput<TRes>
    implements CopyWith$Input$ColorsScalarWhereWithAggregatesInput<TRes> {
  _CopyWithImpl$Input$ColorsScalarWhereWithAggregatesInput(
    this._instance,
    this._then,
  );

  final Input$ColorsScalarWhereWithAggregatesInput _instance;

  final TRes Function(Input$ColorsScalarWhereWithAggregatesInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? id = _undefined,
    Object? color = _undefined,
  }) =>
      _then(Input$ColorsScalarWhereWithAggregatesInput._({
        ..._instance._$data,
        if (AND != _undefined)
          'AND': (AND as List<Input$ColorsScalarWhereWithAggregatesInput>?),
        if (OR != _undefined)
          'OR': (OR as List<Input$ColorsScalarWhereWithAggregatesInput>?),
        if (NOT != _undefined)
          'NOT': (NOT as List<Input$ColorsScalarWhereWithAggregatesInput>?),
        if (id != _undefined) 'id': (id as Input$IntWithAggregatesFilter?),
        if (color != _undefined)
          'color': (color as Input$StringWithAggregatesFilter?),
      }));
  TRes AND(
          Iterable<Input$ColorsScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$ColorsScalarWhereWithAggregatesInput<
                          Input$ColorsScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND
              ?.map((e) => CopyWith$Input$ColorsScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes OR(
          Iterable<Input$ColorsScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$ColorsScalarWhereWithAggregatesInput<
                          Input$ColorsScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR
              ?.map((e) => CopyWith$Input$ColorsScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes NOT(
          Iterable<Input$ColorsScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$ColorsScalarWhereWithAggregatesInput<
                          Input$ColorsScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT
              ?.map((e) => CopyWith$Input$ColorsScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$ColorsScalarWhereWithAggregatesInput<TRes>
    implements CopyWith$Input$ColorsScalarWhereWithAggregatesInput<TRes> {
  _CopyWithStubImpl$Input$ColorsScalarWhereWithAggregatesInput(this._res);

  TRes _res;

  call({
    List<Input$ColorsScalarWhereWithAggregatesInput>? AND,
    List<Input$ColorsScalarWhereWithAggregatesInput>? OR,
    List<Input$ColorsScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? id,
    Input$StringWithAggregatesFilter? color,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
}

class Input$PayementsOrderByWithAggregationInput {
  factory Input$PayementsOrderByWithAggregationInput({
    Enum$SortOrder? payement_id,
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? payement,
    Input$PayementsCountOrderByAggregateInput? $_count,
    Input$PayementsAvgOrderByAggregateInput? $_avg,
    Input$PayementsMaxOrderByAggregateInput? $_max,
    Input$PayementsMinOrderByAggregateInput? $_min,
    Input$PayementsSumOrderByAggregateInput? $_sum,
  }) =>
      Input$PayementsOrderByWithAggregationInput._({
        if (payement_id != null) r'payement_id': payement_id,
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (payement != null) r'payement': payement,
        if ($_count != null) r'_count': $_count,
        if ($_avg != null) r'_avg': $_avg,
        if ($_max != null) r'_max': $_max,
        if ($_min != null) r'_min': $_min,
        if ($_sum != null) r'_sum': $_sum,
      });

  Input$PayementsOrderByWithAggregationInput._(this._$data);

  factory Input$PayementsOrderByWithAggregationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('payement_id')) {
      final l$payement_id = data['payement_id'];
      result$data['payement_id'] = l$payement_id == null
          ? null
          : fromJson$Enum$SortOrder((l$payement_id as String));
    }
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_id as String));
    }
    if (data.containsKey('payement')) {
      final l$payement = data['payement'];
      result$data['payement'] = l$payement == null
          ? null
          : fromJson$Enum$SortOrder((l$payement as String));
    }
    if (data.containsKey('_count')) {
      final l$$_count = data['_count'];
      result$data['_count'] = l$$_count == null
          ? null
          : Input$PayementsCountOrderByAggregateInput.fromJson(
              (l$$_count as Map<String, dynamic>));
    }
    if (data.containsKey('_avg')) {
      final l$$_avg = data['_avg'];
      result$data['_avg'] = l$$_avg == null
          ? null
          : Input$PayementsAvgOrderByAggregateInput.fromJson(
              (l$$_avg as Map<String, dynamic>));
    }
    if (data.containsKey('_max')) {
      final l$$_max = data['_max'];
      result$data['_max'] = l$$_max == null
          ? null
          : Input$PayementsMaxOrderByAggregateInput.fromJson(
              (l$$_max as Map<String, dynamic>));
    }
    if (data.containsKey('_min')) {
      final l$$_min = data['_min'];
      result$data['_min'] = l$$_min == null
          ? null
          : Input$PayementsMinOrderByAggregateInput.fromJson(
              (l$$_min as Map<String, dynamic>));
    }
    if (data.containsKey('_sum')) {
      final l$$_sum = data['_sum'];
      result$data['_sum'] = l$$_sum == null
          ? null
          : Input$PayementsSumOrderByAggregateInput.fromJson(
              (l$$_sum as Map<String, dynamic>));
    }
    return Input$PayementsOrderByWithAggregationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get payement_id => (_$data['payement_id'] as Enum$SortOrder?);
  Enum$SortOrder? get transaction_id =>
      (_$data['transaction_id'] as Enum$SortOrder?);
  Enum$SortOrder? get payement => (_$data['payement'] as Enum$SortOrder?);
  Input$PayementsCountOrderByAggregateInput? get $_count =>
      (_$data['_count'] as Input$PayementsCountOrderByAggregateInput?);
  Input$PayementsAvgOrderByAggregateInput? get $_avg =>
      (_$data['_avg'] as Input$PayementsAvgOrderByAggregateInput?);
  Input$PayementsMaxOrderByAggregateInput? get $_max =>
      (_$data['_max'] as Input$PayementsMaxOrderByAggregateInput?);
  Input$PayementsMinOrderByAggregateInput? get $_min =>
      (_$data['_min'] as Input$PayementsMinOrderByAggregateInput?);
  Input$PayementsSumOrderByAggregateInput? get $_sum =>
      (_$data['_sum'] as Input$PayementsSumOrderByAggregateInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('payement_id')) {
      final l$payement_id = payement_id;
      result$data['payement_id'] =
          l$payement_id == null ? null : toJson$Enum$SortOrder(l$payement_id);
    }
    if (_$data.containsKey('transaction_id')) {
      final l$transaction_id = transaction_id;
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_id);
    }
    if (_$data.containsKey('payement')) {
      final l$payement = payement;
      result$data['payement'] =
          l$payement == null ? null : toJson$Enum$SortOrder(l$payement);
    }
    if (_$data.containsKey('_count')) {
      final l$$_count = $_count;
      result$data['_count'] = l$$_count?.toJson();
    }
    if (_$data.containsKey('_avg')) {
      final l$$_avg = $_avg;
      result$data['_avg'] = l$$_avg?.toJson();
    }
    if (_$data.containsKey('_max')) {
      final l$$_max = $_max;
      result$data['_max'] = l$$_max?.toJson();
    }
    if (_$data.containsKey('_min')) {
      final l$$_min = $_min;
      result$data['_min'] = l$$_min?.toJson();
    }
    if (_$data.containsKey('_sum')) {
      final l$$_sum = $_sum;
      result$data['_sum'] = l$$_sum?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PayementsOrderByWithAggregationInput<
          Input$PayementsOrderByWithAggregationInput>
      get copyWith => CopyWith$Input$PayementsOrderByWithAggregationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PayementsOrderByWithAggregationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payement_id = payement_id;
    final lOther$payement_id = other.payement_id;
    if (_$data.containsKey('payement_id') !=
        other._$data.containsKey('payement_id')) {
      return false;
    }
    if (l$payement_id != lOther$payement_id) {
      return false;
    }
    final l$transaction_id = transaction_id;
    final lOther$transaction_id = other.transaction_id;
    if (_$data.containsKey('transaction_id') !=
        other._$data.containsKey('transaction_id')) {
      return false;
    }
    if (l$transaction_id != lOther$transaction_id) {
      return false;
    }
    final l$payement = payement;
    final lOther$payement = other.payement;
    if (_$data.containsKey('payement') !=
        other._$data.containsKey('payement')) {
      return false;
    }
    if (l$payement != lOther$payement) {
      return false;
    }
    final l$$_count = $_count;
    final lOther$$_count = other.$_count;
    if (_$data.containsKey('_count') != other._$data.containsKey('_count')) {
      return false;
    }
    if (l$$_count != lOther$$_count) {
      return false;
    }
    final l$$_avg = $_avg;
    final lOther$$_avg = other.$_avg;
    if (_$data.containsKey('_avg') != other._$data.containsKey('_avg')) {
      return false;
    }
    if (l$$_avg != lOther$$_avg) {
      return false;
    }
    final l$$_max = $_max;
    final lOther$$_max = other.$_max;
    if (_$data.containsKey('_max') != other._$data.containsKey('_max')) {
      return false;
    }
    if (l$$_max != lOther$$_max) {
      return false;
    }
    final l$$_min = $_min;
    final lOther$$_min = other.$_min;
    if (_$data.containsKey('_min') != other._$data.containsKey('_min')) {
      return false;
    }
    if (l$$_min != lOther$$_min) {
      return false;
    }
    final l$$_sum = $_sum;
    final lOther$$_sum = other.$_sum;
    if (_$data.containsKey('_sum') != other._$data.containsKey('_sum')) {
      return false;
    }
    if (l$$_sum != lOther$$_sum) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$payement_id = payement_id;
    final l$transaction_id = transaction_id;
    final l$payement = payement;
    final l$$_count = $_count;
    final l$$_avg = $_avg;
    final l$$_max = $_max;
    final l$$_min = $_min;
    final l$$_sum = $_sum;
    return Object.hashAll([
      _$data.containsKey('payement_id') ? l$payement_id : const {},
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('payement') ? l$payement : const {},
      _$data.containsKey('_count') ? l$$_count : const {},
      _$data.containsKey('_avg') ? l$$_avg : const {},
      _$data.containsKey('_max') ? l$$_max : const {},
      _$data.containsKey('_min') ? l$$_min : const {},
      _$data.containsKey('_sum') ? l$$_sum : const {},
    ]);
  }
}

abstract class CopyWith$Input$PayementsOrderByWithAggregationInput<TRes> {
  factory CopyWith$Input$PayementsOrderByWithAggregationInput(
    Input$PayementsOrderByWithAggregationInput instance,
    TRes Function(Input$PayementsOrderByWithAggregationInput) then,
  ) = _CopyWithImpl$Input$PayementsOrderByWithAggregationInput;

  factory CopyWith$Input$PayementsOrderByWithAggregationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PayementsOrderByWithAggregationInput;

  TRes call({
    Enum$SortOrder? payement_id,
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? payement,
    Input$PayementsCountOrderByAggregateInput? $_count,
    Input$PayementsAvgOrderByAggregateInput? $_avg,
    Input$PayementsMaxOrderByAggregateInput? $_max,
    Input$PayementsMinOrderByAggregateInput? $_min,
    Input$PayementsSumOrderByAggregateInput? $_sum,
  });
  CopyWith$Input$PayementsCountOrderByAggregateInput<TRes> get $_count;
  CopyWith$Input$PayementsAvgOrderByAggregateInput<TRes> get $_avg;
  CopyWith$Input$PayementsMaxOrderByAggregateInput<TRes> get $_max;
  CopyWith$Input$PayementsMinOrderByAggregateInput<TRes> get $_min;
  CopyWith$Input$PayementsSumOrderByAggregateInput<TRes> get $_sum;
}

class _CopyWithImpl$Input$PayementsOrderByWithAggregationInput<TRes>
    implements CopyWith$Input$PayementsOrderByWithAggregationInput<TRes> {
  _CopyWithImpl$Input$PayementsOrderByWithAggregationInput(
    this._instance,
    this._then,
  );

  final Input$PayementsOrderByWithAggregationInput _instance;

  final TRes Function(Input$PayementsOrderByWithAggregationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payement_id = _undefined,
    Object? transaction_id = _undefined,
    Object? payement = _undefined,
    Object? $_count = _undefined,
    Object? $_avg = _undefined,
    Object? $_max = _undefined,
    Object? $_min = _undefined,
    Object? $_sum = _undefined,
  }) =>
      _then(Input$PayementsOrderByWithAggregationInput._({
        ..._instance._$data,
        if (payement_id != _undefined)
          'payement_id': (payement_id as Enum$SortOrder?),
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Enum$SortOrder?),
        if (payement != _undefined) 'payement': (payement as Enum$SortOrder?),
        if ($_count != _undefined)
          '_count': ($_count as Input$PayementsCountOrderByAggregateInput?),
        if ($_avg != _undefined)
          '_avg': ($_avg as Input$PayementsAvgOrderByAggregateInput?),
        if ($_max != _undefined)
          '_max': ($_max as Input$PayementsMaxOrderByAggregateInput?),
        if ($_min != _undefined)
          '_min': ($_min as Input$PayementsMinOrderByAggregateInput?),
        if ($_sum != _undefined)
          '_sum': ($_sum as Input$PayementsSumOrderByAggregateInput?),
      }));
  CopyWith$Input$PayementsCountOrderByAggregateInput<TRes> get $_count {
    final local$$_count = _instance.$_count;
    return local$$_count == null
        ? CopyWith$Input$PayementsCountOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$PayementsCountOrderByAggregateInput(
            local$$_count, (e) => call($_count: e));
  }

  CopyWith$Input$PayementsAvgOrderByAggregateInput<TRes> get $_avg {
    final local$$_avg = _instance.$_avg;
    return local$$_avg == null
        ? CopyWith$Input$PayementsAvgOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$PayementsAvgOrderByAggregateInput(
            local$$_avg, (e) => call($_avg: e));
  }

  CopyWith$Input$PayementsMaxOrderByAggregateInput<TRes> get $_max {
    final local$$_max = _instance.$_max;
    return local$$_max == null
        ? CopyWith$Input$PayementsMaxOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$PayementsMaxOrderByAggregateInput(
            local$$_max, (e) => call($_max: e));
  }

  CopyWith$Input$PayementsMinOrderByAggregateInput<TRes> get $_min {
    final local$$_min = _instance.$_min;
    return local$$_min == null
        ? CopyWith$Input$PayementsMinOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$PayementsMinOrderByAggregateInput(
            local$$_min, (e) => call($_min: e));
  }

  CopyWith$Input$PayementsSumOrderByAggregateInput<TRes> get $_sum {
    final local$$_sum = _instance.$_sum;
    return local$$_sum == null
        ? CopyWith$Input$PayementsSumOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$PayementsSumOrderByAggregateInput(
            local$$_sum, (e) => call($_sum: e));
  }
}

class _CopyWithStubImpl$Input$PayementsOrderByWithAggregationInput<TRes>
    implements CopyWith$Input$PayementsOrderByWithAggregationInput<TRes> {
  _CopyWithStubImpl$Input$PayementsOrderByWithAggregationInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? payement_id,
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? payement,
    Input$PayementsCountOrderByAggregateInput? $_count,
    Input$PayementsAvgOrderByAggregateInput? $_avg,
    Input$PayementsMaxOrderByAggregateInput? $_max,
    Input$PayementsMinOrderByAggregateInput? $_min,
    Input$PayementsSumOrderByAggregateInput? $_sum,
  }) =>
      _res;
  CopyWith$Input$PayementsCountOrderByAggregateInput<TRes> get $_count =>
      CopyWith$Input$PayementsCountOrderByAggregateInput.stub(_res);
  CopyWith$Input$PayementsAvgOrderByAggregateInput<TRes> get $_avg =>
      CopyWith$Input$PayementsAvgOrderByAggregateInput.stub(_res);
  CopyWith$Input$PayementsMaxOrderByAggregateInput<TRes> get $_max =>
      CopyWith$Input$PayementsMaxOrderByAggregateInput.stub(_res);
  CopyWith$Input$PayementsMinOrderByAggregateInput<TRes> get $_min =>
      CopyWith$Input$PayementsMinOrderByAggregateInput.stub(_res);
  CopyWith$Input$PayementsSumOrderByAggregateInput<TRes> get $_sum =>
      CopyWith$Input$PayementsSumOrderByAggregateInput.stub(_res);
}

class Input$PayementsCountOrderByAggregateInput {
  factory Input$PayementsCountOrderByAggregateInput({
    Enum$SortOrder? payement_id,
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? payement,
  }) =>
      Input$PayementsCountOrderByAggregateInput._({
        if (payement_id != null) r'payement_id': payement_id,
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (payement != null) r'payement': payement,
      });

  Input$PayementsCountOrderByAggregateInput._(this._$data);

  factory Input$PayementsCountOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('payement_id')) {
      final l$payement_id = data['payement_id'];
      result$data['payement_id'] = l$payement_id == null
          ? null
          : fromJson$Enum$SortOrder((l$payement_id as String));
    }
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_id as String));
    }
    if (data.containsKey('payement')) {
      final l$payement = data['payement'];
      result$data['payement'] = l$payement == null
          ? null
          : fromJson$Enum$SortOrder((l$payement as String));
    }
    return Input$PayementsCountOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get payement_id => (_$data['payement_id'] as Enum$SortOrder?);
  Enum$SortOrder? get transaction_id =>
      (_$data['transaction_id'] as Enum$SortOrder?);
  Enum$SortOrder? get payement => (_$data['payement'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('payement_id')) {
      final l$payement_id = payement_id;
      result$data['payement_id'] =
          l$payement_id == null ? null : toJson$Enum$SortOrder(l$payement_id);
    }
    if (_$data.containsKey('transaction_id')) {
      final l$transaction_id = transaction_id;
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_id);
    }
    if (_$data.containsKey('payement')) {
      final l$payement = payement;
      result$data['payement'] =
          l$payement == null ? null : toJson$Enum$SortOrder(l$payement);
    }
    return result$data;
  }

  CopyWith$Input$PayementsCountOrderByAggregateInput<
          Input$PayementsCountOrderByAggregateInput>
      get copyWith => CopyWith$Input$PayementsCountOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PayementsCountOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payement_id = payement_id;
    final lOther$payement_id = other.payement_id;
    if (_$data.containsKey('payement_id') !=
        other._$data.containsKey('payement_id')) {
      return false;
    }
    if (l$payement_id != lOther$payement_id) {
      return false;
    }
    final l$transaction_id = transaction_id;
    final lOther$transaction_id = other.transaction_id;
    if (_$data.containsKey('transaction_id') !=
        other._$data.containsKey('transaction_id')) {
      return false;
    }
    if (l$transaction_id != lOther$transaction_id) {
      return false;
    }
    final l$payement = payement;
    final lOther$payement = other.payement;
    if (_$data.containsKey('payement') !=
        other._$data.containsKey('payement')) {
      return false;
    }
    if (l$payement != lOther$payement) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$payement_id = payement_id;
    final l$transaction_id = transaction_id;
    final l$payement = payement;
    return Object.hashAll([
      _$data.containsKey('payement_id') ? l$payement_id : const {},
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('payement') ? l$payement : const {},
    ]);
  }
}

abstract class CopyWith$Input$PayementsCountOrderByAggregateInput<TRes> {
  factory CopyWith$Input$PayementsCountOrderByAggregateInput(
    Input$PayementsCountOrderByAggregateInput instance,
    TRes Function(Input$PayementsCountOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$PayementsCountOrderByAggregateInput;

  factory CopyWith$Input$PayementsCountOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PayementsCountOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? payement_id,
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? payement,
  });
}

class _CopyWithImpl$Input$PayementsCountOrderByAggregateInput<TRes>
    implements CopyWith$Input$PayementsCountOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$PayementsCountOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$PayementsCountOrderByAggregateInput _instance;

  final TRes Function(Input$PayementsCountOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payement_id = _undefined,
    Object? transaction_id = _undefined,
    Object? payement = _undefined,
  }) =>
      _then(Input$PayementsCountOrderByAggregateInput._({
        ..._instance._$data,
        if (payement_id != _undefined)
          'payement_id': (payement_id as Enum$SortOrder?),
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Enum$SortOrder?),
        if (payement != _undefined) 'payement': (payement as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$PayementsCountOrderByAggregateInput<TRes>
    implements CopyWith$Input$PayementsCountOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$PayementsCountOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? payement_id,
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? payement,
  }) =>
      _res;
}

class Input$PayementsAvgOrderByAggregateInput {
  factory Input$PayementsAvgOrderByAggregateInput({
    Enum$SortOrder? payement_id,
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? payement,
  }) =>
      Input$PayementsAvgOrderByAggregateInput._({
        if (payement_id != null) r'payement_id': payement_id,
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (payement != null) r'payement': payement,
      });

  Input$PayementsAvgOrderByAggregateInput._(this._$data);

  factory Input$PayementsAvgOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('payement_id')) {
      final l$payement_id = data['payement_id'];
      result$data['payement_id'] = l$payement_id == null
          ? null
          : fromJson$Enum$SortOrder((l$payement_id as String));
    }
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_id as String));
    }
    if (data.containsKey('payement')) {
      final l$payement = data['payement'];
      result$data['payement'] = l$payement == null
          ? null
          : fromJson$Enum$SortOrder((l$payement as String));
    }
    return Input$PayementsAvgOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get payement_id => (_$data['payement_id'] as Enum$SortOrder?);
  Enum$SortOrder? get transaction_id =>
      (_$data['transaction_id'] as Enum$SortOrder?);
  Enum$SortOrder? get payement => (_$data['payement'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('payement_id')) {
      final l$payement_id = payement_id;
      result$data['payement_id'] =
          l$payement_id == null ? null : toJson$Enum$SortOrder(l$payement_id);
    }
    if (_$data.containsKey('transaction_id')) {
      final l$transaction_id = transaction_id;
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_id);
    }
    if (_$data.containsKey('payement')) {
      final l$payement = payement;
      result$data['payement'] =
          l$payement == null ? null : toJson$Enum$SortOrder(l$payement);
    }
    return result$data;
  }

  CopyWith$Input$PayementsAvgOrderByAggregateInput<
          Input$PayementsAvgOrderByAggregateInput>
      get copyWith => CopyWith$Input$PayementsAvgOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PayementsAvgOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payement_id = payement_id;
    final lOther$payement_id = other.payement_id;
    if (_$data.containsKey('payement_id') !=
        other._$data.containsKey('payement_id')) {
      return false;
    }
    if (l$payement_id != lOther$payement_id) {
      return false;
    }
    final l$transaction_id = transaction_id;
    final lOther$transaction_id = other.transaction_id;
    if (_$data.containsKey('transaction_id') !=
        other._$data.containsKey('transaction_id')) {
      return false;
    }
    if (l$transaction_id != lOther$transaction_id) {
      return false;
    }
    final l$payement = payement;
    final lOther$payement = other.payement;
    if (_$data.containsKey('payement') !=
        other._$data.containsKey('payement')) {
      return false;
    }
    if (l$payement != lOther$payement) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$payement_id = payement_id;
    final l$transaction_id = transaction_id;
    final l$payement = payement;
    return Object.hashAll([
      _$data.containsKey('payement_id') ? l$payement_id : const {},
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('payement') ? l$payement : const {},
    ]);
  }
}

abstract class CopyWith$Input$PayementsAvgOrderByAggregateInput<TRes> {
  factory CopyWith$Input$PayementsAvgOrderByAggregateInput(
    Input$PayementsAvgOrderByAggregateInput instance,
    TRes Function(Input$PayementsAvgOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$PayementsAvgOrderByAggregateInput;

  factory CopyWith$Input$PayementsAvgOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PayementsAvgOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? payement_id,
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? payement,
  });
}

class _CopyWithImpl$Input$PayementsAvgOrderByAggregateInput<TRes>
    implements CopyWith$Input$PayementsAvgOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$PayementsAvgOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$PayementsAvgOrderByAggregateInput _instance;

  final TRes Function(Input$PayementsAvgOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payement_id = _undefined,
    Object? transaction_id = _undefined,
    Object? payement = _undefined,
  }) =>
      _then(Input$PayementsAvgOrderByAggregateInput._({
        ..._instance._$data,
        if (payement_id != _undefined)
          'payement_id': (payement_id as Enum$SortOrder?),
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Enum$SortOrder?),
        if (payement != _undefined) 'payement': (payement as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$PayementsAvgOrderByAggregateInput<TRes>
    implements CopyWith$Input$PayementsAvgOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$PayementsAvgOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? payement_id,
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? payement,
  }) =>
      _res;
}

class Input$PayementsMaxOrderByAggregateInput {
  factory Input$PayementsMaxOrderByAggregateInput({
    Enum$SortOrder? payement_id,
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? payement,
  }) =>
      Input$PayementsMaxOrderByAggregateInput._({
        if (payement_id != null) r'payement_id': payement_id,
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (payement != null) r'payement': payement,
      });

  Input$PayementsMaxOrderByAggregateInput._(this._$data);

  factory Input$PayementsMaxOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('payement_id')) {
      final l$payement_id = data['payement_id'];
      result$data['payement_id'] = l$payement_id == null
          ? null
          : fromJson$Enum$SortOrder((l$payement_id as String));
    }
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_id as String));
    }
    if (data.containsKey('payement')) {
      final l$payement = data['payement'];
      result$data['payement'] = l$payement == null
          ? null
          : fromJson$Enum$SortOrder((l$payement as String));
    }
    return Input$PayementsMaxOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get payement_id => (_$data['payement_id'] as Enum$SortOrder?);
  Enum$SortOrder? get transaction_id =>
      (_$data['transaction_id'] as Enum$SortOrder?);
  Enum$SortOrder? get payement => (_$data['payement'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('payement_id')) {
      final l$payement_id = payement_id;
      result$data['payement_id'] =
          l$payement_id == null ? null : toJson$Enum$SortOrder(l$payement_id);
    }
    if (_$data.containsKey('transaction_id')) {
      final l$transaction_id = transaction_id;
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_id);
    }
    if (_$data.containsKey('payement')) {
      final l$payement = payement;
      result$data['payement'] =
          l$payement == null ? null : toJson$Enum$SortOrder(l$payement);
    }
    return result$data;
  }

  CopyWith$Input$PayementsMaxOrderByAggregateInput<
          Input$PayementsMaxOrderByAggregateInput>
      get copyWith => CopyWith$Input$PayementsMaxOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PayementsMaxOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payement_id = payement_id;
    final lOther$payement_id = other.payement_id;
    if (_$data.containsKey('payement_id') !=
        other._$data.containsKey('payement_id')) {
      return false;
    }
    if (l$payement_id != lOther$payement_id) {
      return false;
    }
    final l$transaction_id = transaction_id;
    final lOther$transaction_id = other.transaction_id;
    if (_$data.containsKey('transaction_id') !=
        other._$data.containsKey('transaction_id')) {
      return false;
    }
    if (l$transaction_id != lOther$transaction_id) {
      return false;
    }
    final l$payement = payement;
    final lOther$payement = other.payement;
    if (_$data.containsKey('payement') !=
        other._$data.containsKey('payement')) {
      return false;
    }
    if (l$payement != lOther$payement) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$payement_id = payement_id;
    final l$transaction_id = transaction_id;
    final l$payement = payement;
    return Object.hashAll([
      _$data.containsKey('payement_id') ? l$payement_id : const {},
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('payement') ? l$payement : const {},
    ]);
  }
}

abstract class CopyWith$Input$PayementsMaxOrderByAggregateInput<TRes> {
  factory CopyWith$Input$PayementsMaxOrderByAggregateInput(
    Input$PayementsMaxOrderByAggregateInput instance,
    TRes Function(Input$PayementsMaxOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$PayementsMaxOrderByAggregateInput;

  factory CopyWith$Input$PayementsMaxOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PayementsMaxOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? payement_id,
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? payement,
  });
}

class _CopyWithImpl$Input$PayementsMaxOrderByAggregateInput<TRes>
    implements CopyWith$Input$PayementsMaxOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$PayementsMaxOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$PayementsMaxOrderByAggregateInput _instance;

  final TRes Function(Input$PayementsMaxOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payement_id = _undefined,
    Object? transaction_id = _undefined,
    Object? payement = _undefined,
  }) =>
      _then(Input$PayementsMaxOrderByAggregateInput._({
        ..._instance._$data,
        if (payement_id != _undefined)
          'payement_id': (payement_id as Enum$SortOrder?),
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Enum$SortOrder?),
        if (payement != _undefined) 'payement': (payement as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$PayementsMaxOrderByAggregateInput<TRes>
    implements CopyWith$Input$PayementsMaxOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$PayementsMaxOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? payement_id,
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? payement,
  }) =>
      _res;
}

class Input$PayementsMinOrderByAggregateInput {
  factory Input$PayementsMinOrderByAggregateInput({
    Enum$SortOrder? payement_id,
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? payement,
  }) =>
      Input$PayementsMinOrderByAggregateInput._({
        if (payement_id != null) r'payement_id': payement_id,
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (payement != null) r'payement': payement,
      });

  Input$PayementsMinOrderByAggregateInput._(this._$data);

  factory Input$PayementsMinOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('payement_id')) {
      final l$payement_id = data['payement_id'];
      result$data['payement_id'] = l$payement_id == null
          ? null
          : fromJson$Enum$SortOrder((l$payement_id as String));
    }
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_id as String));
    }
    if (data.containsKey('payement')) {
      final l$payement = data['payement'];
      result$data['payement'] = l$payement == null
          ? null
          : fromJson$Enum$SortOrder((l$payement as String));
    }
    return Input$PayementsMinOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get payement_id => (_$data['payement_id'] as Enum$SortOrder?);
  Enum$SortOrder? get transaction_id =>
      (_$data['transaction_id'] as Enum$SortOrder?);
  Enum$SortOrder? get payement => (_$data['payement'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('payement_id')) {
      final l$payement_id = payement_id;
      result$data['payement_id'] =
          l$payement_id == null ? null : toJson$Enum$SortOrder(l$payement_id);
    }
    if (_$data.containsKey('transaction_id')) {
      final l$transaction_id = transaction_id;
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_id);
    }
    if (_$data.containsKey('payement')) {
      final l$payement = payement;
      result$data['payement'] =
          l$payement == null ? null : toJson$Enum$SortOrder(l$payement);
    }
    return result$data;
  }

  CopyWith$Input$PayementsMinOrderByAggregateInput<
          Input$PayementsMinOrderByAggregateInput>
      get copyWith => CopyWith$Input$PayementsMinOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PayementsMinOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payement_id = payement_id;
    final lOther$payement_id = other.payement_id;
    if (_$data.containsKey('payement_id') !=
        other._$data.containsKey('payement_id')) {
      return false;
    }
    if (l$payement_id != lOther$payement_id) {
      return false;
    }
    final l$transaction_id = transaction_id;
    final lOther$transaction_id = other.transaction_id;
    if (_$data.containsKey('transaction_id') !=
        other._$data.containsKey('transaction_id')) {
      return false;
    }
    if (l$transaction_id != lOther$transaction_id) {
      return false;
    }
    final l$payement = payement;
    final lOther$payement = other.payement;
    if (_$data.containsKey('payement') !=
        other._$data.containsKey('payement')) {
      return false;
    }
    if (l$payement != lOther$payement) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$payement_id = payement_id;
    final l$transaction_id = transaction_id;
    final l$payement = payement;
    return Object.hashAll([
      _$data.containsKey('payement_id') ? l$payement_id : const {},
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('payement') ? l$payement : const {},
    ]);
  }
}

abstract class CopyWith$Input$PayementsMinOrderByAggregateInput<TRes> {
  factory CopyWith$Input$PayementsMinOrderByAggregateInput(
    Input$PayementsMinOrderByAggregateInput instance,
    TRes Function(Input$PayementsMinOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$PayementsMinOrderByAggregateInput;

  factory CopyWith$Input$PayementsMinOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PayementsMinOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? payement_id,
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? payement,
  });
}

class _CopyWithImpl$Input$PayementsMinOrderByAggregateInput<TRes>
    implements CopyWith$Input$PayementsMinOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$PayementsMinOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$PayementsMinOrderByAggregateInput _instance;

  final TRes Function(Input$PayementsMinOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payement_id = _undefined,
    Object? transaction_id = _undefined,
    Object? payement = _undefined,
  }) =>
      _then(Input$PayementsMinOrderByAggregateInput._({
        ..._instance._$data,
        if (payement_id != _undefined)
          'payement_id': (payement_id as Enum$SortOrder?),
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Enum$SortOrder?),
        if (payement != _undefined) 'payement': (payement as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$PayementsMinOrderByAggregateInput<TRes>
    implements CopyWith$Input$PayementsMinOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$PayementsMinOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? payement_id,
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? payement,
  }) =>
      _res;
}

class Input$PayementsSumOrderByAggregateInput {
  factory Input$PayementsSumOrderByAggregateInput({
    Enum$SortOrder? payement_id,
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? payement,
  }) =>
      Input$PayementsSumOrderByAggregateInput._({
        if (payement_id != null) r'payement_id': payement_id,
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (payement != null) r'payement': payement,
      });

  Input$PayementsSumOrderByAggregateInput._(this._$data);

  factory Input$PayementsSumOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('payement_id')) {
      final l$payement_id = data['payement_id'];
      result$data['payement_id'] = l$payement_id == null
          ? null
          : fromJson$Enum$SortOrder((l$payement_id as String));
    }
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_id as String));
    }
    if (data.containsKey('payement')) {
      final l$payement = data['payement'];
      result$data['payement'] = l$payement == null
          ? null
          : fromJson$Enum$SortOrder((l$payement as String));
    }
    return Input$PayementsSumOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get payement_id => (_$data['payement_id'] as Enum$SortOrder?);
  Enum$SortOrder? get transaction_id =>
      (_$data['transaction_id'] as Enum$SortOrder?);
  Enum$SortOrder? get payement => (_$data['payement'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('payement_id')) {
      final l$payement_id = payement_id;
      result$data['payement_id'] =
          l$payement_id == null ? null : toJson$Enum$SortOrder(l$payement_id);
    }
    if (_$data.containsKey('transaction_id')) {
      final l$transaction_id = transaction_id;
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_id);
    }
    if (_$data.containsKey('payement')) {
      final l$payement = payement;
      result$data['payement'] =
          l$payement == null ? null : toJson$Enum$SortOrder(l$payement);
    }
    return result$data;
  }

  CopyWith$Input$PayementsSumOrderByAggregateInput<
          Input$PayementsSumOrderByAggregateInput>
      get copyWith => CopyWith$Input$PayementsSumOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PayementsSumOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payement_id = payement_id;
    final lOther$payement_id = other.payement_id;
    if (_$data.containsKey('payement_id') !=
        other._$data.containsKey('payement_id')) {
      return false;
    }
    if (l$payement_id != lOther$payement_id) {
      return false;
    }
    final l$transaction_id = transaction_id;
    final lOther$transaction_id = other.transaction_id;
    if (_$data.containsKey('transaction_id') !=
        other._$data.containsKey('transaction_id')) {
      return false;
    }
    if (l$transaction_id != lOther$transaction_id) {
      return false;
    }
    final l$payement = payement;
    final lOther$payement = other.payement;
    if (_$data.containsKey('payement') !=
        other._$data.containsKey('payement')) {
      return false;
    }
    if (l$payement != lOther$payement) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$payement_id = payement_id;
    final l$transaction_id = transaction_id;
    final l$payement = payement;
    return Object.hashAll([
      _$data.containsKey('payement_id') ? l$payement_id : const {},
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('payement') ? l$payement : const {},
    ]);
  }
}

abstract class CopyWith$Input$PayementsSumOrderByAggregateInput<TRes> {
  factory CopyWith$Input$PayementsSumOrderByAggregateInput(
    Input$PayementsSumOrderByAggregateInput instance,
    TRes Function(Input$PayementsSumOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$PayementsSumOrderByAggregateInput;

  factory CopyWith$Input$PayementsSumOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PayementsSumOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? payement_id,
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? payement,
  });
}

class _CopyWithImpl$Input$PayementsSumOrderByAggregateInput<TRes>
    implements CopyWith$Input$PayementsSumOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$PayementsSumOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$PayementsSumOrderByAggregateInput _instance;

  final TRes Function(Input$PayementsSumOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payement_id = _undefined,
    Object? transaction_id = _undefined,
    Object? payement = _undefined,
  }) =>
      _then(Input$PayementsSumOrderByAggregateInput._({
        ..._instance._$data,
        if (payement_id != _undefined)
          'payement_id': (payement_id as Enum$SortOrder?),
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Enum$SortOrder?),
        if (payement != _undefined) 'payement': (payement as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$PayementsSumOrderByAggregateInput<TRes>
    implements CopyWith$Input$PayementsSumOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$PayementsSumOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? payement_id,
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? payement,
  }) =>
      _res;
}

class Input$PayementsScalarWhereWithAggregatesInput {
  factory Input$PayementsScalarWhereWithAggregatesInput({
    List<Input$PayementsScalarWhereWithAggregatesInput>? AND,
    List<Input$PayementsScalarWhereWithAggregatesInput>? OR,
    List<Input$PayementsScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? payement_id,
    Input$IntWithAggregatesFilter? transaction_id,
    Input$FloatWithAggregatesFilter? payement,
  }) =>
      Input$PayementsScalarWhereWithAggregatesInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (payement_id != null) r'payement_id': payement_id,
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (payement != null) r'payement': payement,
      });

  Input$PayementsScalarWhereWithAggregatesInput._(this._$data);

  factory Input$PayementsScalarWhereWithAggregatesInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) => Input$PayementsScalarWhereWithAggregatesInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) => Input$PayementsScalarWhereWithAggregatesInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) => Input$PayementsScalarWhereWithAggregatesInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('payement_id')) {
      final l$payement_id = data['payement_id'];
      result$data['payement_id'] = l$payement_id == null
          ? null
          : Input$IntWithAggregatesFilter.fromJson(
              (l$payement_id as Map<String, dynamic>));
    }
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : Input$IntWithAggregatesFilter.fromJson(
              (l$transaction_id as Map<String, dynamic>));
    }
    if (data.containsKey('payement')) {
      final l$payement = data['payement'];
      result$data['payement'] = l$payement == null
          ? null
          : Input$FloatWithAggregatesFilter.fromJson(
              (l$payement as Map<String, dynamic>));
    }
    return Input$PayementsScalarWhereWithAggregatesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$PayementsScalarWhereWithAggregatesInput>? get AND =>
      (_$data['AND'] as List<Input$PayementsScalarWhereWithAggregatesInput>?);
  List<Input$PayementsScalarWhereWithAggregatesInput>? get OR =>
      (_$data['OR'] as List<Input$PayementsScalarWhereWithAggregatesInput>?);
  List<Input$PayementsScalarWhereWithAggregatesInput>? get NOT =>
      (_$data['NOT'] as List<Input$PayementsScalarWhereWithAggregatesInput>?);
  Input$IntWithAggregatesFilter? get payement_id =>
      (_$data['payement_id'] as Input$IntWithAggregatesFilter?);
  Input$IntWithAggregatesFilter? get transaction_id =>
      (_$data['transaction_id'] as Input$IntWithAggregatesFilter?);
  Input$FloatWithAggregatesFilter? get payement =>
      (_$data['payement'] as Input$FloatWithAggregatesFilter?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('AND')) {
      final l$AND = AND;
      result$data['AND'] = l$AND?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('OR')) {
      final l$OR = OR;
      result$data['OR'] = l$OR?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('NOT')) {
      final l$NOT = NOT;
      result$data['NOT'] = l$NOT?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('payement_id')) {
      final l$payement_id = payement_id;
      result$data['payement_id'] = l$payement_id?.toJson();
    }
    if (_$data.containsKey('transaction_id')) {
      final l$transaction_id = transaction_id;
      result$data['transaction_id'] = l$transaction_id?.toJson();
    }
    if (_$data.containsKey('payement')) {
      final l$payement = payement;
      result$data['payement'] = l$payement?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PayementsScalarWhereWithAggregatesInput<
          Input$PayementsScalarWhereWithAggregatesInput>
      get copyWith => CopyWith$Input$PayementsScalarWhereWithAggregatesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PayementsScalarWhereWithAggregatesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$AND = AND;
    final lOther$AND = other.AND;
    if (_$data.containsKey('AND') != other._$data.containsKey('AND')) {
      return false;
    }
    if (l$AND != null && lOther$AND != null) {
      if (l$AND.length != lOther$AND.length) {
        return false;
      }
      for (int i = 0; i < l$AND.length; i++) {
        final l$AND$entry = l$AND[i];
        final lOther$AND$entry = lOther$AND[i];
        if (l$AND$entry != lOther$AND$entry) {
          return false;
        }
      }
    } else if (l$AND != lOther$AND) {
      return false;
    }
    final l$OR = OR;
    final lOther$OR = other.OR;
    if (_$data.containsKey('OR') != other._$data.containsKey('OR')) {
      return false;
    }
    if (l$OR != null && lOther$OR != null) {
      if (l$OR.length != lOther$OR.length) {
        return false;
      }
      for (int i = 0; i < l$OR.length; i++) {
        final l$OR$entry = l$OR[i];
        final lOther$OR$entry = lOther$OR[i];
        if (l$OR$entry != lOther$OR$entry) {
          return false;
        }
      }
    } else if (l$OR != lOther$OR) {
      return false;
    }
    final l$NOT = NOT;
    final lOther$NOT = other.NOT;
    if (_$data.containsKey('NOT') != other._$data.containsKey('NOT')) {
      return false;
    }
    if (l$NOT != null && lOther$NOT != null) {
      if (l$NOT.length != lOther$NOT.length) {
        return false;
      }
      for (int i = 0; i < l$NOT.length; i++) {
        final l$NOT$entry = l$NOT[i];
        final lOther$NOT$entry = lOther$NOT[i];
        if (l$NOT$entry != lOther$NOT$entry) {
          return false;
        }
      }
    } else if (l$NOT != lOther$NOT) {
      return false;
    }
    final l$payement_id = payement_id;
    final lOther$payement_id = other.payement_id;
    if (_$data.containsKey('payement_id') !=
        other._$data.containsKey('payement_id')) {
      return false;
    }
    if (l$payement_id != lOther$payement_id) {
      return false;
    }
    final l$transaction_id = transaction_id;
    final lOther$transaction_id = other.transaction_id;
    if (_$data.containsKey('transaction_id') !=
        other._$data.containsKey('transaction_id')) {
      return false;
    }
    if (l$transaction_id != lOther$transaction_id) {
      return false;
    }
    final l$payement = payement;
    final lOther$payement = other.payement;
    if (_$data.containsKey('payement') !=
        other._$data.containsKey('payement')) {
      return false;
    }
    if (l$payement != lOther$payement) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$AND = AND;
    final l$OR = OR;
    final l$NOT = NOT;
    final l$payement_id = payement_id;
    final l$transaction_id = transaction_id;
    final l$payement = payement;
    return Object.hashAll([
      _$data.containsKey('AND')
          ? l$AND == null
              ? null
              : Object.hashAll(l$AND.map((v) => v))
          : const {},
      _$data.containsKey('OR')
          ? l$OR == null
              ? null
              : Object.hashAll(l$OR.map((v) => v))
          : const {},
      _$data.containsKey('NOT')
          ? l$NOT == null
              ? null
              : Object.hashAll(l$NOT.map((v) => v))
          : const {},
      _$data.containsKey('payement_id') ? l$payement_id : const {},
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('payement') ? l$payement : const {},
    ]);
  }
}

abstract class CopyWith$Input$PayementsScalarWhereWithAggregatesInput<TRes> {
  factory CopyWith$Input$PayementsScalarWhereWithAggregatesInput(
    Input$PayementsScalarWhereWithAggregatesInput instance,
    TRes Function(Input$PayementsScalarWhereWithAggregatesInput) then,
  ) = _CopyWithImpl$Input$PayementsScalarWhereWithAggregatesInput;

  factory CopyWith$Input$PayementsScalarWhereWithAggregatesInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$PayementsScalarWhereWithAggregatesInput;

  TRes call({
    List<Input$PayementsScalarWhereWithAggregatesInput>? AND,
    List<Input$PayementsScalarWhereWithAggregatesInput>? OR,
    List<Input$PayementsScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? payement_id,
    Input$IntWithAggregatesFilter? transaction_id,
    Input$FloatWithAggregatesFilter? payement,
  });
  TRes AND(
      Iterable<Input$PayementsScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$PayementsScalarWhereWithAggregatesInput<
                      Input$PayementsScalarWhereWithAggregatesInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$PayementsScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$PayementsScalarWhereWithAggregatesInput<
                      Input$PayementsScalarWhereWithAggregatesInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$PayementsScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$PayementsScalarWhereWithAggregatesInput<
                      Input$PayementsScalarWhereWithAggregatesInput>>?)
          _fn);
  CopyWith$Input$FloatWithAggregatesFilter<TRes> get payement;
}

class _CopyWithImpl$Input$PayementsScalarWhereWithAggregatesInput<TRes>
    implements CopyWith$Input$PayementsScalarWhereWithAggregatesInput<TRes> {
  _CopyWithImpl$Input$PayementsScalarWhereWithAggregatesInput(
    this._instance,
    this._then,
  );

  final Input$PayementsScalarWhereWithAggregatesInput _instance;

  final TRes Function(Input$PayementsScalarWhereWithAggregatesInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? payement_id = _undefined,
    Object? transaction_id = _undefined,
    Object? payement = _undefined,
  }) =>
      _then(Input$PayementsScalarWhereWithAggregatesInput._({
        ..._instance._$data,
        if (AND != _undefined)
          'AND': (AND as List<Input$PayementsScalarWhereWithAggregatesInput>?),
        if (OR != _undefined)
          'OR': (OR as List<Input$PayementsScalarWhereWithAggregatesInput>?),
        if (NOT != _undefined)
          'NOT': (NOT as List<Input$PayementsScalarWhereWithAggregatesInput>?),
        if (payement_id != _undefined)
          'payement_id': (payement_id as Input$IntWithAggregatesFilter?),
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Input$IntWithAggregatesFilter?),
        if (payement != _undefined)
          'payement': (payement as Input$FloatWithAggregatesFilter?),
      }));
  TRes AND(
          Iterable<Input$PayementsScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$PayementsScalarWhereWithAggregatesInput<
                          Input$PayementsScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND?.map(
              (e) => CopyWith$Input$PayementsScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes OR(
          Iterable<Input$PayementsScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$PayementsScalarWhereWithAggregatesInput<
                          Input$PayementsScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR?.map(
              (e) => CopyWith$Input$PayementsScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes NOT(
          Iterable<Input$PayementsScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$PayementsScalarWhereWithAggregatesInput<
                          Input$PayementsScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT?.map(
              (e) => CopyWith$Input$PayementsScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$FloatWithAggregatesFilter<TRes> get payement {
    final local$payement = _instance.payement;
    return local$payement == null
        ? CopyWith$Input$FloatWithAggregatesFilter.stub(_then(_instance))
        : CopyWith$Input$FloatWithAggregatesFilter(
            local$payement, (e) => call(payement: e));
  }
}

class _CopyWithStubImpl$Input$PayementsScalarWhereWithAggregatesInput<TRes>
    implements CopyWith$Input$PayementsScalarWhereWithAggregatesInput<TRes> {
  _CopyWithStubImpl$Input$PayementsScalarWhereWithAggregatesInput(this._res);

  TRes _res;

  call({
    List<Input$PayementsScalarWhereWithAggregatesInput>? AND,
    List<Input$PayementsScalarWhereWithAggregatesInput>? OR,
    List<Input$PayementsScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? payement_id,
    Input$IntWithAggregatesFilter? transaction_id,
    Input$FloatWithAggregatesFilter? payement,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
  CopyWith$Input$FloatWithAggregatesFilter<TRes> get payement =>
      CopyWith$Input$FloatWithAggregatesFilter.stub(_res);
}

class Input$FloatWithAggregatesFilter {
  factory Input$FloatWithAggregatesFilter({
    double? equals,
    List<double>? $in,
    List<double>? notIn,
    double? lt,
    double? lte,
    double? gt,
    double? gte,
    Input$NestedFloatWithAggregatesFilter? not,
    Input$NestedIntFilter? $_count,
    Input$NestedFloatFilter? $_avg,
    Input$NestedFloatFilter? $_sum,
    Input$NestedFloatFilter? $_min,
    Input$NestedFloatFilter? $_max,
  }) =>
      Input$FloatWithAggregatesFilter._({
        if (equals != null) r'equals': equals,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (not != null) r'not': not,
        if ($_count != null) r'_count': $_count,
        if ($_avg != null) r'_avg': $_avg,
        if ($_sum != null) r'_sum': $_sum,
        if ($_min != null) r'_min': $_min,
        if ($_max != null) r'_max': $_max,
      });

  Input$FloatWithAggregatesFilter._(this._$data);

  factory Input$FloatWithAggregatesFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('equals')) {
      final l$equals = data['equals'];
      result$data['equals'] = (l$equals as num?)?.toDouble();
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] = (l$notIn as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as num?)?.toDouble();
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as num?)?.toDouble();
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as num?)?.toDouble();
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as num?)?.toDouble();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = l$not == null
          ? null
          : Input$NestedFloatWithAggregatesFilter.fromJson(
              (l$not as Map<String, dynamic>));
    }
    if (data.containsKey('_count')) {
      final l$$_count = data['_count'];
      result$data['_count'] = l$$_count == null
          ? null
          : Input$NestedIntFilter.fromJson((l$$_count as Map<String, dynamic>));
    }
    if (data.containsKey('_avg')) {
      final l$$_avg = data['_avg'];
      result$data['_avg'] = l$$_avg == null
          ? null
          : Input$NestedFloatFilter.fromJson((l$$_avg as Map<String, dynamic>));
    }
    if (data.containsKey('_sum')) {
      final l$$_sum = data['_sum'];
      result$data['_sum'] = l$$_sum == null
          ? null
          : Input$NestedFloatFilter.fromJson((l$$_sum as Map<String, dynamic>));
    }
    if (data.containsKey('_min')) {
      final l$$_min = data['_min'];
      result$data['_min'] = l$$_min == null
          ? null
          : Input$NestedFloatFilter.fromJson((l$$_min as Map<String, dynamic>));
    }
    if (data.containsKey('_max')) {
      final l$$_max = data['_max'];
      result$data['_max'] = l$$_max == null
          ? null
          : Input$NestedFloatFilter.fromJson((l$$_max as Map<String, dynamic>));
    }
    return Input$FloatWithAggregatesFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  double? get equals => (_$data['equals'] as double?);
  List<double>? get $in => (_$data['in'] as List<double>?);
  List<double>? get notIn => (_$data['notIn'] as List<double>?);
  double? get lt => (_$data['lt'] as double?);
  double? get lte => (_$data['lte'] as double?);
  double? get gt => (_$data['gt'] as double?);
  double? get gte => (_$data['gte'] as double?);
  Input$NestedFloatWithAggregatesFilter? get not =>
      (_$data['not'] as Input$NestedFloatWithAggregatesFilter?);
  Input$NestedIntFilter? get $_count =>
      (_$data['_count'] as Input$NestedIntFilter?);
  Input$NestedFloatFilter? get $_avg =>
      (_$data['_avg'] as Input$NestedFloatFilter?);
  Input$NestedFloatFilter? get $_sum =>
      (_$data['_sum'] as Input$NestedFloatFilter?);
  Input$NestedFloatFilter? get $_min =>
      (_$data['_min'] as Input$NestedFloatFilter?);
  Input$NestedFloatFilter? get $_max =>
      (_$data['_max'] as Input$NestedFloatFilter?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('equals')) {
      final l$equals = equals;
      result$data['equals'] = l$equals;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] = l$notIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.toJson();
    }
    if (_$data.containsKey('_count')) {
      final l$$_count = $_count;
      result$data['_count'] = l$$_count?.toJson();
    }
    if (_$data.containsKey('_avg')) {
      final l$$_avg = $_avg;
      result$data['_avg'] = l$$_avg?.toJson();
    }
    if (_$data.containsKey('_sum')) {
      final l$$_sum = $_sum;
      result$data['_sum'] = l$$_sum?.toJson();
    }
    if (_$data.containsKey('_min')) {
      final l$$_min = $_min;
      result$data['_min'] = l$$_min?.toJson();
    }
    if (_$data.containsKey('_max')) {
      final l$$_max = $_max;
      result$data['_max'] = l$$_max?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$FloatWithAggregatesFilter<Input$FloatWithAggregatesFilter>
      get copyWith => CopyWith$Input$FloatWithAggregatesFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$FloatWithAggregatesFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$equals = equals;
    final lOther$equals = other.equals;
    if (_$data.containsKey('equals') != other._$data.containsKey('equals')) {
      return false;
    }
    if (l$equals != lOther$equals) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != lOther$not) {
      return false;
    }
    final l$$_count = $_count;
    final lOther$$_count = other.$_count;
    if (_$data.containsKey('_count') != other._$data.containsKey('_count')) {
      return false;
    }
    if (l$$_count != lOther$$_count) {
      return false;
    }
    final l$$_avg = $_avg;
    final lOther$$_avg = other.$_avg;
    if (_$data.containsKey('_avg') != other._$data.containsKey('_avg')) {
      return false;
    }
    if (l$$_avg != lOther$$_avg) {
      return false;
    }
    final l$$_sum = $_sum;
    final lOther$$_sum = other.$_sum;
    if (_$data.containsKey('_sum') != other._$data.containsKey('_sum')) {
      return false;
    }
    if (l$$_sum != lOther$$_sum) {
      return false;
    }
    final l$$_min = $_min;
    final lOther$$_min = other.$_min;
    if (_$data.containsKey('_min') != other._$data.containsKey('_min')) {
      return false;
    }
    if (l$$_min != lOther$$_min) {
      return false;
    }
    final l$$_max = $_max;
    final lOther$$_max = other.$_max;
    if (_$data.containsKey('_max') != other._$data.containsKey('_max')) {
      return false;
    }
    if (l$$_max != lOther$$_max) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$equals = equals;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$lt = lt;
    final l$lte = lte;
    final l$gt = gt;
    final l$gte = gte;
    final l$not = not;
    final l$$_count = $_count;
    final l$$_avg = $_avg;
    final l$$_sum = $_sum;
    final l$$_min = $_min;
    final l$$_max = $_max;
    return Object.hashAll([
      _$data.containsKey('equals') ? l$equals : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
              ? null
              : Object.hashAll(l$notIn.map((v) => v))
          : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('not') ? l$not : const {},
      _$data.containsKey('_count') ? l$$_count : const {},
      _$data.containsKey('_avg') ? l$$_avg : const {},
      _$data.containsKey('_sum') ? l$$_sum : const {},
      _$data.containsKey('_min') ? l$$_min : const {},
      _$data.containsKey('_max') ? l$$_max : const {},
    ]);
  }
}

abstract class CopyWith$Input$FloatWithAggregatesFilter<TRes> {
  factory CopyWith$Input$FloatWithAggregatesFilter(
    Input$FloatWithAggregatesFilter instance,
    TRes Function(Input$FloatWithAggregatesFilter) then,
  ) = _CopyWithImpl$Input$FloatWithAggregatesFilter;

  factory CopyWith$Input$FloatWithAggregatesFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$FloatWithAggregatesFilter;

  TRes call({
    double? equals,
    List<double>? $in,
    List<double>? notIn,
    double? lt,
    double? lte,
    double? gt,
    double? gte,
    Input$NestedFloatWithAggregatesFilter? not,
    Input$NestedIntFilter? $_count,
    Input$NestedFloatFilter? $_avg,
    Input$NestedFloatFilter? $_sum,
    Input$NestedFloatFilter? $_min,
    Input$NestedFloatFilter? $_max,
  });
  CopyWith$Input$NestedFloatWithAggregatesFilter<TRes> get not;
}

class _CopyWithImpl$Input$FloatWithAggregatesFilter<TRes>
    implements CopyWith$Input$FloatWithAggregatesFilter<TRes> {
  _CopyWithImpl$Input$FloatWithAggregatesFilter(
    this._instance,
    this._then,
  );

  final Input$FloatWithAggregatesFilter _instance;

  final TRes Function(Input$FloatWithAggregatesFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? equals = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
    Object? lt = _undefined,
    Object? lte = _undefined,
    Object? gt = _undefined,
    Object? gte = _undefined,
    Object? not = _undefined,
    Object? $_count = _undefined,
    Object? $_avg = _undefined,
    Object? $_sum = _undefined,
    Object? $_min = _undefined,
    Object? $_max = _undefined,
  }) =>
      _then(Input$FloatWithAggregatesFilter._({
        ..._instance._$data,
        if (equals != _undefined) 'equals': (equals as double?),
        if ($in != _undefined) 'in': ($in as List<double>?),
        if (notIn != _undefined) 'notIn': (notIn as List<double>?),
        if (lt != _undefined) 'lt': (lt as double?),
        if (lte != _undefined) 'lte': (lte as double?),
        if (gt != _undefined) 'gt': (gt as double?),
        if (gte != _undefined) 'gte': (gte as double?),
        if (not != _undefined)
          'not': (not as Input$NestedFloatWithAggregatesFilter?),
        if ($_count != _undefined)
          '_count': ($_count as Input$NestedIntFilter?),
        if ($_avg != _undefined) '_avg': ($_avg as Input$NestedFloatFilter?),
        if ($_sum != _undefined) '_sum': ($_sum as Input$NestedFloatFilter?),
        if ($_min != _undefined) '_min': ($_min as Input$NestedFloatFilter?),
        if ($_max != _undefined) '_max': ($_max as Input$NestedFloatFilter?),
      }));
  CopyWith$Input$NestedFloatWithAggregatesFilter<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$NestedFloatWithAggregatesFilter.stub(_then(_instance))
        : CopyWith$Input$NestedFloatWithAggregatesFilter(
            local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$FloatWithAggregatesFilter<TRes>
    implements CopyWith$Input$FloatWithAggregatesFilter<TRes> {
  _CopyWithStubImpl$Input$FloatWithAggregatesFilter(this._res);

  TRes _res;

  call({
    double? equals,
    List<double>? $in,
    List<double>? notIn,
    double? lt,
    double? lte,
    double? gt,
    double? gte,
    Input$NestedFloatWithAggregatesFilter? not,
    Input$NestedIntFilter? $_count,
    Input$NestedFloatFilter? $_avg,
    Input$NestedFloatFilter? $_sum,
    Input$NestedFloatFilter? $_min,
    Input$NestedFloatFilter? $_max,
  }) =>
      _res;
  CopyWith$Input$NestedFloatWithAggregatesFilter<TRes> get not =>
      CopyWith$Input$NestedFloatWithAggregatesFilter.stub(_res);
}

class Input$NestedFloatWithAggregatesFilter {
  factory Input$NestedFloatWithAggregatesFilter({
    double? equals,
    List<double>? $in,
    List<double>? notIn,
    double? lt,
    double? lte,
    double? gt,
    double? gte,
    Input$NestedFloatWithAggregatesFilter? not,
    Input$NestedIntFilter? $_count,
    Input$NestedFloatFilter? $_avg,
    Input$NestedFloatFilter? $_sum,
    Input$NestedFloatFilter? $_min,
    Input$NestedFloatFilter? $_max,
  }) =>
      Input$NestedFloatWithAggregatesFilter._({
        if (equals != null) r'equals': equals,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (not != null) r'not': not,
        if ($_count != null) r'_count': $_count,
        if ($_avg != null) r'_avg': $_avg,
        if ($_sum != null) r'_sum': $_sum,
        if ($_min != null) r'_min': $_min,
        if ($_max != null) r'_max': $_max,
      });

  Input$NestedFloatWithAggregatesFilter._(this._$data);

  factory Input$NestedFloatWithAggregatesFilter.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('equals')) {
      final l$equals = data['equals'];
      result$data['equals'] = (l$equals as num?)?.toDouble();
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] = (l$notIn as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as num?)?.toDouble();
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as num?)?.toDouble();
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as num?)?.toDouble();
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as num?)?.toDouble();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = l$not == null
          ? null
          : Input$NestedFloatWithAggregatesFilter.fromJson(
              (l$not as Map<String, dynamic>));
    }
    if (data.containsKey('_count')) {
      final l$$_count = data['_count'];
      result$data['_count'] = l$$_count == null
          ? null
          : Input$NestedIntFilter.fromJson((l$$_count as Map<String, dynamic>));
    }
    if (data.containsKey('_avg')) {
      final l$$_avg = data['_avg'];
      result$data['_avg'] = l$$_avg == null
          ? null
          : Input$NestedFloatFilter.fromJson((l$$_avg as Map<String, dynamic>));
    }
    if (data.containsKey('_sum')) {
      final l$$_sum = data['_sum'];
      result$data['_sum'] = l$$_sum == null
          ? null
          : Input$NestedFloatFilter.fromJson((l$$_sum as Map<String, dynamic>));
    }
    if (data.containsKey('_min')) {
      final l$$_min = data['_min'];
      result$data['_min'] = l$$_min == null
          ? null
          : Input$NestedFloatFilter.fromJson((l$$_min as Map<String, dynamic>));
    }
    if (data.containsKey('_max')) {
      final l$$_max = data['_max'];
      result$data['_max'] = l$$_max == null
          ? null
          : Input$NestedFloatFilter.fromJson((l$$_max as Map<String, dynamic>));
    }
    return Input$NestedFloatWithAggregatesFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  double? get equals => (_$data['equals'] as double?);
  List<double>? get $in => (_$data['in'] as List<double>?);
  List<double>? get notIn => (_$data['notIn'] as List<double>?);
  double? get lt => (_$data['lt'] as double?);
  double? get lte => (_$data['lte'] as double?);
  double? get gt => (_$data['gt'] as double?);
  double? get gte => (_$data['gte'] as double?);
  Input$NestedFloatWithAggregatesFilter? get not =>
      (_$data['not'] as Input$NestedFloatWithAggregatesFilter?);
  Input$NestedIntFilter? get $_count =>
      (_$data['_count'] as Input$NestedIntFilter?);
  Input$NestedFloatFilter? get $_avg =>
      (_$data['_avg'] as Input$NestedFloatFilter?);
  Input$NestedFloatFilter? get $_sum =>
      (_$data['_sum'] as Input$NestedFloatFilter?);
  Input$NestedFloatFilter? get $_min =>
      (_$data['_min'] as Input$NestedFloatFilter?);
  Input$NestedFloatFilter? get $_max =>
      (_$data['_max'] as Input$NestedFloatFilter?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('equals')) {
      final l$equals = equals;
      result$data['equals'] = l$equals;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] = l$notIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.toJson();
    }
    if (_$data.containsKey('_count')) {
      final l$$_count = $_count;
      result$data['_count'] = l$$_count?.toJson();
    }
    if (_$data.containsKey('_avg')) {
      final l$$_avg = $_avg;
      result$data['_avg'] = l$$_avg?.toJson();
    }
    if (_$data.containsKey('_sum')) {
      final l$$_sum = $_sum;
      result$data['_sum'] = l$$_sum?.toJson();
    }
    if (_$data.containsKey('_min')) {
      final l$$_min = $_min;
      result$data['_min'] = l$$_min?.toJson();
    }
    if (_$data.containsKey('_max')) {
      final l$$_max = $_max;
      result$data['_max'] = l$$_max?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$NestedFloatWithAggregatesFilter<
          Input$NestedFloatWithAggregatesFilter>
      get copyWith => CopyWith$Input$NestedFloatWithAggregatesFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$NestedFloatWithAggregatesFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$equals = equals;
    final lOther$equals = other.equals;
    if (_$data.containsKey('equals') != other._$data.containsKey('equals')) {
      return false;
    }
    if (l$equals != lOther$equals) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != lOther$not) {
      return false;
    }
    final l$$_count = $_count;
    final lOther$$_count = other.$_count;
    if (_$data.containsKey('_count') != other._$data.containsKey('_count')) {
      return false;
    }
    if (l$$_count != lOther$$_count) {
      return false;
    }
    final l$$_avg = $_avg;
    final lOther$$_avg = other.$_avg;
    if (_$data.containsKey('_avg') != other._$data.containsKey('_avg')) {
      return false;
    }
    if (l$$_avg != lOther$$_avg) {
      return false;
    }
    final l$$_sum = $_sum;
    final lOther$$_sum = other.$_sum;
    if (_$data.containsKey('_sum') != other._$data.containsKey('_sum')) {
      return false;
    }
    if (l$$_sum != lOther$$_sum) {
      return false;
    }
    final l$$_min = $_min;
    final lOther$$_min = other.$_min;
    if (_$data.containsKey('_min') != other._$data.containsKey('_min')) {
      return false;
    }
    if (l$$_min != lOther$$_min) {
      return false;
    }
    final l$$_max = $_max;
    final lOther$$_max = other.$_max;
    if (_$data.containsKey('_max') != other._$data.containsKey('_max')) {
      return false;
    }
    if (l$$_max != lOther$$_max) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$equals = equals;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$lt = lt;
    final l$lte = lte;
    final l$gt = gt;
    final l$gte = gte;
    final l$not = not;
    final l$$_count = $_count;
    final l$$_avg = $_avg;
    final l$$_sum = $_sum;
    final l$$_min = $_min;
    final l$$_max = $_max;
    return Object.hashAll([
      _$data.containsKey('equals') ? l$equals : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
              ? null
              : Object.hashAll(l$notIn.map((v) => v))
          : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('not') ? l$not : const {},
      _$data.containsKey('_count') ? l$$_count : const {},
      _$data.containsKey('_avg') ? l$$_avg : const {},
      _$data.containsKey('_sum') ? l$$_sum : const {},
      _$data.containsKey('_min') ? l$$_min : const {},
      _$data.containsKey('_max') ? l$$_max : const {},
    ]);
  }
}

abstract class CopyWith$Input$NestedFloatWithAggregatesFilter<TRes> {
  factory CopyWith$Input$NestedFloatWithAggregatesFilter(
    Input$NestedFloatWithAggregatesFilter instance,
    TRes Function(Input$NestedFloatWithAggregatesFilter) then,
  ) = _CopyWithImpl$Input$NestedFloatWithAggregatesFilter;

  factory CopyWith$Input$NestedFloatWithAggregatesFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$NestedFloatWithAggregatesFilter;

  TRes call({
    double? equals,
    List<double>? $in,
    List<double>? notIn,
    double? lt,
    double? lte,
    double? gt,
    double? gte,
    Input$NestedFloatWithAggregatesFilter? not,
    Input$NestedIntFilter? $_count,
    Input$NestedFloatFilter? $_avg,
    Input$NestedFloatFilter? $_sum,
    Input$NestedFloatFilter? $_min,
    Input$NestedFloatFilter? $_max,
  });
  CopyWith$Input$NestedFloatWithAggregatesFilter<TRes> get not;
}

class _CopyWithImpl$Input$NestedFloatWithAggregatesFilter<TRes>
    implements CopyWith$Input$NestedFloatWithAggregatesFilter<TRes> {
  _CopyWithImpl$Input$NestedFloatWithAggregatesFilter(
    this._instance,
    this._then,
  );

  final Input$NestedFloatWithAggregatesFilter _instance;

  final TRes Function(Input$NestedFloatWithAggregatesFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? equals = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
    Object? lt = _undefined,
    Object? lte = _undefined,
    Object? gt = _undefined,
    Object? gte = _undefined,
    Object? not = _undefined,
    Object? $_count = _undefined,
    Object? $_avg = _undefined,
    Object? $_sum = _undefined,
    Object? $_min = _undefined,
    Object? $_max = _undefined,
  }) =>
      _then(Input$NestedFloatWithAggregatesFilter._({
        ..._instance._$data,
        if (equals != _undefined) 'equals': (equals as double?),
        if ($in != _undefined) 'in': ($in as List<double>?),
        if (notIn != _undefined) 'notIn': (notIn as List<double>?),
        if (lt != _undefined) 'lt': (lt as double?),
        if (lte != _undefined) 'lte': (lte as double?),
        if (gt != _undefined) 'gt': (gt as double?),
        if (gte != _undefined) 'gte': (gte as double?),
        if (not != _undefined)
          'not': (not as Input$NestedFloatWithAggregatesFilter?),
        if ($_count != _undefined)
          '_count': ($_count as Input$NestedIntFilter?),
        if ($_avg != _undefined) '_avg': ($_avg as Input$NestedFloatFilter?),
        if ($_sum != _undefined) '_sum': ($_sum as Input$NestedFloatFilter?),
        if ($_min != _undefined) '_min': ($_min as Input$NestedFloatFilter?),
        if ($_max != _undefined) '_max': ($_max as Input$NestedFloatFilter?),
      }));
  CopyWith$Input$NestedFloatWithAggregatesFilter<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$NestedFloatWithAggregatesFilter.stub(_then(_instance))
        : CopyWith$Input$NestedFloatWithAggregatesFilter(
            local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$NestedFloatWithAggregatesFilter<TRes>
    implements CopyWith$Input$NestedFloatWithAggregatesFilter<TRes> {
  _CopyWithStubImpl$Input$NestedFloatWithAggregatesFilter(this._res);

  TRes _res;

  call({
    double? equals,
    List<double>? $in,
    List<double>? notIn,
    double? lt,
    double? lte,
    double? gt,
    double? gte,
    Input$NestedFloatWithAggregatesFilter? not,
    Input$NestedIntFilter? $_count,
    Input$NestedFloatFilter? $_avg,
    Input$NestedFloatFilter? $_sum,
    Input$NestedFloatFilter? $_min,
    Input$NestedFloatFilter? $_max,
  }) =>
      _res;
  CopyWith$Input$NestedFloatWithAggregatesFilter<TRes> get not =>
      CopyWith$Input$NestedFloatWithAggregatesFilter.stub(_res);
}

class Input$ProductFamilyWhereUniqueInput {
  factory Input$ProductFamilyWhereUniqueInput({int? id}) =>
      Input$ProductFamilyWhereUniqueInput._({
        if (id != null) r'id': id,
      });

  Input$ProductFamilyWhereUniqueInput._(this._$data);

  factory Input$ProductFamilyWhereUniqueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Input$ProductFamilyWhereUniqueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Input$ProductFamilyWhereUniqueInput<
          Input$ProductFamilyWhereUniqueInput>
      get copyWith => CopyWith$Input$ProductFamilyWhereUniqueInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductFamilyWhereUniqueInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Input$ProductFamilyWhereUniqueInput<TRes> {
  factory CopyWith$Input$ProductFamilyWhereUniqueInput(
    Input$ProductFamilyWhereUniqueInput instance,
    TRes Function(Input$ProductFamilyWhereUniqueInput) then,
  ) = _CopyWithImpl$Input$ProductFamilyWhereUniqueInput;

  factory CopyWith$Input$ProductFamilyWhereUniqueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductFamilyWhereUniqueInput;

  TRes call({int? id});
}

class _CopyWithImpl$Input$ProductFamilyWhereUniqueInput<TRes>
    implements CopyWith$Input$ProductFamilyWhereUniqueInput<TRes> {
  _CopyWithImpl$Input$ProductFamilyWhereUniqueInput(
    this._instance,
    this._then,
  );

  final Input$ProductFamilyWhereUniqueInput _instance;

  final TRes Function(Input$ProductFamilyWhereUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Input$ProductFamilyWhereUniqueInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Input$ProductFamilyWhereUniqueInput<TRes>
    implements CopyWith$Input$ProductFamilyWhereUniqueInput<TRes> {
  _CopyWithStubImpl$Input$ProductFamilyWhereUniqueInput(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Input$ProductFamilyOrderByWithAggregationInput {
  factory Input$ProductFamilyOrderByWithAggregationInput({
    Enum$SortOrder? id,
    Enum$SortOrder? name,
    Input$ProductFamilyCountOrderByAggregateInput? $_count,
    Input$ProductFamilyAvgOrderByAggregateInput? $_avg,
    Input$ProductFamilyMaxOrderByAggregateInput? $_max,
    Input$ProductFamilyMinOrderByAggregateInput? $_min,
    Input$ProductFamilySumOrderByAggregateInput? $_sum,
  }) =>
      Input$ProductFamilyOrderByWithAggregationInput._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if ($_count != null) r'_count': $_count,
        if ($_avg != null) r'_avg': $_avg,
        if ($_max != null) r'_max': $_max,
        if ($_min != null) r'_min': $_min,
        if ($_sum != null) r'_sum': $_sum,
      });

  Input$ProductFamilyOrderByWithAggregationInput._(this._$data);

  factory Input$ProductFamilyOrderByWithAggregationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortOrder((l$id as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson$Enum$SortOrder((l$name as String));
    }
    if (data.containsKey('_count')) {
      final l$$_count = data['_count'];
      result$data['_count'] = l$$_count == null
          ? null
          : Input$ProductFamilyCountOrderByAggregateInput.fromJson(
              (l$$_count as Map<String, dynamic>));
    }
    if (data.containsKey('_avg')) {
      final l$$_avg = data['_avg'];
      result$data['_avg'] = l$$_avg == null
          ? null
          : Input$ProductFamilyAvgOrderByAggregateInput.fromJson(
              (l$$_avg as Map<String, dynamic>));
    }
    if (data.containsKey('_max')) {
      final l$$_max = data['_max'];
      result$data['_max'] = l$$_max == null
          ? null
          : Input$ProductFamilyMaxOrderByAggregateInput.fromJson(
              (l$$_max as Map<String, dynamic>));
    }
    if (data.containsKey('_min')) {
      final l$$_min = data['_min'];
      result$data['_min'] = l$$_min == null
          ? null
          : Input$ProductFamilyMinOrderByAggregateInput.fromJson(
              (l$$_min as Map<String, dynamic>));
    }
    if (data.containsKey('_sum')) {
      final l$$_sum = data['_sum'];
      result$data['_sum'] = l$$_sum == null
          ? null
          : Input$ProductFamilySumOrderByAggregateInput.fromJson(
              (l$$_sum as Map<String, dynamic>));
    }
    return Input$ProductFamilyOrderByWithAggregationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get id => (_$data['id'] as Enum$SortOrder?);
  Enum$SortOrder? get name => (_$data['name'] as Enum$SortOrder?);
  Input$ProductFamilyCountOrderByAggregateInput? get $_count =>
      (_$data['_count'] as Input$ProductFamilyCountOrderByAggregateInput?);
  Input$ProductFamilyAvgOrderByAggregateInput? get $_avg =>
      (_$data['_avg'] as Input$ProductFamilyAvgOrderByAggregateInput?);
  Input$ProductFamilyMaxOrderByAggregateInput? get $_max =>
      (_$data['_max'] as Input$ProductFamilyMaxOrderByAggregateInput?);
  Input$ProductFamilyMinOrderByAggregateInput? get $_min =>
      (_$data['_min'] as Input$ProductFamilyMinOrderByAggregateInput?);
  Input$ProductFamilySumOrderByAggregateInput? get $_sum =>
      (_$data['_sum'] as Input$ProductFamilySumOrderByAggregateInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortOrder(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$SortOrder(l$name);
    }
    if (_$data.containsKey('_count')) {
      final l$$_count = $_count;
      result$data['_count'] = l$$_count?.toJson();
    }
    if (_$data.containsKey('_avg')) {
      final l$$_avg = $_avg;
      result$data['_avg'] = l$$_avg?.toJson();
    }
    if (_$data.containsKey('_max')) {
      final l$$_max = $_max;
      result$data['_max'] = l$$_max?.toJson();
    }
    if (_$data.containsKey('_min')) {
      final l$$_min = $_min;
      result$data['_min'] = l$$_min?.toJson();
    }
    if (_$data.containsKey('_sum')) {
      final l$$_sum = $_sum;
      result$data['_sum'] = l$$_sum?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductFamilyOrderByWithAggregationInput<
          Input$ProductFamilyOrderByWithAggregationInput>
      get copyWith => CopyWith$Input$ProductFamilyOrderByWithAggregationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductFamilyOrderByWithAggregationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$$_count = $_count;
    final lOther$$_count = other.$_count;
    if (_$data.containsKey('_count') != other._$data.containsKey('_count')) {
      return false;
    }
    if (l$$_count != lOther$$_count) {
      return false;
    }
    final l$$_avg = $_avg;
    final lOther$$_avg = other.$_avg;
    if (_$data.containsKey('_avg') != other._$data.containsKey('_avg')) {
      return false;
    }
    if (l$$_avg != lOther$$_avg) {
      return false;
    }
    final l$$_max = $_max;
    final lOther$$_max = other.$_max;
    if (_$data.containsKey('_max') != other._$data.containsKey('_max')) {
      return false;
    }
    if (l$$_max != lOther$$_max) {
      return false;
    }
    final l$$_min = $_min;
    final lOther$$_min = other.$_min;
    if (_$data.containsKey('_min') != other._$data.containsKey('_min')) {
      return false;
    }
    if (l$$_min != lOther$$_min) {
      return false;
    }
    final l$$_sum = $_sum;
    final lOther$$_sum = other.$_sum;
    if (_$data.containsKey('_sum') != other._$data.containsKey('_sum')) {
      return false;
    }
    if (l$$_sum != lOther$$_sum) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$_count = $_count;
    final l$$_avg = $_avg;
    final l$$_max = $_max;
    final l$$_min = $_min;
    final l$$_sum = $_sum;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('_count') ? l$$_count : const {},
      _$data.containsKey('_avg') ? l$$_avg : const {},
      _$data.containsKey('_max') ? l$$_max : const {},
      _$data.containsKey('_min') ? l$$_min : const {},
      _$data.containsKey('_sum') ? l$$_sum : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductFamilyOrderByWithAggregationInput<TRes> {
  factory CopyWith$Input$ProductFamilyOrderByWithAggregationInput(
    Input$ProductFamilyOrderByWithAggregationInput instance,
    TRes Function(Input$ProductFamilyOrderByWithAggregationInput) then,
  ) = _CopyWithImpl$Input$ProductFamilyOrderByWithAggregationInput;

  factory CopyWith$Input$ProductFamilyOrderByWithAggregationInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductFamilyOrderByWithAggregationInput;

  TRes call({
    Enum$SortOrder? id,
    Enum$SortOrder? name,
    Input$ProductFamilyCountOrderByAggregateInput? $_count,
    Input$ProductFamilyAvgOrderByAggregateInput? $_avg,
    Input$ProductFamilyMaxOrderByAggregateInput? $_max,
    Input$ProductFamilyMinOrderByAggregateInput? $_min,
    Input$ProductFamilySumOrderByAggregateInput? $_sum,
  });
  CopyWith$Input$ProductFamilyCountOrderByAggregateInput<TRes> get $_count;
  CopyWith$Input$ProductFamilyAvgOrderByAggregateInput<TRes> get $_avg;
  CopyWith$Input$ProductFamilyMaxOrderByAggregateInput<TRes> get $_max;
  CopyWith$Input$ProductFamilyMinOrderByAggregateInput<TRes> get $_min;
  CopyWith$Input$ProductFamilySumOrderByAggregateInput<TRes> get $_sum;
}

class _CopyWithImpl$Input$ProductFamilyOrderByWithAggregationInput<TRes>
    implements CopyWith$Input$ProductFamilyOrderByWithAggregationInput<TRes> {
  _CopyWithImpl$Input$ProductFamilyOrderByWithAggregationInput(
    this._instance,
    this._then,
  );

  final Input$ProductFamilyOrderByWithAggregationInput _instance;

  final TRes Function(Input$ProductFamilyOrderByWithAggregationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $_count = _undefined,
    Object? $_avg = _undefined,
    Object? $_max = _undefined,
    Object? $_min = _undefined,
    Object? $_sum = _undefined,
  }) =>
      _then(Input$ProductFamilyOrderByWithAggregationInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortOrder?),
        if (name != _undefined) 'name': (name as Enum$SortOrder?),
        if ($_count != _undefined)
          '_count': ($_count as Input$ProductFamilyCountOrderByAggregateInput?),
        if ($_avg != _undefined)
          '_avg': ($_avg as Input$ProductFamilyAvgOrderByAggregateInput?),
        if ($_max != _undefined)
          '_max': ($_max as Input$ProductFamilyMaxOrderByAggregateInput?),
        if ($_min != _undefined)
          '_min': ($_min as Input$ProductFamilyMinOrderByAggregateInput?),
        if ($_sum != _undefined)
          '_sum': ($_sum as Input$ProductFamilySumOrderByAggregateInput?),
      }));
  CopyWith$Input$ProductFamilyCountOrderByAggregateInput<TRes> get $_count {
    final local$$_count = _instance.$_count;
    return local$$_count == null
        ? CopyWith$Input$ProductFamilyCountOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductFamilyCountOrderByAggregateInput(
            local$$_count, (e) => call($_count: e));
  }

  CopyWith$Input$ProductFamilyAvgOrderByAggregateInput<TRes> get $_avg {
    final local$$_avg = _instance.$_avg;
    return local$$_avg == null
        ? CopyWith$Input$ProductFamilyAvgOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductFamilyAvgOrderByAggregateInput(
            local$$_avg, (e) => call($_avg: e));
  }

  CopyWith$Input$ProductFamilyMaxOrderByAggregateInput<TRes> get $_max {
    final local$$_max = _instance.$_max;
    return local$$_max == null
        ? CopyWith$Input$ProductFamilyMaxOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductFamilyMaxOrderByAggregateInput(
            local$$_max, (e) => call($_max: e));
  }

  CopyWith$Input$ProductFamilyMinOrderByAggregateInput<TRes> get $_min {
    final local$$_min = _instance.$_min;
    return local$$_min == null
        ? CopyWith$Input$ProductFamilyMinOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductFamilyMinOrderByAggregateInput(
            local$$_min, (e) => call($_min: e));
  }

  CopyWith$Input$ProductFamilySumOrderByAggregateInput<TRes> get $_sum {
    final local$$_sum = _instance.$_sum;
    return local$$_sum == null
        ? CopyWith$Input$ProductFamilySumOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductFamilySumOrderByAggregateInput(
            local$$_sum, (e) => call($_sum: e));
  }
}

class _CopyWithStubImpl$Input$ProductFamilyOrderByWithAggregationInput<TRes>
    implements CopyWith$Input$ProductFamilyOrderByWithAggregationInput<TRes> {
  _CopyWithStubImpl$Input$ProductFamilyOrderByWithAggregationInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? id,
    Enum$SortOrder? name,
    Input$ProductFamilyCountOrderByAggregateInput? $_count,
    Input$ProductFamilyAvgOrderByAggregateInput? $_avg,
    Input$ProductFamilyMaxOrderByAggregateInput? $_max,
    Input$ProductFamilyMinOrderByAggregateInput? $_min,
    Input$ProductFamilySumOrderByAggregateInput? $_sum,
  }) =>
      _res;
  CopyWith$Input$ProductFamilyCountOrderByAggregateInput<TRes> get $_count =>
      CopyWith$Input$ProductFamilyCountOrderByAggregateInput.stub(_res);
  CopyWith$Input$ProductFamilyAvgOrderByAggregateInput<TRes> get $_avg =>
      CopyWith$Input$ProductFamilyAvgOrderByAggregateInput.stub(_res);
  CopyWith$Input$ProductFamilyMaxOrderByAggregateInput<TRes> get $_max =>
      CopyWith$Input$ProductFamilyMaxOrderByAggregateInput.stub(_res);
  CopyWith$Input$ProductFamilyMinOrderByAggregateInput<TRes> get $_min =>
      CopyWith$Input$ProductFamilyMinOrderByAggregateInput.stub(_res);
  CopyWith$Input$ProductFamilySumOrderByAggregateInput<TRes> get $_sum =>
      CopyWith$Input$ProductFamilySumOrderByAggregateInput.stub(_res);
}

class Input$ProductFamilyCountOrderByAggregateInput {
  factory Input$ProductFamilyCountOrderByAggregateInput({
    Enum$SortOrder? id,
    Enum$SortOrder? name,
  }) =>
      Input$ProductFamilyCountOrderByAggregateInput._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
      });

  Input$ProductFamilyCountOrderByAggregateInput._(this._$data);

  factory Input$ProductFamilyCountOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortOrder((l$id as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson$Enum$SortOrder((l$name as String));
    }
    return Input$ProductFamilyCountOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get id => (_$data['id'] as Enum$SortOrder?);
  Enum$SortOrder? get name => (_$data['name'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortOrder(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$SortOrder(l$name);
    }
    return result$data;
  }

  CopyWith$Input$ProductFamilyCountOrderByAggregateInput<
          Input$ProductFamilyCountOrderByAggregateInput>
      get copyWith => CopyWith$Input$ProductFamilyCountOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductFamilyCountOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductFamilyCountOrderByAggregateInput<TRes> {
  factory CopyWith$Input$ProductFamilyCountOrderByAggregateInput(
    Input$ProductFamilyCountOrderByAggregateInput instance,
    TRes Function(Input$ProductFamilyCountOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$ProductFamilyCountOrderByAggregateInput;

  factory CopyWith$Input$ProductFamilyCountOrderByAggregateInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductFamilyCountOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? id,
    Enum$SortOrder? name,
  });
}

class _CopyWithImpl$Input$ProductFamilyCountOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductFamilyCountOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$ProductFamilyCountOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$ProductFamilyCountOrderByAggregateInput _instance;

  final TRes Function(Input$ProductFamilyCountOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Input$ProductFamilyCountOrderByAggregateInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortOrder?),
        if (name != _undefined) 'name': (name as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$ProductFamilyCountOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductFamilyCountOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$ProductFamilyCountOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? id,
    Enum$SortOrder? name,
  }) =>
      _res;
}

class Input$ProductFamilyAvgOrderByAggregateInput {
  factory Input$ProductFamilyAvgOrderByAggregateInput({Enum$SortOrder? id}) =>
      Input$ProductFamilyAvgOrderByAggregateInput._({
        if (id != null) r'id': id,
      });

  Input$ProductFamilyAvgOrderByAggregateInput._(this._$data);

  factory Input$ProductFamilyAvgOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortOrder((l$id as String));
    }
    return Input$ProductFamilyAvgOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get id => (_$data['id'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortOrder(l$id);
    }
    return result$data;
  }

  CopyWith$Input$ProductFamilyAvgOrderByAggregateInput<
          Input$ProductFamilyAvgOrderByAggregateInput>
      get copyWith => CopyWith$Input$ProductFamilyAvgOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductFamilyAvgOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Input$ProductFamilyAvgOrderByAggregateInput<TRes> {
  factory CopyWith$Input$ProductFamilyAvgOrderByAggregateInput(
    Input$ProductFamilyAvgOrderByAggregateInput instance,
    TRes Function(Input$ProductFamilyAvgOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$ProductFamilyAvgOrderByAggregateInput;

  factory CopyWith$Input$ProductFamilyAvgOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductFamilyAvgOrderByAggregateInput;

  TRes call({Enum$SortOrder? id});
}

class _CopyWithImpl$Input$ProductFamilyAvgOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductFamilyAvgOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$ProductFamilyAvgOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$ProductFamilyAvgOrderByAggregateInput _instance;

  final TRes Function(Input$ProductFamilyAvgOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Input$ProductFamilyAvgOrderByAggregateInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$ProductFamilyAvgOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductFamilyAvgOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$ProductFamilyAvgOrderByAggregateInput(this._res);

  TRes _res;

  call({Enum$SortOrder? id}) => _res;
}

class Input$ProductFamilyMaxOrderByAggregateInput {
  factory Input$ProductFamilyMaxOrderByAggregateInput({
    Enum$SortOrder? id,
    Enum$SortOrder? name,
  }) =>
      Input$ProductFamilyMaxOrderByAggregateInput._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
      });

  Input$ProductFamilyMaxOrderByAggregateInput._(this._$data);

  factory Input$ProductFamilyMaxOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortOrder((l$id as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson$Enum$SortOrder((l$name as String));
    }
    return Input$ProductFamilyMaxOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get id => (_$data['id'] as Enum$SortOrder?);
  Enum$SortOrder? get name => (_$data['name'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortOrder(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$SortOrder(l$name);
    }
    return result$data;
  }

  CopyWith$Input$ProductFamilyMaxOrderByAggregateInput<
          Input$ProductFamilyMaxOrderByAggregateInput>
      get copyWith => CopyWith$Input$ProductFamilyMaxOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductFamilyMaxOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductFamilyMaxOrderByAggregateInput<TRes> {
  factory CopyWith$Input$ProductFamilyMaxOrderByAggregateInput(
    Input$ProductFamilyMaxOrderByAggregateInput instance,
    TRes Function(Input$ProductFamilyMaxOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$ProductFamilyMaxOrderByAggregateInput;

  factory CopyWith$Input$ProductFamilyMaxOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductFamilyMaxOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? id,
    Enum$SortOrder? name,
  });
}

class _CopyWithImpl$Input$ProductFamilyMaxOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductFamilyMaxOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$ProductFamilyMaxOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$ProductFamilyMaxOrderByAggregateInput _instance;

  final TRes Function(Input$ProductFamilyMaxOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Input$ProductFamilyMaxOrderByAggregateInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortOrder?),
        if (name != _undefined) 'name': (name as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$ProductFamilyMaxOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductFamilyMaxOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$ProductFamilyMaxOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? id,
    Enum$SortOrder? name,
  }) =>
      _res;
}

class Input$ProductFamilyMinOrderByAggregateInput {
  factory Input$ProductFamilyMinOrderByAggregateInput({
    Enum$SortOrder? id,
    Enum$SortOrder? name,
  }) =>
      Input$ProductFamilyMinOrderByAggregateInput._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
      });

  Input$ProductFamilyMinOrderByAggregateInput._(this._$data);

  factory Input$ProductFamilyMinOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortOrder((l$id as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson$Enum$SortOrder((l$name as String));
    }
    return Input$ProductFamilyMinOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get id => (_$data['id'] as Enum$SortOrder?);
  Enum$SortOrder? get name => (_$data['name'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortOrder(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$SortOrder(l$name);
    }
    return result$data;
  }

  CopyWith$Input$ProductFamilyMinOrderByAggregateInput<
          Input$ProductFamilyMinOrderByAggregateInput>
      get copyWith => CopyWith$Input$ProductFamilyMinOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductFamilyMinOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductFamilyMinOrderByAggregateInput<TRes> {
  factory CopyWith$Input$ProductFamilyMinOrderByAggregateInput(
    Input$ProductFamilyMinOrderByAggregateInput instance,
    TRes Function(Input$ProductFamilyMinOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$ProductFamilyMinOrderByAggregateInput;

  factory CopyWith$Input$ProductFamilyMinOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductFamilyMinOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? id,
    Enum$SortOrder? name,
  });
}

class _CopyWithImpl$Input$ProductFamilyMinOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductFamilyMinOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$ProductFamilyMinOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$ProductFamilyMinOrderByAggregateInput _instance;

  final TRes Function(Input$ProductFamilyMinOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Input$ProductFamilyMinOrderByAggregateInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortOrder?),
        if (name != _undefined) 'name': (name as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$ProductFamilyMinOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductFamilyMinOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$ProductFamilyMinOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? id,
    Enum$SortOrder? name,
  }) =>
      _res;
}

class Input$ProductFamilySumOrderByAggregateInput {
  factory Input$ProductFamilySumOrderByAggregateInput({Enum$SortOrder? id}) =>
      Input$ProductFamilySumOrderByAggregateInput._({
        if (id != null) r'id': id,
      });

  Input$ProductFamilySumOrderByAggregateInput._(this._$data);

  factory Input$ProductFamilySumOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortOrder((l$id as String));
    }
    return Input$ProductFamilySumOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get id => (_$data['id'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortOrder(l$id);
    }
    return result$data;
  }

  CopyWith$Input$ProductFamilySumOrderByAggregateInput<
          Input$ProductFamilySumOrderByAggregateInput>
      get copyWith => CopyWith$Input$ProductFamilySumOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductFamilySumOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Input$ProductFamilySumOrderByAggregateInput<TRes> {
  factory CopyWith$Input$ProductFamilySumOrderByAggregateInput(
    Input$ProductFamilySumOrderByAggregateInput instance,
    TRes Function(Input$ProductFamilySumOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$ProductFamilySumOrderByAggregateInput;

  factory CopyWith$Input$ProductFamilySumOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductFamilySumOrderByAggregateInput;

  TRes call({Enum$SortOrder? id});
}

class _CopyWithImpl$Input$ProductFamilySumOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductFamilySumOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$ProductFamilySumOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$ProductFamilySumOrderByAggregateInput _instance;

  final TRes Function(Input$ProductFamilySumOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Input$ProductFamilySumOrderByAggregateInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$ProductFamilySumOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductFamilySumOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$ProductFamilySumOrderByAggregateInput(this._res);

  TRes _res;

  call({Enum$SortOrder? id}) => _res;
}

class Input$ProductFamilyScalarWhereWithAggregatesInput {
  factory Input$ProductFamilyScalarWhereWithAggregatesInput({
    List<Input$ProductFamilyScalarWhereWithAggregatesInput>? AND,
    List<Input$ProductFamilyScalarWhereWithAggregatesInput>? OR,
    List<Input$ProductFamilyScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? id,
    Input$StringWithAggregatesFilter? name,
  }) =>
      Input$ProductFamilyScalarWhereWithAggregatesInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
      });

  Input$ProductFamilyScalarWhereWithAggregatesInput._(this._$data);

  factory Input$ProductFamilyScalarWhereWithAggregatesInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) =>
              Input$ProductFamilyScalarWhereWithAggregatesInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) =>
              Input$ProductFamilyScalarWhereWithAggregatesInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) =>
              Input$ProductFamilyScalarWhereWithAggregatesInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IntWithAggregatesFilter.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringWithAggregatesFilter.fromJson(
              (l$name as Map<String, dynamic>));
    }
    return Input$ProductFamilyScalarWhereWithAggregatesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ProductFamilyScalarWhereWithAggregatesInput>? get AND =>
      (_$data['AND']
          as List<Input$ProductFamilyScalarWhereWithAggregatesInput>?);
  List<Input$ProductFamilyScalarWhereWithAggregatesInput>? get OR =>
      (_$data['OR']
          as List<Input$ProductFamilyScalarWhereWithAggregatesInput>?);
  List<Input$ProductFamilyScalarWhereWithAggregatesInput>? get NOT =>
      (_$data['NOT']
          as List<Input$ProductFamilyScalarWhereWithAggregatesInput>?);
  Input$IntWithAggregatesFilter? get id =>
      (_$data['id'] as Input$IntWithAggregatesFilter?);
  Input$StringWithAggregatesFilter? get name =>
      (_$data['name'] as Input$StringWithAggregatesFilter?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('AND')) {
      final l$AND = AND;
      result$data['AND'] = l$AND?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('OR')) {
      final l$OR = OR;
      result$data['OR'] = l$OR?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('NOT')) {
      final l$NOT = NOT;
      result$data['NOT'] = l$NOT?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductFamilyScalarWhereWithAggregatesInput<
          Input$ProductFamilyScalarWhereWithAggregatesInput>
      get copyWith =>
          CopyWith$Input$ProductFamilyScalarWhereWithAggregatesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductFamilyScalarWhereWithAggregatesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$AND = AND;
    final lOther$AND = other.AND;
    if (_$data.containsKey('AND') != other._$data.containsKey('AND')) {
      return false;
    }
    if (l$AND != null && lOther$AND != null) {
      if (l$AND.length != lOther$AND.length) {
        return false;
      }
      for (int i = 0; i < l$AND.length; i++) {
        final l$AND$entry = l$AND[i];
        final lOther$AND$entry = lOther$AND[i];
        if (l$AND$entry != lOther$AND$entry) {
          return false;
        }
      }
    } else if (l$AND != lOther$AND) {
      return false;
    }
    final l$OR = OR;
    final lOther$OR = other.OR;
    if (_$data.containsKey('OR') != other._$data.containsKey('OR')) {
      return false;
    }
    if (l$OR != null && lOther$OR != null) {
      if (l$OR.length != lOther$OR.length) {
        return false;
      }
      for (int i = 0; i < l$OR.length; i++) {
        final l$OR$entry = l$OR[i];
        final lOther$OR$entry = lOther$OR[i];
        if (l$OR$entry != lOther$OR$entry) {
          return false;
        }
      }
    } else if (l$OR != lOther$OR) {
      return false;
    }
    final l$NOT = NOT;
    final lOther$NOT = other.NOT;
    if (_$data.containsKey('NOT') != other._$data.containsKey('NOT')) {
      return false;
    }
    if (l$NOT != null && lOther$NOT != null) {
      if (l$NOT.length != lOther$NOT.length) {
        return false;
      }
      for (int i = 0; i < l$NOT.length; i++) {
        final l$NOT$entry = l$NOT[i];
        final lOther$NOT$entry = lOther$NOT[i];
        if (l$NOT$entry != lOther$NOT$entry) {
          return false;
        }
      }
    } else if (l$NOT != lOther$NOT) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$AND = AND;
    final l$OR = OR;
    final l$NOT = NOT;
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('AND')
          ? l$AND == null
              ? null
              : Object.hashAll(l$AND.map((v) => v))
          : const {},
      _$data.containsKey('OR')
          ? l$OR == null
              ? null
              : Object.hashAll(l$OR.map((v) => v))
          : const {},
      _$data.containsKey('NOT')
          ? l$NOT == null
              ? null
              : Object.hashAll(l$NOT.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductFamilyScalarWhereWithAggregatesInput<
    TRes> {
  factory CopyWith$Input$ProductFamilyScalarWhereWithAggregatesInput(
    Input$ProductFamilyScalarWhereWithAggregatesInput instance,
    TRes Function(Input$ProductFamilyScalarWhereWithAggregatesInput) then,
  ) = _CopyWithImpl$Input$ProductFamilyScalarWhereWithAggregatesInput;

  factory CopyWith$Input$ProductFamilyScalarWhereWithAggregatesInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductFamilyScalarWhereWithAggregatesInput;

  TRes call({
    List<Input$ProductFamilyScalarWhereWithAggregatesInput>? AND,
    List<Input$ProductFamilyScalarWhereWithAggregatesInput>? OR,
    List<Input$ProductFamilyScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? id,
    Input$StringWithAggregatesFilter? name,
  });
  TRes AND(
      Iterable<Input$ProductFamilyScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$ProductFamilyScalarWhereWithAggregatesInput<
                      Input$ProductFamilyScalarWhereWithAggregatesInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$ProductFamilyScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$ProductFamilyScalarWhereWithAggregatesInput<
                      Input$ProductFamilyScalarWhereWithAggregatesInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$ProductFamilyScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$ProductFamilyScalarWhereWithAggregatesInput<
                      Input$ProductFamilyScalarWhereWithAggregatesInput>>?)
          _fn);
}

class _CopyWithImpl$Input$ProductFamilyScalarWhereWithAggregatesInput<TRes>
    implements
        CopyWith$Input$ProductFamilyScalarWhereWithAggregatesInput<TRes> {
  _CopyWithImpl$Input$ProductFamilyScalarWhereWithAggregatesInput(
    this._instance,
    this._then,
  );

  final Input$ProductFamilyScalarWhereWithAggregatesInput _instance;

  final TRes Function(Input$ProductFamilyScalarWhereWithAggregatesInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Input$ProductFamilyScalarWhereWithAggregatesInput._({
        ..._instance._$data,
        if (AND != _undefined)
          'AND':
              (AND as List<Input$ProductFamilyScalarWhereWithAggregatesInput>?),
        if (OR != _undefined)
          'OR':
              (OR as List<Input$ProductFamilyScalarWhereWithAggregatesInput>?),
        if (NOT != _undefined)
          'NOT':
              (NOT as List<Input$ProductFamilyScalarWhereWithAggregatesInput>?),
        if (id != _undefined) 'id': (id as Input$IntWithAggregatesFilter?),
        if (name != _undefined)
          'name': (name as Input$StringWithAggregatesFilter?),
      }));
  TRes AND(
          Iterable<Input$ProductFamilyScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductFamilyScalarWhereWithAggregatesInput<
                          Input$ProductFamilyScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND?.map(
              (e) => CopyWith$Input$ProductFamilyScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes OR(
          Iterable<Input$ProductFamilyScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductFamilyScalarWhereWithAggregatesInput<
                          Input$ProductFamilyScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR?.map(
              (e) => CopyWith$Input$ProductFamilyScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes NOT(
          Iterable<Input$ProductFamilyScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductFamilyScalarWhereWithAggregatesInput<
                          Input$ProductFamilyScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT?.map(
              (e) => CopyWith$Input$ProductFamilyScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$ProductFamilyScalarWhereWithAggregatesInput<TRes>
    implements
        CopyWith$Input$ProductFamilyScalarWhereWithAggregatesInput<TRes> {
  _CopyWithStubImpl$Input$ProductFamilyScalarWhereWithAggregatesInput(
      this._res);

  TRes _res;

  call({
    List<Input$ProductFamilyScalarWhereWithAggregatesInput>? AND,
    List<Input$ProductFamilyScalarWhereWithAggregatesInput>? OR,
    List<Input$ProductFamilyScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? id,
    Input$StringWithAggregatesFilter? name,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
}

class Input$ProductModelOrderByWithAggregationInput {
  factory Input$ProductModelOrderByWithAggregationInput({
    Enum$SortOrder? product_id,
    Enum$SortOrder? color_id,
    Enum$SortOrder? size_id,
    Enum$SortOrder? quantity,
    Input$ProductModelCountOrderByAggregateInput? $_count,
    Input$ProductModelAvgOrderByAggregateInput? $_avg,
    Input$ProductModelMaxOrderByAggregateInput? $_max,
    Input$ProductModelMinOrderByAggregateInput? $_min,
    Input$ProductModelSumOrderByAggregateInput? $_sum,
  }) =>
      Input$ProductModelOrderByWithAggregationInput._({
        if (product_id != null) r'product_id': product_id,
        if (color_id != null) r'color_id': color_id,
        if (size_id != null) r'size_id': size_id,
        if (quantity != null) r'quantity': quantity,
        if ($_count != null) r'_count': $_count,
        if ($_avg != null) r'_avg': $_avg,
        if ($_max != null) r'_max': $_max,
        if ($_min != null) r'_min': $_min,
        if ($_sum != null) r'_sum': $_sum,
      });

  Input$ProductModelOrderByWithAggregationInput._(this._$data);

  factory Input$ProductModelOrderByWithAggregationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : fromJson$Enum$SortOrder((l$product_id as String));
    }
    if (data.containsKey('color_id')) {
      final l$color_id = data['color_id'];
      result$data['color_id'] = l$color_id == null
          ? null
          : fromJson$Enum$SortOrder((l$color_id as String));
    }
    if (data.containsKey('size_id')) {
      final l$size_id = data['size_id'];
      result$data['size_id'] = l$size_id == null
          ? null
          : fromJson$Enum$SortOrder((l$size_id as String));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : fromJson$Enum$SortOrder((l$quantity as String));
    }
    if (data.containsKey('_count')) {
      final l$$_count = data['_count'];
      result$data['_count'] = l$$_count == null
          ? null
          : Input$ProductModelCountOrderByAggregateInput.fromJson(
              (l$$_count as Map<String, dynamic>));
    }
    if (data.containsKey('_avg')) {
      final l$$_avg = data['_avg'];
      result$data['_avg'] = l$$_avg == null
          ? null
          : Input$ProductModelAvgOrderByAggregateInput.fromJson(
              (l$$_avg as Map<String, dynamic>));
    }
    if (data.containsKey('_max')) {
      final l$$_max = data['_max'];
      result$data['_max'] = l$$_max == null
          ? null
          : Input$ProductModelMaxOrderByAggregateInput.fromJson(
              (l$$_max as Map<String, dynamic>));
    }
    if (data.containsKey('_min')) {
      final l$$_min = data['_min'];
      result$data['_min'] = l$$_min == null
          ? null
          : Input$ProductModelMinOrderByAggregateInput.fromJson(
              (l$$_min as Map<String, dynamic>));
    }
    if (data.containsKey('_sum')) {
      final l$$_sum = data['_sum'];
      result$data['_sum'] = l$$_sum == null
          ? null
          : Input$ProductModelSumOrderByAggregateInput.fromJson(
              (l$$_sum as Map<String, dynamic>));
    }
    return Input$ProductModelOrderByWithAggregationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get color_id => (_$data['color_id'] as Enum$SortOrder?);
  Enum$SortOrder? get size_id => (_$data['size_id'] as Enum$SortOrder?);
  Enum$SortOrder? get quantity => (_$data['quantity'] as Enum$SortOrder?);
  Input$ProductModelCountOrderByAggregateInput? get $_count =>
      (_$data['_count'] as Input$ProductModelCountOrderByAggregateInput?);
  Input$ProductModelAvgOrderByAggregateInput? get $_avg =>
      (_$data['_avg'] as Input$ProductModelAvgOrderByAggregateInput?);
  Input$ProductModelMaxOrderByAggregateInput? get $_max =>
      (_$data['_max'] as Input$ProductModelMaxOrderByAggregateInput?);
  Input$ProductModelMinOrderByAggregateInput? get $_min =>
      (_$data['_min'] as Input$ProductModelMinOrderByAggregateInput?);
  Input$ProductModelSumOrderByAggregateInput? get $_sum =>
      (_$data['_sum'] as Input$ProductModelSumOrderByAggregateInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] =
          l$product_id == null ? null : toJson$Enum$SortOrder(l$product_id);
    }
    if (_$data.containsKey('color_id')) {
      final l$color_id = color_id;
      result$data['color_id'] =
          l$color_id == null ? null : toJson$Enum$SortOrder(l$color_id);
    }
    if (_$data.containsKey('size_id')) {
      final l$size_id = size_id;
      result$data['size_id'] =
          l$size_id == null ? null : toJson$Enum$SortOrder(l$size_id);
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] =
          l$quantity == null ? null : toJson$Enum$SortOrder(l$quantity);
    }
    if (_$data.containsKey('_count')) {
      final l$$_count = $_count;
      result$data['_count'] = l$$_count?.toJson();
    }
    if (_$data.containsKey('_avg')) {
      final l$$_avg = $_avg;
      result$data['_avg'] = l$$_avg?.toJson();
    }
    if (_$data.containsKey('_max')) {
      final l$$_max = $_max;
      result$data['_max'] = l$$_max?.toJson();
    }
    if (_$data.containsKey('_min')) {
      final l$$_min = $_min;
      result$data['_min'] = l$$_min?.toJson();
    }
    if (_$data.containsKey('_sum')) {
      final l$$_sum = $_sum;
      result$data['_sum'] = l$$_sum?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductModelOrderByWithAggregationInput<
          Input$ProductModelOrderByWithAggregationInput>
      get copyWith => CopyWith$Input$ProductModelOrderByWithAggregationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelOrderByWithAggregationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (_$data.containsKey('product_id') !=
        other._$data.containsKey('product_id')) {
      return false;
    }
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$color_id = color_id;
    final lOther$color_id = other.color_id;
    if (_$data.containsKey('color_id') !=
        other._$data.containsKey('color_id')) {
      return false;
    }
    if (l$color_id != lOther$color_id) {
      return false;
    }
    final l$size_id = size_id;
    final lOther$size_id = other.size_id;
    if (_$data.containsKey('size_id') != other._$data.containsKey('size_id')) {
      return false;
    }
    if (l$size_id != lOther$size_id) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (_$data.containsKey('quantity') !=
        other._$data.containsKey('quantity')) {
      return false;
    }
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$$_count = $_count;
    final lOther$$_count = other.$_count;
    if (_$data.containsKey('_count') != other._$data.containsKey('_count')) {
      return false;
    }
    if (l$$_count != lOther$$_count) {
      return false;
    }
    final l$$_avg = $_avg;
    final lOther$$_avg = other.$_avg;
    if (_$data.containsKey('_avg') != other._$data.containsKey('_avg')) {
      return false;
    }
    if (l$$_avg != lOther$$_avg) {
      return false;
    }
    final l$$_max = $_max;
    final lOther$$_max = other.$_max;
    if (_$data.containsKey('_max') != other._$data.containsKey('_max')) {
      return false;
    }
    if (l$$_max != lOther$$_max) {
      return false;
    }
    final l$$_min = $_min;
    final lOther$$_min = other.$_min;
    if (_$data.containsKey('_min') != other._$data.containsKey('_min')) {
      return false;
    }
    if (l$$_min != lOther$$_min) {
      return false;
    }
    final l$$_sum = $_sum;
    final lOther$$_sum = other.$_sum;
    if (_$data.containsKey('_sum') != other._$data.containsKey('_sum')) {
      return false;
    }
    if (l$$_sum != lOther$$_sum) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$product_id = product_id;
    final l$color_id = color_id;
    final l$size_id = size_id;
    final l$quantity = quantity;
    final l$$_count = $_count;
    final l$$_avg = $_avg;
    final l$$_max = $_max;
    final l$$_min = $_min;
    final l$$_sum = $_sum;
    return Object.hashAll([
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('color_id') ? l$color_id : const {},
      _$data.containsKey('size_id') ? l$size_id : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('_count') ? l$$_count : const {},
      _$data.containsKey('_avg') ? l$$_avg : const {},
      _$data.containsKey('_max') ? l$$_max : const {},
      _$data.containsKey('_min') ? l$$_min : const {},
      _$data.containsKey('_sum') ? l$$_sum : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductModelOrderByWithAggregationInput<TRes> {
  factory CopyWith$Input$ProductModelOrderByWithAggregationInput(
    Input$ProductModelOrderByWithAggregationInput instance,
    TRes Function(Input$ProductModelOrderByWithAggregationInput) then,
  ) = _CopyWithImpl$Input$ProductModelOrderByWithAggregationInput;

  factory CopyWith$Input$ProductModelOrderByWithAggregationInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductModelOrderByWithAggregationInput;

  TRes call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? color_id,
    Enum$SortOrder? size_id,
    Enum$SortOrder? quantity,
    Input$ProductModelCountOrderByAggregateInput? $_count,
    Input$ProductModelAvgOrderByAggregateInput? $_avg,
    Input$ProductModelMaxOrderByAggregateInput? $_max,
    Input$ProductModelMinOrderByAggregateInput? $_min,
    Input$ProductModelSumOrderByAggregateInput? $_sum,
  });
  CopyWith$Input$ProductModelCountOrderByAggregateInput<TRes> get $_count;
  CopyWith$Input$ProductModelAvgOrderByAggregateInput<TRes> get $_avg;
  CopyWith$Input$ProductModelMaxOrderByAggregateInput<TRes> get $_max;
  CopyWith$Input$ProductModelMinOrderByAggregateInput<TRes> get $_min;
  CopyWith$Input$ProductModelSumOrderByAggregateInput<TRes> get $_sum;
}

class _CopyWithImpl$Input$ProductModelOrderByWithAggregationInput<TRes>
    implements CopyWith$Input$ProductModelOrderByWithAggregationInput<TRes> {
  _CopyWithImpl$Input$ProductModelOrderByWithAggregationInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelOrderByWithAggregationInput _instance;

  final TRes Function(Input$ProductModelOrderByWithAggregationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? product_id = _undefined,
    Object? color_id = _undefined,
    Object? size_id = _undefined,
    Object? quantity = _undefined,
    Object? $_count = _undefined,
    Object? $_avg = _undefined,
    Object? $_max = _undefined,
    Object? $_min = _undefined,
    Object? $_sum = _undefined,
  }) =>
      _then(Input$ProductModelOrderByWithAggregationInput._({
        ..._instance._$data,
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (color_id != _undefined) 'color_id': (color_id as Enum$SortOrder?),
        if (size_id != _undefined) 'size_id': (size_id as Enum$SortOrder?),
        if (quantity != _undefined) 'quantity': (quantity as Enum$SortOrder?),
        if ($_count != _undefined)
          '_count': ($_count as Input$ProductModelCountOrderByAggregateInput?),
        if ($_avg != _undefined)
          '_avg': ($_avg as Input$ProductModelAvgOrderByAggregateInput?),
        if ($_max != _undefined)
          '_max': ($_max as Input$ProductModelMaxOrderByAggregateInput?),
        if ($_min != _undefined)
          '_min': ($_min as Input$ProductModelMinOrderByAggregateInput?),
        if ($_sum != _undefined)
          '_sum': ($_sum as Input$ProductModelSumOrderByAggregateInput?),
      }));
  CopyWith$Input$ProductModelCountOrderByAggregateInput<TRes> get $_count {
    final local$$_count = _instance.$_count;
    return local$$_count == null
        ? CopyWith$Input$ProductModelCountOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductModelCountOrderByAggregateInput(
            local$$_count, (e) => call($_count: e));
  }

  CopyWith$Input$ProductModelAvgOrderByAggregateInput<TRes> get $_avg {
    final local$$_avg = _instance.$_avg;
    return local$$_avg == null
        ? CopyWith$Input$ProductModelAvgOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductModelAvgOrderByAggregateInput(
            local$$_avg, (e) => call($_avg: e));
  }

  CopyWith$Input$ProductModelMaxOrderByAggregateInput<TRes> get $_max {
    final local$$_max = _instance.$_max;
    return local$$_max == null
        ? CopyWith$Input$ProductModelMaxOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductModelMaxOrderByAggregateInput(
            local$$_max, (e) => call($_max: e));
  }

  CopyWith$Input$ProductModelMinOrderByAggregateInput<TRes> get $_min {
    final local$$_min = _instance.$_min;
    return local$$_min == null
        ? CopyWith$Input$ProductModelMinOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductModelMinOrderByAggregateInput(
            local$$_min, (e) => call($_min: e));
  }

  CopyWith$Input$ProductModelSumOrderByAggregateInput<TRes> get $_sum {
    final local$$_sum = _instance.$_sum;
    return local$$_sum == null
        ? CopyWith$Input$ProductModelSumOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductModelSumOrderByAggregateInput(
            local$$_sum, (e) => call($_sum: e));
  }
}

class _CopyWithStubImpl$Input$ProductModelOrderByWithAggregationInput<TRes>
    implements CopyWith$Input$ProductModelOrderByWithAggregationInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelOrderByWithAggregationInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? color_id,
    Enum$SortOrder? size_id,
    Enum$SortOrder? quantity,
    Input$ProductModelCountOrderByAggregateInput? $_count,
    Input$ProductModelAvgOrderByAggregateInput? $_avg,
    Input$ProductModelMaxOrderByAggregateInput? $_max,
    Input$ProductModelMinOrderByAggregateInput? $_min,
    Input$ProductModelSumOrderByAggregateInput? $_sum,
  }) =>
      _res;
  CopyWith$Input$ProductModelCountOrderByAggregateInput<TRes> get $_count =>
      CopyWith$Input$ProductModelCountOrderByAggregateInput.stub(_res);
  CopyWith$Input$ProductModelAvgOrderByAggregateInput<TRes> get $_avg =>
      CopyWith$Input$ProductModelAvgOrderByAggregateInput.stub(_res);
  CopyWith$Input$ProductModelMaxOrderByAggregateInput<TRes> get $_max =>
      CopyWith$Input$ProductModelMaxOrderByAggregateInput.stub(_res);
  CopyWith$Input$ProductModelMinOrderByAggregateInput<TRes> get $_min =>
      CopyWith$Input$ProductModelMinOrderByAggregateInput.stub(_res);
  CopyWith$Input$ProductModelSumOrderByAggregateInput<TRes> get $_sum =>
      CopyWith$Input$ProductModelSumOrderByAggregateInput.stub(_res);
}

class Input$ProductModelCountOrderByAggregateInput {
  factory Input$ProductModelCountOrderByAggregateInput({
    Enum$SortOrder? product_id,
    Enum$SortOrder? color_id,
    Enum$SortOrder? size_id,
    Enum$SortOrder? quantity,
  }) =>
      Input$ProductModelCountOrderByAggregateInput._({
        if (product_id != null) r'product_id': product_id,
        if (color_id != null) r'color_id': color_id,
        if (size_id != null) r'size_id': size_id,
        if (quantity != null) r'quantity': quantity,
      });

  Input$ProductModelCountOrderByAggregateInput._(this._$data);

  factory Input$ProductModelCountOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : fromJson$Enum$SortOrder((l$product_id as String));
    }
    if (data.containsKey('color_id')) {
      final l$color_id = data['color_id'];
      result$data['color_id'] = l$color_id == null
          ? null
          : fromJson$Enum$SortOrder((l$color_id as String));
    }
    if (data.containsKey('size_id')) {
      final l$size_id = data['size_id'];
      result$data['size_id'] = l$size_id == null
          ? null
          : fromJson$Enum$SortOrder((l$size_id as String));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : fromJson$Enum$SortOrder((l$quantity as String));
    }
    return Input$ProductModelCountOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get color_id => (_$data['color_id'] as Enum$SortOrder?);
  Enum$SortOrder? get size_id => (_$data['size_id'] as Enum$SortOrder?);
  Enum$SortOrder? get quantity => (_$data['quantity'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] =
          l$product_id == null ? null : toJson$Enum$SortOrder(l$product_id);
    }
    if (_$data.containsKey('color_id')) {
      final l$color_id = color_id;
      result$data['color_id'] =
          l$color_id == null ? null : toJson$Enum$SortOrder(l$color_id);
    }
    if (_$data.containsKey('size_id')) {
      final l$size_id = size_id;
      result$data['size_id'] =
          l$size_id == null ? null : toJson$Enum$SortOrder(l$size_id);
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] =
          l$quantity == null ? null : toJson$Enum$SortOrder(l$quantity);
    }
    return result$data;
  }

  CopyWith$Input$ProductModelCountOrderByAggregateInput<
          Input$ProductModelCountOrderByAggregateInput>
      get copyWith => CopyWith$Input$ProductModelCountOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelCountOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (_$data.containsKey('product_id') !=
        other._$data.containsKey('product_id')) {
      return false;
    }
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$color_id = color_id;
    final lOther$color_id = other.color_id;
    if (_$data.containsKey('color_id') !=
        other._$data.containsKey('color_id')) {
      return false;
    }
    if (l$color_id != lOther$color_id) {
      return false;
    }
    final l$size_id = size_id;
    final lOther$size_id = other.size_id;
    if (_$data.containsKey('size_id') != other._$data.containsKey('size_id')) {
      return false;
    }
    if (l$size_id != lOther$size_id) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (_$data.containsKey('quantity') !=
        other._$data.containsKey('quantity')) {
      return false;
    }
    if (l$quantity != lOther$quantity) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$product_id = product_id;
    final l$color_id = color_id;
    final l$size_id = size_id;
    final l$quantity = quantity;
    return Object.hashAll([
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('color_id') ? l$color_id : const {},
      _$data.containsKey('size_id') ? l$size_id : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductModelCountOrderByAggregateInput<TRes> {
  factory CopyWith$Input$ProductModelCountOrderByAggregateInput(
    Input$ProductModelCountOrderByAggregateInput instance,
    TRes Function(Input$ProductModelCountOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$ProductModelCountOrderByAggregateInput;

  factory CopyWith$Input$ProductModelCountOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductModelCountOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? color_id,
    Enum$SortOrder? size_id,
    Enum$SortOrder? quantity,
  });
}

class _CopyWithImpl$Input$ProductModelCountOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductModelCountOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$ProductModelCountOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelCountOrderByAggregateInput _instance;

  final TRes Function(Input$ProductModelCountOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? product_id = _undefined,
    Object? color_id = _undefined,
    Object? size_id = _undefined,
    Object? quantity = _undefined,
  }) =>
      _then(Input$ProductModelCountOrderByAggregateInput._({
        ..._instance._$data,
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (color_id != _undefined) 'color_id': (color_id as Enum$SortOrder?),
        if (size_id != _undefined) 'size_id': (size_id as Enum$SortOrder?),
        if (quantity != _undefined) 'quantity': (quantity as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$ProductModelCountOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductModelCountOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelCountOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? color_id,
    Enum$SortOrder? size_id,
    Enum$SortOrder? quantity,
  }) =>
      _res;
}

class Input$ProductModelAvgOrderByAggregateInput {
  factory Input$ProductModelAvgOrderByAggregateInput({
    Enum$SortOrder? product_id,
    Enum$SortOrder? color_id,
    Enum$SortOrder? size_id,
    Enum$SortOrder? quantity,
  }) =>
      Input$ProductModelAvgOrderByAggregateInput._({
        if (product_id != null) r'product_id': product_id,
        if (color_id != null) r'color_id': color_id,
        if (size_id != null) r'size_id': size_id,
        if (quantity != null) r'quantity': quantity,
      });

  Input$ProductModelAvgOrderByAggregateInput._(this._$data);

  factory Input$ProductModelAvgOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : fromJson$Enum$SortOrder((l$product_id as String));
    }
    if (data.containsKey('color_id')) {
      final l$color_id = data['color_id'];
      result$data['color_id'] = l$color_id == null
          ? null
          : fromJson$Enum$SortOrder((l$color_id as String));
    }
    if (data.containsKey('size_id')) {
      final l$size_id = data['size_id'];
      result$data['size_id'] = l$size_id == null
          ? null
          : fromJson$Enum$SortOrder((l$size_id as String));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : fromJson$Enum$SortOrder((l$quantity as String));
    }
    return Input$ProductModelAvgOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get color_id => (_$data['color_id'] as Enum$SortOrder?);
  Enum$SortOrder? get size_id => (_$data['size_id'] as Enum$SortOrder?);
  Enum$SortOrder? get quantity => (_$data['quantity'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] =
          l$product_id == null ? null : toJson$Enum$SortOrder(l$product_id);
    }
    if (_$data.containsKey('color_id')) {
      final l$color_id = color_id;
      result$data['color_id'] =
          l$color_id == null ? null : toJson$Enum$SortOrder(l$color_id);
    }
    if (_$data.containsKey('size_id')) {
      final l$size_id = size_id;
      result$data['size_id'] =
          l$size_id == null ? null : toJson$Enum$SortOrder(l$size_id);
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] =
          l$quantity == null ? null : toJson$Enum$SortOrder(l$quantity);
    }
    return result$data;
  }

  CopyWith$Input$ProductModelAvgOrderByAggregateInput<
          Input$ProductModelAvgOrderByAggregateInput>
      get copyWith => CopyWith$Input$ProductModelAvgOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelAvgOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (_$data.containsKey('product_id') !=
        other._$data.containsKey('product_id')) {
      return false;
    }
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$color_id = color_id;
    final lOther$color_id = other.color_id;
    if (_$data.containsKey('color_id') !=
        other._$data.containsKey('color_id')) {
      return false;
    }
    if (l$color_id != lOther$color_id) {
      return false;
    }
    final l$size_id = size_id;
    final lOther$size_id = other.size_id;
    if (_$data.containsKey('size_id') != other._$data.containsKey('size_id')) {
      return false;
    }
    if (l$size_id != lOther$size_id) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (_$data.containsKey('quantity') !=
        other._$data.containsKey('quantity')) {
      return false;
    }
    if (l$quantity != lOther$quantity) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$product_id = product_id;
    final l$color_id = color_id;
    final l$size_id = size_id;
    final l$quantity = quantity;
    return Object.hashAll([
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('color_id') ? l$color_id : const {},
      _$data.containsKey('size_id') ? l$size_id : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductModelAvgOrderByAggregateInput<TRes> {
  factory CopyWith$Input$ProductModelAvgOrderByAggregateInput(
    Input$ProductModelAvgOrderByAggregateInput instance,
    TRes Function(Input$ProductModelAvgOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$ProductModelAvgOrderByAggregateInput;

  factory CopyWith$Input$ProductModelAvgOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductModelAvgOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? color_id,
    Enum$SortOrder? size_id,
    Enum$SortOrder? quantity,
  });
}

class _CopyWithImpl$Input$ProductModelAvgOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductModelAvgOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$ProductModelAvgOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelAvgOrderByAggregateInput _instance;

  final TRes Function(Input$ProductModelAvgOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? product_id = _undefined,
    Object? color_id = _undefined,
    Object? size_id = _undefined,
    Object? quantity = _undefined,
  }) =>
      _then(Input$ProductModelAvgOrderByAggregateInput._({
        ..._instance._$data,
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (color_id != _undefined) 'color_id': (color_id as Enum$SortOrder?),
        if (size_id != _undefined) 'size_id': (size_id as Enum$SortOrder?),
        if (quantity != _undefined) 'quantity': (quantity as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$ProductModelAvgOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductModelAvgOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelAvgOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? color_id,
    Enum$SortOrder? size_id,
    Enum$SortOrder? quantity,
  }) =>
      _res;
}

class Input$ProductModelMaxOrderByAggregateInput {
  factory Input$ProductModelMaxOrderByAggregateInput({
    Enum$SortOrder? product_id,
    Enum$SortOrder? color_id,
    Enum$SortOrder? size_id,
    Enum$SortOrder? quantity,
  }) =>
      Input$ProductModelMaxOrderByAggregateInput._({
        if (product_id != null) r'product_id': product_id,
        if (color_id != null) r'color_id': color_id,
        if (size_id != null) r'size_id': size_id,
        if (quantity != null) r'quantity': quantity,
      });

  Input$ProductModelMaxOrderByAggregateInput._(this._$data);

  factory Input$ProductModelMaxOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : fromJson$Enum$SortOrder((l$product_id as String));
    }
    if (data.containsKey('color_id')) {
      final l$color_id = data['color_id'];
      result$data['color_id'] = l$color_id == null
          ? null
          : fromJson$Enum$SortOrder((l$color_id as String));
    }
    if (data.containsKey('size_id')) {
      final l$size_id = data['size_id'];
      result$data['size_id'] = l$size_id == null
          ? null
          : fromJson$Enum$SortOrder((l$size_id as String));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : fromJson$Enum$SortOrder((l$quantity as String));
    }
    return Input$ProductModelMaxOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get color_id => (_$data['color_id'] as Enum$SortOrder?);
  Enum$SortOrder? get size_id => (_$data['size_id'] as Enum$SortOrder?);
  Enum$SortOrder? get quantity => (_$data['quantity'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] =
          l$product_id == null ? null : toJson$Enum$SortOrder(l$product_id);
    }
    if (_$data.containsKey('color_id')) {
      final l$color_id = color_id;
      result$data['color_id'] =
          l$color_id == null ? null : toJson$Enum$SortOrder(l$color_id);
    }
    if (_$data.containsKey('size_id')) {
      final l$size_id = size_id;
      result$data['size_id'] =
          l$size_id == null ? null : toJson$Enum$SortOrder(l$size_id);
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] =
          l$quantity == null ? null : toJson$Enum$SortOrder(l$quantity);
    }
    return result$data;
  }

  CopyWith$Input$ProductModelMaxOrderByAggregateInput<
          Input$ProductModelMaxOrderByAggregateInput>
      get copyWith => CopyWith$Input$ProductModelMaxOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelMaxOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (_$data.containsKey('product_id') !=
        other._$data.containsKey('product_id')) {
      return false;
    }
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$color_id = color_id;
    final lOther$color_id = other.color_id;
    if (_$data.containsKey('color_id') !=
        other._$data.containsKey('color_id')) {
      return false;
    }
    if (l$color_id != lOther$color_id) {
      return false;
    }
    final l$size_id = size_id;
    final lOther$size_id = other.size_id;
    if (_$data.containsKey('size_id') != other._$data.containsKey('size_id')) {
      return false;
    }
    if (l$size_id != lOther$size_id) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (_$data.containsKey('quantity') !=
        other._$data.containsKey('quantity')) {
      return false;
    }
    if (l$quantity != lOther$quantity) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$product_id = product_id;
    final l$color_id = color_id;
    final l$size_id = size_id;
    final l$quantity = quantity;
    return Object.hashAll([
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('color_id') ? l$color_id : const {},
      _$data.containsKey('size_id') ? l$size_id : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductModelMaxOrderByAggregateInput<TRes> {
  factory CopyWith$Input$ProductModelMaxOrderByAggregateInput(
    Input$ProductModelMaxOrderByAggregateInput instance,
    TRes Function(Input$ProductModelMaxOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$ProductModelMaxOrderByAggregateInput;

  factory CopyWith$Input$ProductModelMaxOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductModelMaxOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? color_id,
    Enum$SortOrder? size_id,
    Enum$SortOrder? quantity,
  });
}

class _CopyWithImpl$Input$ProductModelMaxOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductModelMaxOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$ProductModelMaxOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelMaxOrderByAggregateInput _instance;

  final TRes Function(Input$ProductModelMaxOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? product_id = _undefined,
    Object? color_id = _undefined,
    Object? size_id = _undefined,
    Object? quantity = _undefined,
  }) =>
      _then(Input$ProductModelMaxOrderByAggregateInput._({
        ..._instance._$data,
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (color_id != _undefined) 'color_id': (color_id as Enum$SortOrder?),
        if (size_id != _undefined) 'size_id': (size_id as Enum$SortOrder?),
        if (quantity != _undefined) 'quantity': (quantity as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$ProductModelMaxOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductModelMaxOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelMaxOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? color_id,
    Enum$SortOrder? size_id,
    Enum$SortOrder? quantity,
  }) =>
      _res;
}

class Input$ProductModelMinOrderByAggregateInput {
  factory Input$ProductModelMinOrderByAggregateInput({
    Enum$SortOrder? product_id,
    Enum$SortOrder? color_id,
    Enum$SortOrder? size_id,
    Enum$SortOrder? quantity,
  }) =>
      Input$ProductModelMinOrderByAggregateInput._({
        if (product_id != null) r'product_id': product_id,
        if (color_id != null) r'color_id': color_id,
        if (size_id != null) r'size_id': size_id,
        if (quantity != null) r'quantity': quantity,
      });

  Input$ProductModelMinOrderByAggregateInput._(this._$data);

  factory Input$ProductModelMinOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : fromJson$Enum$SortOrder((l$product_id as String));
    }
    if (data.containsKey('color_id')) {
      final l$color_id = data['color_id'];
      result$data['color_id'] = l$color_id == null
          ? null
          : fromJson$Enum$SortOrder((l$color_id as String));
    }
    if (data.containsKey('size_id')) {
      final l$size_id = data['size_id'];
      result$data['size_id'] = l$size_id == null
          ? null
          : fromJson$Enum$SortOrder((l$size_id as String));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : fromJson$Enum$SortOrder((l$quantity as String));
    }
    return Input$ProductModelMinOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get color_id => (_$data['color_id'] as Enum$SortOrder?);
  Enum$SortOrder? get size_id => (_$data['size_id'] as Enum$SortOrder?);
  Enum$SortOrder? get quantity => (_$data['quantity'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] =
          l$product_id == null ? null : toJson$Enum$SortOrder(l$product_id);
    }
    if (_$data.containsKey('color_id')) {
      final l$color_id = color_id;
      result$data['color_id'] =
          l$color_id == null ? null : toJson$Enum$SortOrder(l$color_id);
    }
    if (_$data.containsKey('size_id')) {
      final l$size_id = size_id;
      result$data['size_id'] =
          l$size_id == null ? null : toJson$Enum$SortOrder(l$size_id);
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] =
          l$quantity == null ? null : toJson$Enum$SortOrder(l$quantity);
    }
    return result$data;
  }

  CopyWith$Input$ProductModelMinOrderByAggregateInput<
          Input$ProductModelMinOrderByAggregateInput>
      get copyWith => CopyWith$Input$ProductModelMinOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelMinOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (_$data.containsKey('product_id') !=
        other._$data.containsKey('product_id')) {
      return false;
    }
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$color_id = color_id;
    final lOther$color_id = other.color_id;
    if (_$data.containsKey('color_id') !=
        other._$data.containsKey('color_id')) {
      return false;
    }
    if (l$color_id != lOther$color_id) {
      return false;
    }
    final l$size_id = size_id;
    final lOther$size_id = other.size_id;
    if (_$data.containsKey('size_id') != other._$data.containsKey('size_id')) {
      return false;
    }
    if (l$size_id != lOther$size_id) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (_$data.containsKey('quantity') !=
        other._$data.containsKey('quantity')) {
      return false;
    }
    if (l$quantity != lOther$quantity) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$product_id = product_id;
    final l$color_id = color_id;
    final l$size_id = size_id;
    final l$quantity = quantity;
    return Object.hashAll([
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('color_id') ? l$color_id : const {},
      _$data.containsKey('size_id') ? l$size_id : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductModelMinOrderByAggregateInput<TRes> {
  factory CopyWith$Input$ProductModelMinOrderByAggregateInput(
    Input$ProductModelMinOrderByAggregateInput instance,
    TRes Function(Input$ProductModelMinOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$ProductModelMinOrderByAggregateInput;

  factory CopyWith$Input$ProductModelMinOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductModelMinOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? color_id,
    Enum$SortOrder? size_id,
    Enum$SortOrder? quantity,
  });
}

class _CopyWithImpl$Input$ProductModelMinOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductModelMinOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$ProductModelMinOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelMinOrderByAggregateInput _instance;

  final TRes Function(Input$ProductModelMinOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? product_id = _undefined,
    Object? color_id = _undefined,
    Object? size_id = _undefined,
    Object? quantity = _undefined,
  }) =>
      _then(Input$ProductModelMinOrderByAggregateInput._({
        ..._instance._$data,
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (color_id != _undefined) 'color_id': (color_id as Enum$SortOrder?),
        if (size_id != _undefined) 'size_id': (size_id as Enum$SortOrder?),
        if (quantity != _undefined) 'quantity': (quantity as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$ProductModelMinOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductModelMinOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelMinOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? color_id,
    Enum$SortOrder? size_id,
    Enum$SortOrder? quantity,
  }) =>
      _res;
}

class Input$ProductModelSumOrderByAggregateInput {
  factory Input$ProductModelSumOrderByAggregateInput({
    Enum$SortOrder? product_id,
    Enum$SortOrder? color_id,
    Enum$SortOrder? size_id,
    Enum$SortOrder? quantity,
  }) =>
      Input$ProductModelSumOrderByAggregateInput._({
        if (product_id != null) r'product_id': product_id,
        if (color_id != null) r'color_id': color_id,
        if (size_id != null) r'size_id': size_id,
        if (quantity != null) r'quantity': quantity,
      });

  Input$ProductModelSumOrderByAggregateInput._(this._$data);

  factory Input$ProductModelSumOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : fromJson$Enum$SortOrder((l$product_id as String));
    }
    if (data.containsKey('color_id')) {
      final l$color_id = data['color_id'];
      result$data['color_id'] = l$color_id == null
          ? null
          : fromJson$Enum$SortOrder((l$color_id as String));
    }
    if (data.containsKey('size_id')) {
      final l$size_id = data['size_id'];
      result$data['size_id'] = l$size_id == null
          ? null
          : fromJson$Enum$SortOrder((l$size_id as String));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : fromJson$Enum$SortOrder((l$quantity as String));
    }
    return Input$ProductModelSumOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get color_id => (_$data['color_id'] as Enum$SortOrder?);
  Enum$SortOrder? get size_id => (_$data['size_id'] as Enum$SortOrder?);
  Enum$SortOrder? get quantity => (_$data['quantity'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] =
          l$product_id == null ? null : toJson$Enum$SortOrder(l$product_id);
    }
    if (_$data.containsKey('color_id')) {
      final l$color_id = color_id;
      result$data['color_id'] =
          l$color_id == null ? null : toJson$Enum$SortOrder(l$color_id);
    }
    if (_$data.containsKey('size_id')) {
      final l$size_id = size_id;
      result$data['size_id'] =
          l$size_id == null ? null : toJson$Enum$SortOrder(l$size_id);
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] =
          l$quantity == null ? null : toJson$Enum$SortOrder(l$quantity);
    }
    return result$data;
  }

  CopyWith$Input$ProductModelSumOrderByAggregateInput<
          Input$ProductModelSumOrderByAggregateInput>
      get copyWith => CopyWith$Input$ProductModelSumOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelSumOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (_$data.containsKey('product_id') !=
        other._$data.containsKey('product_id')) {
      return false;
    }
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$color_id = color_id;
    final lOther$color_id = other.color_id;
    if (_$data.containsKey('color_id') !=
        other._$data.containsKey('color_id')) {
      return false;
    }
    if (l$color_id != lOther$color_id) {
      return false;
    }
    final l$size_id = size_id;
    final lOther$size_id = other.size_id;
    if (_$data.containsKey('size_id') != other._$data.containsKey('size_id')) {
      return false;
    }
    if (l$size_id != lOther$size_id) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (_$data.containsKey('quantity') !=
        other._$data.containsKey('quantity')) {
      return false;
    }
    if (l$quantity != lOther$quantity) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$product_id = product_id;
    final l$color_id = color_id;
    final l$size_id = size_id;
    final l$quantity = quantity;
    return Object.hashAll([
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('color_id') ? l$color_id : const {},
      _$data.containsKey('size_id') ? l$size_id : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductModelSumOrderByAggregateInput<TRes> {
  factory CopyWith$Input$ProductModelSumOrderByAggregateInput(
    Input$ProductModelSumOrderByAggregateInput instance,
    TRes Function(Input$ProductModelSumOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$ProductModelSumOrderByAggregateInput;

  factory CopyWith$Input$ProductModelSumOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductModelSumOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? color_id,
    Enum$SortOrder? size_id,
    Enum$SortOrder? quantity,
  });
}

class _CopyWithImpl$Input$ProductModelSumOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductModelSumOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$ProductModelSumOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelSumOrderByAggregateInput _instance;

  final TRes Function(Input$ProductModelSumOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? product_id = _undefined,
    Object? color_id = _undefined,
    Object? size_id = _undefined,
    Object? quantity = _undefined,
  }) =>
      _then(Input$ProductModelSumOrderByAggregateInput._({
        ..._instance._$data,
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (color_id != _undefined) 'color_id': (color_id as Enum$SortOrder?),
        if (size_id != _undefined) 'size_id': (size_id as Enum$SortOrder?),
        if (quantity != _undefined) 'quantity': (quantity as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$ProductModelSumOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductModelSumOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelSumOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? color_id,
    Enum$SortOrder? size_id,
    Enum$SortOrder? quantity,
  }) =>
      _res;
}

class Input$ProductModelScalarWhereWithAggregatesInput {
  factory Input$ProductModelScalarWhereWithAggregatesInput({
    List<Input$ProductModelScalarWhereWithAggregatesInput>? AND,
    List<Input$ProductModelScalarWhereWithAggregatesInput>? OR,
    List<Input$ProductModelScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? product_id,
    Input$IntWithAggregatesFilter? color_id,
    Input$IntWithAggregatesFilter? size_id,
    Input$IntWithAggregatesFilter? quantity,
  }) =>
      Input$ProductModelScalarWhereWithAggregatesInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (product_id != null) r'product_id': product_id,
        if (color_id != null) r'color_id': color_id,
        if (size_id != null) r'size_id': size_id,
        if (quantity != null) r'quantity': quantity,
      });

  Input$ProductModelScalarWhereWithAggregatesInput._(this._$data);

  factory Input$ProductModelScalarWhereWithAggregatesInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) =>
              Input$ProductModelScalarWhereWithAggregatesInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) =>
              Input$ProductModelScalarWhereWithAggregatesInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) =>
              Input$ProductModelScalarWhereWithAggregatesInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : Input$IntWithAggregatesFilter.fromJson(
              (l$product_id as Map<String, dynamic>));
    }
    if (data.containsKey('color_id')) {
      final l$color_id = data['color_id'];
      result$data['color_id'] = l$color_id == null
          ? null
          : Input$IntWithAggregatesFilter.fromJson(
              (l$color_id as Map<String, dynamic>));
    }
    if (data.containsKey('size_id')) {
      final l$size_id = data['size_id'];
      result$data['size_id'] = l$size_id == null
          ? null
          : Input$IntWithAggregatesFilter.fromJson(
              (l$size_id as Map<String, dynamic>));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : Input$IntWithAggregatesFilter.fromJson(
              (l$quantity as Map<String, dynamic>));
    }
    return Input$ProductModelScalarWhereWithAggregatesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ProductModelScalarWhereWithAggregatesInput>? get AND =>
      (_$data['AND']
          as List<Input$ProductModelScalarWhereWithAggregatesInput>?);
  List<Input$ProductModelScalarWhereWithAggregatesInput>? get OR =>
      (_$data['OR'] as List<Input$ProductModelScalarWhereWithAggregatesInput>?);
  List<Input$ProductModelScalarWhereWithAggregatesInput>? get NOT =>
      (_$data['NOT']
          as List<Input$ProductModelScalarWhereWithAggregatesInput>?);
  Input$IntWithAggregatesFilter? get product_id =>
      (_$data['product_id'] as Input$IntWithAggregatesFilter?);
  Input$IntWithAggregatesFilter? get color_id =>
      (_$data['color_id'] as Input$IntWithAggregatesFilter?);
  Input$IntWithAggregatesFilter? get size_id =>
      (_$data['size_id'] as Input$IntWithAggregatesFilter?);
  Input$IntWithAggregatesFilter? get quantity =>
      (_$data['quantity'] as Input$IntWithAggregatesFilter?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('AND')) {
      final l$AND = AND;
      result$data['AND'] = l$AND?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('OR')) {
      final l$OR = OR;
      result$data['OR'] = l$OR?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('NOT')) {
      final l$NOT = NOT;
      result$data['NOT'] = l$NOT?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] = l$product_id?.toJson();
    }
    if (_$data.containsKey('color_id')) {
      final l$color_id = color_id;
      result$data['color_id'] = l$color_id?.toJson();
    }
    if (_$data.containsKey('size_id')) {
      final l$size_id = size_id;
      result$data['size_id'] = l$size_id?.toJson();
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] = l$quantity?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductModelScalarWhereWithAggregatesInput<
          Input$ProductModelScalarWhereWithAggregatesInput>
      get copyWith => CopyWith$Input$ProductModelScalarWhereWithAggregatesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelScalarWhereWithAggregatesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$AND = AND;
    final lOther$AND = other.AND;
    if (_$data.containsKey('AND') != other._$data.containsKey('AND')) {
      return false;
    }
    if (l$AND != null && lOther$AND != null) {
      if (l$AND.length != lOther$AND.length) {
        return false;
      }
      for (int i = 0; i < l$AND.length; i++) {
        final l$AND$entry = l$AND[i];
        final lOther$AND$entry = lOther$AND[i];
        if (l$AND$entry != lOther$AND$entry) {
          return false;
        }
      }
    } else if (l$AND != lOther$AND) {
      return false;
    }
    final l$OR = OR;
    final lOther$OR = other.OR;
    if (_$data.containsKey('OR') != other._$data.containsKey('OR')) {
      return false;
    }
    if (l$OR != null && lOther$OR != null) {
      if (l$OR.length != lOther$OR.length) {
        return false;
      }
      for (int i = 0; i < l$OR.length; i++) {
        final l$OR$entry = l$OR[i];
        final lOther$OR$entry = lOther$OR[i];
        if (l$OR$entry != lOther$OR$entry) {
          return false;
        }
      }
    } else if (l$OR != lOther$OR) {
      return false;
    }
    final l$NOT = NOT;
    final lOther$NOT = other.NOT;
    if (_$data.containsKey('NOT') != other._$data.containsKey('NOT')) {
      return false;
    }
    if (l$NOT != null && lOther$NOT != null) {
      if (l$NOT.length != lOther$NOT.length) {
        return false;
      }
      for (int i = 0; i < l$NOT.length; i++) {
        final l$NOT$entry = l$NOT[i];
        final lOther$NOT$entry = lOther$NOT[i];
        if (l$NOT$entry != lOther$NOT$entry) {
          return false;
        }
      }
    } else if (l$NOT != lOther$NOT) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (_$data.containsKey('product_id') !=
        other._$data.containsKey('product_id')) {
      return false;
    }
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$color_id = color_id;
    final lOther$color_id = other.color_id;
    if (_$data.containsKey('color_id') !=
        other._$data.containsKey('color_id')) {
      return false;
    }
    if (l$color_id != lOther$color_id) {
      return false;
    }
    final l$size_id = size_id;
    final lOther$size_id = other.size_id;
    if (_$data.containsKey('size_id') != other._$data.containsKey('size_id')) {
      return false;
    }
    if (l$size_id != lOther$size_id) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (_$data.containsKey('quantity') !=
        other._$data.containsKey('quantity')) {
      return false;
    }
    if (l$quantity != lOther$quantity) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$AND = AND;
    final l$OR = OR;
    final l$NOT = NOT;
    final l$product_id = product_id;
    final l$color_id = color_id;
    final l$size_id = size_id;
    final l$quantity = quantity;
    return Object.hashAll([
      _$data.containsKey('AND')
          ? l$AND == null
              ? null
              : Object.hashAll(l$AND.map((v) => v))
          : const {},
      _$data.containsKey('OR')
          ? l$OR == null
              ? null
              : Object.hashAll(l$OR.map((v) => v))
          : const {},
      _$data.containsKey('NOT')
          ? l$NOT == null
              ? null
              : Object.hashAll(l$NOT.map((v) => v))
          : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('color_id') ? l$color_id : const {},
      _$data.containsKey('size_id') ? l$size_id : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductModelScalarWhereWithAggregatesInput<TRes> {
  factory CopyWith$Input$ProductModelScalarWhereWithAggregatesInput(
    Input$ProductModelScalarWhereWithAggregatesInput instance,
    TRes Function(Input$ProductModelScalarWhereWithAggregatesInput) then,
  ) = _CopyWithImpl$Input$ProductModelScalarWhereWithAggregatesInput;

  factory CopyWith$Input$ProductModelScalarWhereWithAggregatesInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductModelScalarWhereWithAggregatesInput;

  TRes call({
    List<Input$ProductModelScalarWhereWithAggregatesInput>? AND,
    List<Input$ProductModelScalarWhereWithAggregatesInput>? OR,
    List<Input$ProductModelScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? product_id,
    Input$IntWithAggregatesFilter? color_id,
    Input$IntWithAggregatesFilter? size_id,
    Input$IntWithAggregatesFilter? quantity,
  });
  TRes AND(
      Iterable<Input$ProductModelScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelScalarWhereWithAggregatesInput<
                      Input$ProductModelScalarWhereWithAggregatesInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$ProductModelScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelScalarWhereWithAggregatesInput<
                      Input$ProductModelScalarWhereWithAggregatesInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$ProductModelScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelScalarWhereWithAggregatesInput<
                      Input$ProductModelScalarWhereWithAggregatesInput>>?)
          _fn);
}

class _CopyWithImpl$Input$ProductModelScalarWhereWithAggregatesInput<TRes>
    implements CopyWith$Input$ProductModelScalarWhereWithAggregatesInput<TRes> {
  _CopyWithImpl$Input$ProductModelScalarWhereWithAggregatesInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelScalarWhereWithAggregatesInput _instance;

  final TRes Function(Input$ProductModelScalarWhereWithAggregatesInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? product_id = _undefined,
    Object? color_id = _undefined,
    Object? size_id = _undefined,
    Object? quantity = _undefined,
  }) =>
      _then(Input$ProductModelScalarWhereWithAggregatesInput._({
        ..._instance._$data,
        if (AND != _undefined)
          'AND':
              (AND as List<Input$ProductModelScalarWhereWithAggregatesInput>?),
        if (OR != _undefined)
          'OR': (OR as List<Input$ProductModelScalarWhereWithAggregatesInput>?),
        if (NOT != _undefined)
          'NOT':
              (NOT as List<Input$ProductModelScalarWhereWithAggregatesInput>?),
        if (product_id != _undefined)
          'product_id': (product_id as Input$IntWithAggregatesFilter?),
        if (color_id != _undefined)
          'color_id': (color_id as Input$IntWithAggregatesFilter?),
        if (size_id != _undefined)
          'size_id': (size_id as Input$IntWithAggregatesFilter?),
        if (quantity != _undefined)
          'quantity': (quantity as Input$IntWithAggregatesFilter?),
      }));
  TRes AND(
          Iterable<Input$ProductModelScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelScalarWhereWithAggregatesInput<
                          Input$ProductModelScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND?.map(
              (e) => CopyWith$Input$ProductModelScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes OR(
          Iterable<Input$ProductModelScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelScalarWhereWithAggregatesInput<
                          Input$ProductModelScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR?.map(
              (e) => CopyWith$Input$ProductModelScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes NOT(
          Iterable<Input$ProductModelScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelScalarWhereWithAggregatesInput<
                          Input$ProductModelScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT?.map(
              (e) => CopyWith$Input$ProductModelScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$ProductModelScalarWhereWithAggregatesInput<TRes>
    implements CopyWith$Input$ProductModelScalarWhereWithAggregatesInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelScalarWhereWithAggregatesInput(this._res);

  TRes _res;

  call({
    List<Input$ProductModelScalarWhereWithAggregatesInput>? AND,
    List<Input$ProductModelScalarWhereWithAggregatesInput>? OR,
    List<Input$ProductModelScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? product_id,
    Input$IntWithAggregatesFilter? color_id,
    Input$IntWithAggregatesFilter? size_id,
    Input$IntWithAggregatesFilter? quantity,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
}

class Input$ProductsOrderByWithAggregationInput {
  factory Input$ProductsOrderByWithAggregationInput({
    Enum$SortOrder? product_id,
    Enum$SortOrder? reference,
    Enum$SortOrder? name,
    Enum$SortOrder? buyingPrice,
    Enum$SortOrder? sellingPrice,
    Enum$SortOrder? description,
    Enum$SortOrder? picture,
    Enum$SortOrder? family_id,
    Input$ProductsCountOrderByAggregateInput? $_count,
    Input$ProductsAvgOrderByAggregateInput? $_avg,
    Input$ProductsMaxOrderByAggregateInput? $_max,
    Input$ProductsMinOrderByAggregateInput? $_min,
    Input$ProductsSumOrderByAggregateInput? $_sum,
  }) =>
      Input$ProductsOrderByWithAggregationInput._({
        if (product_id != null) r'product_id': product_id,
        if (reference != null) r'reference': reference,
        if (name != null) r'name': name,
        if (buyingPrice != null) r'buyingPrice': buyingPrice,
        if (sellingPrice != null) r'sellingPrice': sellingPrice,
        if (description != null) r'description': description,
        if (picture != null) r'picture': picture,
        if (family_id != null) r'family_id': family_id,
        if ($_count != null) r'_count': $_count,
        if ($_avg != null) r'_avg': $_avg,
        if ($_max != null) r'_max': $_max,
        if ($_min != null) r'_min': $_min,
        if ($_sum != null) r'_sum': $_sum,
      });

  Input$ProductsOrderByWithAggregationInput._(this._$data);

  factory Input$ProductsOrderByWithAggregationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : fromJson$Enum$SortOrder((l$product_id as String));
    }
    if (data.containsKey('reference')) {
      final l$reference = data['reference'];
      result$data['reference'] = l$reference == null
          ? null
          : fromJson$Enum$SortOrder((l$reference as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson$Enum$SortOrder((l$name as String));
    }
    if (data.containsKey('buyingPrice')) {
      final l$buyingPrice = data['buyingPrice'];
      result$data['buyingPrice'] = l$buyingPrice == null
          ? null
          : fromJson$Enum$SortOrder((l$buyingPrice as String));
    }
    if (data.containsKey('sellingPrice')) {
      final l$sellingPrice = data['sellingPrice'];
      result$data['sellingPrice'] = l$sellingPrice == null
          ? null
          : fromJson$Enum$SortOrder((l$sellingPrice as String));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : fromJson$Enum$SortOrder((l$description as String));
    }
    if (data.containsKey('picture')) {
      final l$picture = data['picture'];
      result$data['picture'] = l$picture == null
          ? null
          : fromJson$Enum$SortOrder((l$picture as String));
    }
    if (data.containsKey('family_id')) {
      final l$family_id = data['family_id'];
      result$data['family_id'] = l$family_id == null
          ? null
          : fromJson$Enum$SortOrder((l$family_id as String));
    }
    if (data.containsKey('_count')) {
      final l$$_count = data['_count'];
      result$data['_count'] = l$$_count == null
          ? null
          : Input$ProductsCountOrderByAggregateInput.fromJson(
              (l$$_count as Map<String, dynamic>));
    }
    if (data.containsKey('_avg')) {
      final l$$_avg = data['_avg'];
      result$data['_avg'] = l$$_avg == null
          ? null
          : Input$ProductsAvgOrderByAggregateInput.fromJson(
              (l$$_avg as Map<String, dynamic>));
    }
    if (data.containsKey('_max')) {
      final l$$_max = data['_max'];
      result$data['_max'] = l$$_max == null
          ? null
          : Input$ProductsMaxOrderByAggregateInput.fromJson(
              (l$$_max as Map<String, dynamic>));
    }
    if (data.containsKey('_min')) {
      final l$$_min = data['_min'];
      result$data['_min'] = l$$_min == null
          ? null
          : Input$ProductsMinOrderByAggregateInput.fromJson(
              (l$$_min as Map<String, dynamic>));
    }
    if (data.containsKey('_sum')) {
      final l$$_sum = data['_sum'];
      result$data['_sum'] = l$$_sum == null
          ? null
          : Input$ProductsSumOrderByAggregateInput.fromJson(
              (l$$_sum as Map<String, dynamic>));
    }
    return Input$ProductsOrderByWithAggregationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get reference => (_$data['reference'] as Enum$SortOrder?);
  Enum$SortOrder? get name => (_$data['name'] as Enum$SortOrder?);
  Enum$SortOrder? get buyingPrice => (_$data['buyingPrice'] as Enum$SortOrder?);
  Enum$SortOrder? get sellingPrice =>
      (_$data['sellingPrice'] as Enum$SortOrder?);
  Enum$SortOrder? get description => (_$data['description'] as Enum$SortOrder?);
  Enum$SortOrder? get picture => (_$data['picture'] as Enum$SortOrder?);
  Enum$SortOrder? get family_id => (_$data['family_id'] as Enum$SortOrder?);
  Input$ProductsCountOrderByAggregateInput? get $_count =>
      (_$data['_count'] as Input$ProductsCountOrderByAggregateInput?);
  Input$ProductsAvgOrderByAggregateInput? get $_avg =>
      (_$data['_avg'] as Input$ProductsAvgOrderByAggregateInput?);
  Input$ProductsMaxOrderByAggregateInput? get $_max =>
      (_$data['_max'] as Input$ProductsMaxOrderByAggregateInput?);
  Input$ProductsMinOrderByAggregateInput? get $_min =>
      (_$data['_min'] as Input$ProductsMinOrderByAggregateInput?);
  Input$ProductsSumOrderByAggregateInput? get $_sum =>
      (_$data['_sum'] as Input$ProductsSumOrderByAggregateInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] =
          l$product_id == null ? null : toJson$Enum$SortOrder(l$product_id);
    }
    if (_$data.containsKey('reference')) {
      final l$reference = reference;
      result$data['reference'] =
          l$reference == null ? null : toJson$Enum$SortOrder(l$reference);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$SortOrder(l$name);
    }
    if (_$data.containsKey('buyingPrice')) {
      final l$buyingPrice = buyingPrice;
      result$data['buyingPrice'] =
          l$buyingPrice == null ? null : toJson$Enum$SortOrder(l$buyingPrice);
    }
    if (_$data.containsKey('sellingPrice')) {
      final l$sellingPrice = sellingPrice;
      result$data['sellingPrice'] =
          l$sellingPrice == null ? null : toJson$Enum$SortOrder(l$sellingPrice);
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] =
          l$description == null ? null : toJson$Enum$SortOrder(l$description);
    }
    if (_$data.containsKey('picture')) {
      final l$picture = picture;
      result$data['picture'] =
          l$picture == null ? null : toJson$Enum$SortOrder(l$picture);
    }
    if (_$data.containsKey('family_id')) {
      final l$family_id = family_id;
      result$data['family_id'] =
          l$family_id == null ? null : toJson$Enum$SortOrder(l$family_id);
    }
    if (_$data.containsKey('_count')) {
      final l$$_count = $_count;
      result$data['_count'] = l$$_count?.toJson();
    }
    if (_$data.containsKey('_avg')) {
      final l$$_avg = $_avg;
      result$data['_avg'] = l$$_avg?.toJson();
    }
    if (_$data.containsKey('_max')) {
      final l$$_max = $_max;
      result$data['_max'] = l$$_max?.toJson();
    }
    if (_$data.containsKey('_min')) {
      final l$$_min = $_min;
      result$data['_min'] = l$$_min?.toJson();
    }
    if (_$data.containsKey('_sum')) {
      final l$$_sum = $_sum;
      result$data['_sum'] = l$$_sum?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductsOrderByWithAggregationInput<
          Input$ProductsOrderByWithAggregationInput>
      get copyWith => CopyWith$Input$ProductsOrderByWithAggregationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsOrderByWithAggregationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (_$data.containsKey('product_id') !=
        other._$data.containsKey('product_id')) {
      return false;
    }
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$reference = reference;
    final lOther$reference = other.reference;
    if (_$data.containsKey('reference') !=
        other._$data.containsKey('reference')) {
      return false;
    }
    if (l$reference != lOther$reference) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$buyingPrice = buyingPrice;
    final lOther$buyingPrice = other.buyingPrice;
    if (_$data.containsKey('buyingPrice') !=
        other._$data.containsKey('buyingPrice')) {
      return false;
    }
    if (l$buyingPrice != lOther$buyingPrice) {
      return false;
    }
    final l$sellingPrice = sellingPrice;
    final lOther$sellingPrice = other.sellingPrice;
    if (_$data.containsKey('sellingPrice') !=
        other._$data.containsKey('sellingPrice')) {
      return false;
    }
    if (l$sellingPrice != lOther$sellingPrice) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (_$data.containsKey('picture') != other._$data.containsKey('picture')) {
      return false;
    }
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$family_id = family_id;
    final lOther$family_id = other.family_id;
    if (_$data.containsKey('family_id') !=
        other._$data.containsKey('family_id')) {
      return false;
    }
    if (l$family_id != lOther$family_id) {
      return false;
    }
    final l$$_count = $_count;
    final lOther$$_count = other.$_count;
    if (_$data.containsKey('_count') != other._$data.containsKey('_count')) {
      return false;
    }
    if (l$$_count != lOther$$_count) {
      return false;
    }
    final l$$_avg = $_avg;
    final lOther$$_avg = other.$_avg;
    if (_$data.containsKey('_avg') != other._$data.containsKey('_avg')) {
      return false;
    }
    if (l$$_avg != lOther$$_avg) {
      return false;
    }
    final l$$_max = $_max;
    final lOther$$_max = other.$_max;
    if (_$data.containsKey('_max') != other._$data.containsKey('_max')) {
      return false;
    }
    if (l$$_max != lOther$$_max) {
      return false;
    }
    final l$$_min = $_min;
    final lOther$$_min = other.$_min;
    if (_$data.containsKey('_min') != other._$data.containsKey('_min')) {
      return false;
    }
    if (l$$_min != lOther$$_min) {
      return false;
    }
    final l$$_sum = $_sum;
    final lOther$$_sum = other.$_sum;
    if (_$data.containsKey('_sum') != other._$data.containsKey('_sum')) {
      return false;
    }
    if (l$$_sum != lOther$$_sum) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$product_id = product_id;
    final l$reference = reference;
    final l$name = name;
    final l$buyingPrice = buyingPrice;
    final l$sellingPrice = sellingPrice;
    final l$description = description;
    final l$picture = picture;
    final l$family_id = family_id;
    final l$$_count = $_count;
    final l$$_avg = $_avg;
    final l$$_max = $_max;
    final l$$_min = $_min;
    final l$$_sum = $_sum;
    return Object.hashAll([
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('reference') ? l$reference : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('buyingPrice') ? l$buyingPrice : const {},
      _$data.containsKey('sellingPrice') ? l$sellingPrice : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('picture') ? l$picture : const {},
      _$data.containsKey('family_id') ? l$family_id : const {},
      _$data.containsKey('_count') ? l$$_count : const {},
      _$data.containsKey('_avg') ? l$$_avg : const {},
      _$data.containsKey('_max') ? l$$_max : const {},
      _$data.containsKey('_min') ? l$$_min : const {},
      _$data.containsKey('_sum') ? l$$_sum : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductsOrderByWithAggregationInput<TRes> {
  factory CopyWith$Input$ProductsOrderByWithAggregationInput(
    Input$ProductsOrderByWithAggregationInput instance,
    TRes Function(Input$ProductsOrderByWithAggregationInput) then,
  ) = _CopyWithImpl$Input$ProductsOrderByWithAggregationInput;

  factory CopyWith$Input$ProductsOrderByWithAggregationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductsOrderByWithAggregationInput;

  TRes call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? reference,
    Enum$SortOrder? name,
    Enum$SortOrder? buyingPrice,
    Enum$SortOrder? sellingPrice,
    Enum$SortOrder? description,
    Enum$SortOrder? picture,
    Enum$SortOrder? family_id,
    Input$ProductsCountOrderByAggregateInput? $_count,
    Input$ProductsAvgOrderByAggregateInput? $_avg,
    Input$ProductsMaxOrderByAggregateInput? $_max,
    Input$ProductsMinOrderByAggregateInput? $_min,
    Input$ProductsSumOrderByAggregateInput? $_sum,
  });
  CopyWith$Input$ProductsCountOrderByAggregateInput<TRes> get $_count;
  CopyWith$Input$ProductsAvgOrderByAggregateInput<TRes> get $_avg;
  CopyWith$Input$ProductsMaxOrderByAggregateInput<TRes> get $_max;
  CopyWith$Input$ProductsMinOrderByAggregateInput<TRes> get $_min;
  CopyWith$Input$ProductsSumOrderByAggregateInput<TRes> get $_sum;
}

class _CopyWithImpl$Input$ProductsOrderByWithAggregationInput<TRes>
    implements CopyWith$Input$ProductsOrderByWithAggregationInput<TRes> {
  _CopyWithImpl$Input$ProductsOrderByWithAggregationInput(
    this._instance,
    this._then,
  );

  final Input$ProductsOrderByWithAggregationInput _instance;

  final TRes Function(Input$ProductsOrderByWithAggregationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? product_id = _undefined,
    Object? reference = _undefined,
    Object? name = _undefined,
    Object? buyingPrice = _undefined,
    Object? sellingPrice = _undefined,
    Object? description = _undefined,
    Object? picture = _undefined,
    Object? family_id = _undefined,
    Object? $_count = _undefined,
    Object? $_avg = _undefined,
    Object? $_max = _undefined,
    Object? $_min = _undefined,
    Object? $_sum = _undefined,
  }) =>
      _then(Input$ProductsOrderByWithAggregationInput._({
        ..._instance._$data,
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (reference != _undefined)
          'reference': (reference as Enum$SortOrder?),
        if (name != _undefined) 'name': (name as Enum$SortOrder?),
        if (buyingPrice != _undefined)
          'buyingPrice': (buyingPrice as Enum$SortOrder?),
        if (sellingPrice != _undefined)
          'sellingPrice': (sellingPrice as Enum$SortOrder?),
        if (description != _undefined)
          'description': (description as Enum$SortOrder?),
        if (picture != _undefined) 'picture': (picture as Enum$SortOrder?),
        if (family_id != _undefined)
          'family_id': (family_id as Enum$SortOrder?),
        if ($_count != _undefined)
          '_count': ($_count as Input$ProductsCountOrderByAggregateInput?),
        if ($_avg != _undefined)
          '_avg': ($_avg as Input$ProductsAvgOrderByAggregateInput?),
        if ($_max != _undefined)
          '_max': ($_max as Input$ProductsMaxOrderByAggregateInput?),
        if ($_min != _undefined)
          '_min': ($_min as Input$ProductsMinOrderByAggregateInput?),
        if ($_sum != _undefined)
          '_sum': ($_sum as Input$ProductsSumOrderByAggregateInput?),
      }));
  CopyWith$Input$ProductsCountOrderByAggregateInput<TRes> get $_count {
    final local$$_count = _instance.$_count;
    return local$$_count == null
        ? CopyWith$Input$ProductsCountOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductsCountOrderByAggregateInput(
            local$$_count, (e) => call($_count: e));
  }

  CopyWith$Input$ProductsAvgOrderByAggregateInput<TRes> get $_avg {
    final local$$_avg = _instance.$_avg;
    return local$$_avg == null
        ? CopyWith$Input$ProductsAvgOrderByAggregateInput.stub(_then(_instance))
        : CopyWith$Input$ProductsAvgOrderByAggregateInput(
            local$$_avg, (e) => call($_avg: e));
  }

  CopyWith$Input$ProductsMaxOrderByAggregateInput<TRes> get $_max {
    final local$$_max = _instance.$_max;
    return local$$_max == null
        ? CopyWith$Input$ProductsMaxOrderByAggregateInput.stub(_then(_instance))
        : CopyWith$Input$ProductsMaxOrderByAggregateInput(
            local$$_max, (e) => call($_max: e));
  }

  CopyWith$Input$ProductsMinOrderByAggregateInput<TRes> get $_min {
    final local$$_min = _instance.$_min;
    return local$$_min == null
        ? CopyWith$Input$ProductsMinOrderByAggregateInput.stub(_then(_instance))
        : CopyWith$Input$ProductsMinOrderByAggregateInput(
            local$$_min, (e) => call($_min: e));
  }

  CopyWith$Input$ProductsSumOrderByAggregateInput<TRes> get $_sum {
    final local$$_sum = _instance.$_sum;
    return local$$_sum == null
        ? CopyWith$Input$ProductsSumOrderByAggregateInput.stub(_then(_instance))
        : CopyWith$Input$ProductsSumOrderByAggregateInput(
            local$$_sum, (e) => call($_sum: e));
  }
}

class _CopyWithStubImpl$Input$ProductsOrderByWithAggregationInput<TRes>
    implements CopyWith$Input$ProductsOrderByWithAggregationInput<TRes> {
  _CopyWithStubImpl$Input$ProductsOrderByWithAggregationInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? reference,
    Enum$SortOrder? name,
    Enum$SortOrder? buyingPrice,
    Enum$SortOrder? sellingPrice,
    Enum$SortOrder? description,
    Enum$SortOrder? picture,
    Enum$SortOrder? family_id,
    Input$ProductsCountOrderByAggregateInput? $_count,
    Input$ProductsAvgOrderByAggregateInput? $_avg,
    Input$ProductsMaxOrderByAggregateInput? $_max,
    Input$ProductsMinOrderByAggregateInput? $_min,
    Input$ProductsSumOrderByAggregateInput? $_sum,
  }) =>
      _res;
  CopyWith$Input$ProductsCountOrderByAggregateInput<TRes> get $_count =>
      CopyWith$Input$ProductsCountOrderByAggregateInput.stub(_res);
  CopyWith$Input$ProductsAvgOrderByAggregateInput<TRes> get $_avg =>
      CopyWith$Input$ProductsAvgOrderByAggregateInput.stub(_res);
  CopyWith$Input$ProductsMaxOrderByAggregateInput<TRes> get $_max =>
      CopyWith$Input$ProductsMaxOrderByAggregateInput.stub(_res);
  CopyWith$Input$ProductsMinOrderByAggregateInput<TRes> get $_min =>
      CopyWith$Input$ProductsMinOrderByAggregateInput.stub(_res);
  CopyWith$Input$ProductsSumOrderByAggregateInput<TRes> get $_sum =>
      CopyWith$Input$ProductsSumOrderByAggregateInput.stub(_res);
}

class Input$ProductsCountOrderByAggregateInput {
  factory Input$ProductsCountOrderByAggregateInput({
    Enum$SortOrder? product_id,
    Enum$SortOrder? reference,
    Enum$SortOrder? name,
    Enum$SortOrder? buyingPrice,
    Enum$SortOrder? sellingPrice,
    Enum$SortOrder? description,
    Enum$SortOrder? picture,
    Enum$SortOrder? family_id,
  }) =>
      Input$ProductsCountOrderByAggregateInput._({
        if (product_id != null) r'product_id': product_id,
        if (reference != null) r'reference': reference,
        if (name != null) r'name': name,
        if (buyingPrice != null) r'buyingPrice': buyingPrice,
        if (sellingPrice != null) r'sellingPrice': sellingPrice,
        if (description != null) r'description': description,
        if (picture != null) r'picture': picture,
        if (family_id != null) r'family_id': family_id,
      });

  Input$ProductsCountOrderByAggregateInput._(this._$data);

  factory Input$ProductsCountOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : fromJson$Enum$SortOrder((l$product_id as String));
    }
    if (data.containsKey('reference')) {
      final l$reference = data['reference'];
      result$data['reference'] = l$reference == null
          ? null
          : fromJson$Enum$SortOrder((l$reference as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson$Enum$SortOrder((l$name as String));
    }
    if (data.containsKey('buyingPrice')) {
      final l$buyingPrice = data['buyingPrice'];
      result$data['buyingPrice'] = l$buyingPrice == null
          ? null
          : fromJson$Enum$SortOrder((l$buyingPrice as String));
    }
    if (data.containsKey('sellingPrice')) {
      final l$sellingPrice = data['sellingPrice'];
      result$data['sellingPrice'] = l$sellingPrice == null
          ? null
          : fromJson$Enum$SortOrder((l$sellingPrice as String));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : fromJson$Enum$SortOrder((l$description as String));
    }
    if (data.containsKey('picture')) {
      final l$picture = data['picture'];
      result$data['picture'] = l$picture == null
          ? null
          : fromJson$Enum$SortOrder((l$picture as String));
    }
    if (data.containsKey('family_id')) {
      final l$family_id = data['family_id'];
      result$data['family_id'] = l$family_id == null
          ? null
          : fromJson$Enum$SortOrder((l$family_id as String));
    }
    return Input$ProductsCountOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get reference => (_$data['reference'] as Enum$SortOrder?);
  Enum$SortOrder? get name => (_$data['name'] as Enum$SortOrder?);
  Enum$SortOrder? get buyingPrice => (_$data['buyingPrice'] as Enum$SortOrder?);
  Enum$SortOrder? get sellingPrice =>
      (_$data['sellingPrice'] as Enum$SortOrder?);
  Enum$SortOrder? get description => (_$data['description'] as Enum$SortOrder?);
  Enum$SortOrder? get picture => (_$data['picture'] as Enum$SortOrder?);
  Enum$SortOrder? get family_id => (_$data['family_id'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] =
          l$product_id == null ? null : toJson$Enum$SortOrder(l$product_id);
    }
    if (_$data.containsKey('reference')) {
      final l$reference = reference;
      result$data['reference'] =
          l$reference == null ? null : toJson$Enum$SortOrder(l$reference);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$SortOrder(l$name);
    }
    if (_$data.containsKey('buyingPrice')) {
      final l$buyingPrice = buyingPrice;
      result$data['buyingPrice'] =
          l$buyingPrice == null ? null : toJson$Enum$SortOrder(l$buyingPrice);
    }
    if (_$data.containsKey('sellingPrice')) {
      final l$sellingPrice = sellingPrice;
      result$data['sellingPrice'] =
          l$sellingPrice == null ? null : toJson$Enum$SortOrder(l$sellingPrice);
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] =
          l$description == null ? null : toJson$Enum$SortOrder(l$description);
    }
    if (_$data.containsKey('picture')) {
      final l$picture = picture;
      result$data['picture'] =
          l$picture == null ? null : toJson$Enum$SortOrder(l$picture);
    }
    if (_$data.containsKey('family_id')) {
      final l$family_id = family_id;
      result$data['family_id'] =
          l$family_id == null ? null : toJson$Enum$SortOrder(l$family_id);
    }
    return result$data;
  }

  CopyWith$Input$ProductsCountOrderByAggregateInput<
          Input$ProductsCountOrderByAggregateInput>
      get copyWith => CopyWith$Input$ProductsCountOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsCountOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (_$data.containsKey('product_id') !=
        other._$data.containsKey('product_id')) {
      return false;
    }
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$reference = reference;
    final lOther$reference = other.reference;
    if (_$data.containsKey('reference') !=
        other._$data.containsKey('reference')) {
      return false;
    }
    if (l$reference != lOther$reference) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$buyingPrice = buyingPrice;
    final lOther$buyingPrice = other.buyingPrice;
    if (_$data.containsKey('buyingPrice') !=
        other._$data.containsKey('buyingPrice')) {
      return false;
    }
    if (l$buyingPrice != lOther$buyingPrice) {
      return false;
    }
    final l$sellingPrice = sellingPrice;
    final lOther$sellingPrice = other.sellingPrice;
    if (_$data.containsKey('sellingPrice') !=
        other._$data.containsKey('sellingPrice')) {
      return false;
    }
    if (l$sellingPrice != lOther$sellingPrice) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (_$data.containsKey('picture') != other._$data.containsKey('picture')) {
      return false;
    }
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$family_id = family_id;
    final lOther$family_id = other.family_id;
    if (_$data.containsKey('family_id') !=
        other._$data.containsKey('family_id')) {
      return false;
    }
    if (l$family_id != lOther$family_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$product_id = product_id;
    final l$reference = reference;
    final l$name = name;
    final l$buyingPrice = buyingPrice;
    final l$sellingPrice = sellingPrice;
    final l$description = description;
    final l$picture = picture;
    final l$family_id = family_id;
    return Object.hashAll([
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('reference') ? l$reference : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('buyingPrice') ? l$buyingPrice : const {},
      _$data.containsKey('sellingPrice') ? l$sellingPrice : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('picture') ? l$picture : const {},
      _$data.containsKey('family_id') ? l$family_id : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductsCountOrderByAggregateInput<TRes> {
  factory CopyWith$Input$ProductsCountOrderByAggregateInput(
    Input$ProductsCountOrderByAggregateInput instance,
    TRes Function(Input$ProductsCountOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$ProductsCountOrderByAggregateInput;

  factory CopyWith$Input$ProductsCountOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductsCountOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? reference,
    Enum$SortOrder? name,
    Enum$SortOrder? buyingPrice,
    Enum$SortOrder? sellingPrice,
    Enum$SortOrder? description,
    Enum$SortOrder? picture,
    Enum$SortOrder? family_id,
  });
}

class _CopyWithImpl$Input$ProductsCountOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductsCountOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$ProductsCountOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$ProductsCountOrderByAggregateInput _instance;

  final TRes Function(Input$ProductsCountOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? product_id = _undefined,
    Object? reference = _undefined,
    Object? name = _undefined,
    Object? buyingPrice = _undefined,
    Object? sellingPrice = _undefined,
    Object? description = _undefined,
    Object? picture = _undefined,
    Object? family_id = _undefined,
  }) =>
      _then(Input$ProductsCountOrderByAggregateInput._({
        ..._instance._$data,
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (reference != _undefined)
          'reference': (reference as Enum$SortOrder?),
        if (name != _undefined) 'name': (name as Enum$SortOrder?),
        if (buyingPrice != _undefined)
          'buyingPrice': (buyingPrice as Enum$SortOrder?),
        if (sellingPrice != _undefined)
          'sellingPrice': (sellingPrice as Enum$SortOrder?),
        if (description != _undefined)
          'description': (description as Enum$SortOrder?),
        if (picture != _undefined) 'picture': (picture as Enum$SortOrder?),
        if (family_id != _undefined)
          'family_id': (family_id as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$ProductsCountOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductsCountOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$ProductsCountOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? reference,
    Enum$SortOrder? name,
    Enum$SortOrder? buyingPrice,
    Enum$SortOrder? sellingPrice,
    Enum$SortOrder? description,
    Enum$SortOrder? picture,
    Enum$SortOrder? family_id,
  }) =>
      _res;
}

class Input$ProductsAvgOrderByAggregateInput {
  factory Input$ProductsAvgOrderByAggregateInput({
    Enum$SortOrder? product_id,
    Enum$SortOrder? reference,
    Enum$SortOrder? buyingPrice,
    Enum$SortOrder? sellingPrice,
    Enum$SortOrder? family_id,
  }) =>
      Input$ProductsAvgOrderByAggregateInput._({
        if (product_id != null) r'product_id': product_id,
        if (reference != null) r'reference': reference,
        if (buyingPrice != null) r'buyingPrice': buyingPrice,
        if (sellingPrice != null) r'sellingPrice': sellingPrice,
        if (family_id != null) r'family_id': family_id,
      });

  Input$ProductsAvgOrderByAggregateInput._(this._$data);

  factory Input$ProductsAvgOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : fromJson$Enum$SortOrder((l$product_id as String));
    }
    if (data.containsKey('reference')) {
      final l$reference = data['reference'];
      result$data['reference'] = l$reference == null
          ? null
          : fromJson$Enum$SortOrder((l$reference as String));
    }
    if (data.containsKey('buyingPrice')) {
      final l$buyingPrice = data['buyingPrice'];
      result$data['buyingPrice'] = l$buyingPrice == null
          ? null
          : fromJson$Enum$SortOrder((l$buyingPrice as String));
    }
    if (data.containsKey('sellingPrice')) {
      final l$sellingPrice = data['sellingPrice'];
      result$data['sellingPrice'] = l$sellingPrice == null
          ? null
          : fromJson$Enum$SortOrder((l$sellingPrice as String));
    }
    if (data.containsKey('family_id')) {
      final l$family_id = data['family_id'];
      result$data['family_id'] = l$family_id == null
          ? null
          : fromJson$Enum$SortOrder((l$family_id as String));
    }
    return Input$ProductsAvgOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get reference => (_$data['reference'] as Enum$SortOrder?);
  Enum$SortOrder? get buyingPrice => (_$data['buyingPrice'] as Enum$SortOrder?);
  Enum$SortOrder? get sellingPrice =>
      (_$data['sellingPrice'] as Enum$SortOrder?);
  Enum$SortOrder? get family_id => (_$data['family_id'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] =
          l$product_id == null ? null : toJson$Enum$SortOrder(l$product_id);
    }
    if (_$data.containsKey('reference')) {
      final l$reference = reference;
      result$data['reference'] =
          l$reference == null ? null : toJson$Enum$SortOrder(l$reference);
    }
    if (_$data.containsKey('buyingPrice')) {
      final l$buyingPrice = buyingPrice;
      result$data['buyingPrice'] =
          l$buyingPrice == null ? null : toJson$Enum$SortOrder(l$buyingPrice);
    }
    if (_$data.containsKey('sellingPrice')) {
      final l$sellingPrice = sellingPrice;
      result$data['sellingPrice'] =
          l$sellingPrice == null ? null : toJson$Enum$SortOrder(l$sellingPrice);
    }
    if (_$data.containsKey('family_id')) {
      final l$family_id = family_id;
      result$data['family_id'] =
          l$family_id == null ? null : toJson$Enum$SortOrder(l$family_id);
    }
    return result$data;
  }

  CopyWith$Input$ProductsAvgOrderByAggregateInput<
          Input$ProductsAvgOrderByAggregateInput>
      get copyWith => CopyWith$Input$ProductsAvgOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsAvgOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (_$data.containsKey('product_id') !=
        other._$data.containsKey('product_id')) {
      return false;
    }
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$reference = reference;
    final lOther$reference = other.reference;
    if (_$data.containsKey('reference') !=
        other._$data.containsKey('reference')) {
      return false;
    }
    if (l$reference != lOther$reference) {
      return false;
    }
    final l$buyingPrice = buyingPrice;
    final lOther$buyingPrice = other.buyingPrice;
    if (_$data.containsKey('buyingPrice') !=
        other._$data.containsKey('buyingPrice')) {
      return false;
    }
    if (l$buyingPrice != lOther$buyingPrice) {
      return false;
    }
    final l$sellingPrice = sellingPrice;
    final lOther$sellingPrice = other.sellingPrice;
    if (_$data.containsKey('sellingPrice') !=
        other._$data.containsKey('sellingPrice')) {
      return false;
    }
    if (l$sellingPrice != lOther$sellingPrice) {
      return false;
    }
    final l$family_id = family_id;
    final lOther$family_id = other.family_id;
    if (_$data.containsKey('family_id') !=
        other._$data.containsKey('family_id')) {
      return false;
    }
    if (l$family_id != lOther$family_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$product_id = product_id;
    final l$reference = reference;
    final l$buyingPrice = buyingPrice;
    final l$sellingPrice = sellingPrice;
    final l$family_id = family_id;
    return Object.hashAll([
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('reference') ? l$reference : const {},
      _$data.containsKey('buyingPrice') ? l$buyingPrice : const {},
      _$data.containsKey('sellingPrice') ? l$sellingPrice : const {},
      _$data.containsKey('family_id') ? l$family_id : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductsAvgOrderByAggregateInput<TRes> {
  factory CopyWith$Input$ProductsAvgOrderByAggregateInput(
    Input$ProductsAvgOrderByAggregateInput instance,
    TRes Function(Input$ProductsAvgOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$ProductsAvgOrderByAggregateInput;

  factory CopyWith$Input$ProductsAvgOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductsAvgOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? reference,
    Enum$SortOrder? buyingPrice,
    Enum$SortOrder? sellingPrice,
    Enum$SortOrder? family_id,
  });
}

class _CopyWithImpl$Input$ProductsAvgOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductsAvgOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$ProductsAvgOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$ProductsAvgOrderByAggregateInput _instance;

  final TRes Function(Input$ProductsAvgOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? product_id = _undefined,
    Object? reference = _undefined,
    Object? buyingPrice = _undefined,
    Object? sellingPrice = _undefined,
    Object? family_id = _undefined,
  }) =>
      _then(Input$ProductsAvgOrderByAggregateInput._({
        ..._instance._$data,
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (reference != _undefined)
          'reference': (reference as Enum$SortOrder?),
        if (buyingPrice != _undefined)
          'buyingPrice': (buyingPrice as Enum$SortOrder?),
        if (sellingPrice != _undefined)
          'sellingPrice': (sellingPrice as Enum$SortOrder?),
        if (family_id != _undefined)
          'family_id': (family_id as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$ProductsAvgOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductsAvgOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$ProductsAvgOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? reference,
    Enum$SortOrder? buyingPrice,
    Enum$SortOrder? sellingPrice,
    Enum$SortOrder? family_id,
  }) =>
      _res;
}

class Input$ProductsMaxOrderByAggregateInput {
  factory Input$ProductsMaxOrderByAggregateInput({
    Enum$SortOrder? product_id,
    Enum$SortOrder? reference,
    Enum$SortOrder? name,
    Enum$SortOrder? buyingPrice,
    Enum$SortOrder? sellingPrice,
    Enum$SortOrder? description,
    Enum$SortOrder? picture,
    Enum$SortOrder? family_id,
  }) =>
      Input$ProductsMaxOrderByAggregateInput._({
        if (product_id != null) r'product_id': product_id,
        if (reference != null) r'reference': reference,
        if (name != null) r'name': name,
        if (buyingPrice != null) r'buyingPrice': buyingPrice,
        if (sellingPrice != null) r'sellingPrice': sellingPrice,
        if (description != null) r'description': description,
        if (picture != null) r'picture': picture,
        if (family_id != null) r'family_id': family_id,
      });

  Input$ProductsMaxOrderByAggregateInput._(this._$data);

  factory Input$ProductsMaxOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : fromJson$Enum$SortOrder((l$product_id as String));
    }
    if (data.containsKey('reference')) {
      final l$reference = data['reference'];
      result$data['reference'] = l$reference == null
          ? null
          : fromJson$Enum$SortOrder((l$reference as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson$Enum$SortOrder((l$name as String));
    }
    if (data.containsKey('buyingPrice')) {
      final l$buyingPrice = data['buyingPrice'];
      result$data['buyingPrice'] = l$buyingPrice == null
          ? null
          : fromJson$Enum$SortOrder((l$buyingPrice as String));
    }
    if (data.containsKey('sellingPrice')) {
      final l$sellingPrice = data['sellingPrice'];
      result$data['sellingPrice'] = l$sellingPrice == null
          ? null
          : fromJson$Enum$SortOrder((l$sellingPrice as String));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : fromJson$Enum$SortOrder((l$description as String));
    }
    if (data.containsKey('picture')) {
      final l$picture = data['picture'];
      result$data['picture'] = l$picture == null
          ? null
          : fromJson$Enum$SortOrder((l$picture as String));
    }
    if (data.containsKey('family_id')) {
      final l$family_id = data['family_id'];
      result$data['family_id'] = l$family_id == null
          ? null
          : fromJson$Enum$SortOrder((l$family_id as String));
    }
    return Input$ProductsMaxOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get reference => (_$data['reference'] as Enum$SortOrder?);
  Enum$SortOrder? get name => (_$data['name'] as Enum$SortOrder?);
  Enum$SortOrder? get buyingPrice => (_$data['buyingPrice'] as Enum$SortOrder?);
  Enum$SortOrder? get sellingPrice =>
      (_$data['sellingPrice'] as Enum$SortOrder?);
  Enum$SortOrder? get description => (_$data['description'] as Enum$SortOrder?);
  Enum$SortOrder? get picture => (_$data['picture'] as Enum$SortOrder?);
  Enum$SortOrder? get family_id => (_$data['family_id'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] =
          l$product_id == null ? null : toJson$Enum$SortOrder(l$product_id);
    }
    if (_$data.containsKey('reference')) {
      final l$reference = reference;
      result$data['reference'] =
          l$reference == null ? null : toJson$Enum$SortOrder(l$reference);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$SortOrder(l$name);
    }
    if (_$data.containsKey('buyingPrice')) {
      final l$buyingPrice = buyingPrice;
      result$data['buyingPrice'] =
          l$buyingPrice == null ? null : toJson$Enum$SortOrder(l$buyingPrice);
    }
    if (_$data.containsKey('sellingPrice')) {
      final l$sellingPrice = sellingPrice;
      result$data['sellingPrice'] =
          l$sellingPrice == null ? null : toJson$Enum$SortOrder(l$sellingPrice);
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] =
          l$description == null ? null : toJson$Enum$SortOrder(l$description);
    }
    if (_$data.containsKey('picture')) {
      final l$picture = picture;
      result$data['picture'] =
          l$picture == null ? null : toJson$Enum$SortOrder(l$picture);
    }
    if (_$data.containsKey('family_id')) {
      final l$family_id = family_id;
      result$data['family_id'] =
          l$family_id == null ? null : toJson$Enum$SortOrder(l$family_id);
    }
    return result$data;
  }

  CopyWith$Input$ProductsMaxOrderByAggregateInput<
          Input$ProductsMaxOrderByAggregateInput>
      get copyWith => CopyWith$Input$ProductsMaxOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsMaxOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (_$data.containsKey('product_id') !=
        other._$data.containsKey('product_id')) {
      return false;
    }
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$reference = reference;
    final lOther$reference = other.reference;
    if (_$data.containsKey('reference') !=
        other._$data.containsKey('reference')) {
      return false;
    }
    if (l$reference != lOther$reference) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$buyingPrice = buyingPrice;
    final lOther$buyingPrice = other.buyingPrice;
    if (_$data.containsKey('buyingPrice') !=
        other._$data.containsKey('buyingPrice')) {
      return false;
    }
    if (l$buyingPrice != lOther$buyingPrice) {
      return false;
    }
    final l$sellingPrice = sellingPrice;
    final lOther$sellingPrice = other.sellingPrice;
    if (_$data.containsKey('sellingPrice') !=
        other._$data.containsKey('sellingPrice')) {
      return false;
    }
    if (l$sellingPrice != lOther$sellingPrice) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (_$data.containsKey('picture') != other._$data.containsKey('picture')) {
      return false;
    }
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$family_id = family_id;
    final lOther$family_id = other.family_id;
    if (_$data.containsKey('family_id') !=
        other._$data.containsKey('family_id')) {
      return false;
    }
    if (l$family_id != lOther$family_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$product_id = product_id;
    final l$reference = reference;
    final l$name = name;
    final l$buyingPrice = buyingPrice;
    final l$sellingPrice = sellingPrice;
    final l$description = description;
    final l$picture = picture;
    final l$family_id = family_id;
    return Object.hashAll([
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('reference') ? l$reference : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('buyingPrice') ? l$buyingPrice : const {},
      _$data.containsKey('sellingPrice') ? l$sellingPrice : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('picture') ? l$picture : const {},
      _$data.containsKey('family_id') ? l$family_id : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductsMaxOrderByAggregateInput<TRes> {
  factory CopyWith$Input$ProductsMaxOrderByAggregateInput(
    Input$ProductsMaxOrderByAggregateInput instance,
    TRes Function(Input$ProductsMaxOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$ProductsMaxOrderByAggregateInput;

  factory CopyWith$Input$ProductsMaxOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductsMaxOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? reference,
    Enum$SortOrder? name,
    Enum$SortOrder? buyingPrice,
    Enum$SortOrder? sellingPrice,
    Enum$SortOrder? description,
    Enum$SortOrder? picture,
    Enum$SortOrder? family_id,
  });
}

class _CopyWithImpl$Input$ProductsMaxOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductsMaxOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$ProductsMaxOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$ProductsMaxOrderByAggregateInput _instance;

  final TRes Function(Input$ProductsMaxOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? product_id = _undefined,
    Object? reference = _undefined,
    Object? name = _undefined,
    Object? buyingPrice = _undefined,
    Object? sellingPrice = _undefined,
    Object? description = _undefined,
    Object? picture = _undefined,
    Object? family_id = _undefined,
  }) =>
      _then(Input$ProductsMaxOrderByAggregateInput._({
        ..._instance._$data,
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (reference != _undefined)
          'reference': (reference as Enum$SortOrder?),
        if (name != _undefined) 'name': (name as Enum$SortOrder?),
        if (buyingPrice != _undefined)
          'buyingPrice': (buyingPrice as Enum$SortOrder?),
        if (sellingPrice != _undefined)
          'sellingPrice': (sellingPrice as Enum$SortOrder?),
        if (description != _undefined)
          'description': (description as Enum$SortOrder?),
        if (picture != _undefined) 'picture': (picture as Enum$SortOrder?),
        if (family_id != _undefined)
          'family_id': (family_id as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$ProductsMaxOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductsMaxOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$ProductsMaxOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? reference,
    Enum$SortOrder? name,
    Enum$SortOrder? buyingPrice,
    Enum$SortOrder? sellingPrice,
    Enum$SortOrder? description,
    Enum$SortOrder? picture,
    Enum$SortOrder? family_id,
  }) =>
      _res;
}

class Input$ProductsMinOrderByAggregateInput {
  factory Input$ProductsMinOrderByAggregateInput({
    Enum$SortOrder? product_id,
    Enum$SortOrder? reference,
    Enum$SortOrder? name,
    Enum$SortOrder? buyingPrice,
    Enum$SortOrder? sellingPrice,
    Enum$SortOrder? description,
    Enum$SortOrder? picture,
    Enum$SortOrder? family_id,
  }) =>
      Input$ProductsMinOrderByAggregateInput._({
        if (product_id != null) r'product_id': product_id,
        if (reference != null) r'reference': reference,
        if (name != null) r'name': name,
        if (buyingPrice != null) r'buyingPrice': buyingPrice,
        if (sellingPrice != null) r'sellingPrice': sellingPrice,
        if (description != null) r'description': description,
        if (picture != null) r'picture': picture,
        if (family_id != null) r'family_id': family_id,
      });

  Input$ProductsMinOrderByAggregateInput._(this._$data);

  factory Input$ProductsMinOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : fromJson$Enum$SortOrder((l$product_id as String));
    }
    if (data.containsKey('reference')) {
      final l$reference = data['reference'];
      result$data['reference'] = l$reference == null
          ? null
          : fromJson$Enum$SortOrder((l$reference as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson$Enum$SortOrder((l$name as String));
    }
    if (data.containsKey('buyingPrice')) {
      final l$buyingPrice = data['buyingPrice'];
      result$data['buyingPrice'] = l$buyingPrice == null
          ? null
          : fromJson$Enum$SortOrder((l$buyingPrice as String));
    }
    if (data.containsKey('sellingPrice')) {
      final l$sellingPrice = data['sellingPrice'];
      result$data['sellingPrice'] = l$sellingPrice == null
          ? null
          : fromJson$Enum$SortOrder((l$sellingPrice as String));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : fromJson$Enum$SortOrder((l$description as String));
    }
    if (data.containsKey('picture')) {
      final l$picture = data['picture'];
      result$data['picture'] = l$picture == null
          ? null
          : fromJson$Enum$SortOrder((l$picture as String));
    }
    if (data.containsKey('family_id')) {
      final l$family_id = data['family_id'];
      result$data['family_id'] = l$family_id == null
          ? null
          : fromJson$Enum$SortOrder((l$family_id as String));
    }
    return Input$ProductsMinOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get reference => (_$data['reference'] as Enum$SortOrder?);
  Enum$SortOrder? get name => (_$data['name'] as Enum$SortOrder?);
  Enum$SortOrder? get buyingPrice => (_$data['buyingPrice'] as Enum$SortOrder?);
  Enum$SortOrder? get sellingPrice =>
      (_$data['sellingPrice'] as Enum$SortOrder?);
  Enum$SortOrder? get description => (_$data['description'] as Enum$SortOrder?);
  Enum$SortOrder? get picture => (_$data['picture'] as Enum$SortOrder?);
  Enum$SortOrder? get family_id => (_$data['family_id'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] =
          l$product_id == null ? null : toJson$Enum$SortOrder(l$product_id);
    }
    if (_$data.containsKey('reference')) {
      final l$reference = reference;
      result$data['reference'] =
          l$reference == null ? null : toJson$Enum$SortOrder(l$reference);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$SortOrder(l$name);
    }
    if (_$data.containsKey('buyingPrice')) {
      final l$buyingPrice = buyingPrice;
      result$data['buyingPrice'] =
          l$buyingPrice == null ? null : toJson$Enum$SortOrder(l$buyingPrice);
    }
    if (_$data.containsKey('sellingPrice')) {
      final l$sellingPrice = sellingPrice;
      result$data['sellingPrice'] =
          l$sellingPrice == null ? null : toJson$Enum$SortOrder(l$sellingPrice);
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] =
          l$description == null ? null : toJson$Enum$SortOrder(l$description);
    }
    if (_$data.containsKey('picture')) {
      final l$picture = picture;
      result$data['picture'] =
          l$picture == null ? null : toJson$Enum$SortOrder(l$picture);
    }
    if (_$data.containsKey('family_id')) {
      final l$family_id = family_id;
      result$data['family_id'] =
          l$family_id == null ? null : toJson$Enum$SortOrder(l$family_id);
    }
    return result$data;
  }

  CopyWith$Input$ProductsMinOrderByAggregateInput<
          Input$ProductsMinOrderByAggregateInput>
      get copyWith => CopyWith$Input$ProductsMinOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsMinOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (_$data.containsKey('product_id') !=
        other._$data.containsKey('product_id')) {
      return false;
    }
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$reference = reference;
    final lOther$reference = other.reference;
    if (_$data.containsKey('reference') !=
        other._$data.containsKey('reference')) {
      return false;
    }
    if (l$reference != lOther$reference) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$buyingPrice = buyingPrice;
    final lOther$buyingPrice = other.buyingPrice;
    if (_$data.containsKey('buyingPrice') !=
        other._$data.containsKey('buyingPrice')) {
      return false;
    }
    if (l$buyingPrice != lOther$buyingPrice) {
      return false;
    }
    final l$sellingPrice = sellingPrice;
    final lOther$sellingPrice = other.sellingPrice;
    if (_$data.containsKey('sellingPrice') !=
        other._$data.containsKey('sellingPrice')) {
      return false;
    }
    if (l$sellingPrice != lOther$sellingPrice) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (_$data.containsKey('picture') != other._$data.containsKey('picture')) {
      return false;
    }
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$family_id = family_id;
    final lOther$family_id = other.family_id;
    if (_$data.containsKey('family_id') !=
        other._$data.containsKey('family_id')) {
      return false;
    }
    if (l$family_id != lOther$family_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$product_id = product_id;
    final l$reference = reference;
    final l$name = name;
    final l$buyingPrice = buyingPrice;
    final l$sellingPrice = sellingPrice;
    final l$description = description;
    final l$picture = picture;
    final l$family_id = family_id;
    return Object.hashAll([
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('reference') ? l$reference : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('buyingPrice') ? l$buyingPrice : const {},
      _$data.containsKey('sellingPrice') ? l$sellingPrice : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('picture') ? l$picture : const {},
      _$data.containsKey('family_id') ? l$family_id : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductsMinOrderByAggregateInput<TRes> {
  factory CopyWith$Input$ProductsMinOrderByAggregateInput(
    Input$ProductsMinOrderByAggregateInput instance,
    TRes Function(Input$ProductsMinOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$ProductsMinOrderByAggregateInput;

  factory CopyWith$Input$ProductsMinOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductsMinOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? reference,
    Enum$SortOrder? name,
    Enum$SortOrder? buyingPrice,
    Enum$SortOrder? sellingPrice,
    Enum$SortOrder? description,
    Enum$SortOrder? picture,
    Enum$SortOrder? family_id,
  });
}

class _CopyWithImpl$Input$ProductsMinOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductsMinOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$ProductsMinOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$ProductsMinOrderByAggregateInput _instance;

  final TRes Function(Input$ProductsMinOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? product_id = _undefined,
    Object? reference = _undefined,
    Object? name = _undefined,
    Object? buyingPrice = _undefined,
    Object? sellingPrice = _undefined,
    Object? description = _undefined,
    Object? picture = _undefined,
    Object? family_id = _undefined,
  }) =>
      _then(Input$ProductsMinOrderByAggregateInput._({
        ..._instance._$data,
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (reference != _undefined)
          'reference': (reference as Enum$SortOrder?),
        if (name != _undefined) 'name': (name as Enum$SortOrder?),
        if (buyingPrice != _undefined)
          'buyingPrice': (buyingPrice as Enum$SortOrder?),
        if (sellingPrice != _undefined)
          'sellingPrice': (sellingPrice as Enum$SortOrder?),
        if (description != _undefined)
          'description': (description as Enum$SortOrder?),
        if (picture != _undefined) 'picture': (picture as Enum$SortOrder?),
        if (family_id != _undefined)
          'family_id': (family_id as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$ProductsMinOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductsMinOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$ProductsMinOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? reference,
    Enum$SortOrder? name,
    Enum$SortOrder? buyingPrice,
    Enum$SortOrder? sellingPrice,
    Enum$SortOrder? description,
    Enum$SortOrder? picture,
    Enum$SortOrder? family_id,
  }) =>
      _res;
}

class Input$ProductsSumOrderByAggregateInput {
  factory Input$ProductsSumOrderByAggregateInput({
    Enum$SortOrder? product_id,
    Enum$SortOrder? reference,
    Enum$SortOrder? buyingPrice,
    Enum$SortOrder? sellingPrice,
    Enum$SortOrder? family_id,
  }) =>
      Input$ProductsSumOrderByAggregateInput._({
        if (product_id != null) r'product_id': product_id,
        if (reference != null) r'reference': reference,
        if (buyingPrice != null) r'buyingPrice': buyingPrice,
        if (sellingPrice != null) r'sellingPrice': sellingPrice,
        if (family_id != null) r'family_id': family_id,
      });

  Input$ProductsSumOrderByAggregateInput._(this._$data);

  factory Input$ProductsSumOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : fromJson$Enum$SortOrder((l$product_id as String));
    }
    if (data.containsKey('reference')) {
      final l$reference = data['reference'];
      result$data['reference'] = l$reference == null
          ? null
          : fromJson$Enum$SortOrder((l$reference as String));
    }
    if (data.containsKey('buyingPrice')) {
      final l$buyingPrice = data['buyingPrice'];
      result$data['buyingPrice'] = l$buyingPrice == null
          ? null
          : fromJson$Enum$SortOrder((l$buyingPrice as String));
    }
    if (data.containsKey('sellingPrice')) {
      final l$sellingPrice = data['sellingPrice'];
      result$data['sellingPrice'] = l$sellingPrice == null
          ? null
          : fromJson$Enum$SortOrder((l$sellingPrice as String));
    }
    if (data.containsKey('family_id')) {
      final l$family_id = data['family_id'];
      result$data['family_id'] = l$family_id == null
          ? null
          : fromJson$Enum$SortOrder((l$family_id as String));
    }
    return Input$ProductsSumOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get reference => (_$data['reference'] as Enum$SortOrder?);
  Enum$SortOrder? get buyingPrice => (_$data['buyingPrice'] as Enum$SortOrder?);
  Enum$SortOrder? get sellingPrice =>
      (_$data['sellingPrice'] as Enum$SortOrder?);
  Enum$SortOrder? get family_id => (_$data['family_id'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] =
          l$product_id == null ? null : toJson$Enum$SortOrder(l$product_id);
    }
    if (_$data.containsKey('reference')) {
      final l$reference = reference;
      result$data['reference'] =
          l$reference == null ? null : toJson$Enum$SortOrder(l$reference);
    }
    if (_$data.containsKey('buyingPrice')) {
      final l$buyingPrice = buyingPrice;
      result$data['buyingPrice'] =
          l$buyingPrice == null ? null : toJson$Enum$SortOrder(l$buyingPrice);
    }
    if (_$data.containsKey('sellingPrice')) {
      final l$sellingPrice = sellingPrice;
      result$data['sellingPrice'] =
          l$sellingPrice == null ? null : toJson$Enum$SortOrder(l$sellingPrice);
    }
    if (_$data.containsKey('family_id')) {
      final l$family_id = family_id;
      result$data['family_id'] =
          l$family_id == null ? null : toJson$Enum$SortOrder(l$family_id);
    }
    return result$data;
  }

  CopyWith$Input$ProductsSumOrderByAggregateInput<
          Input$ProductsSumOrderByAggregateInput>
      get copyWith => CopyWith$Input$ProductsSumOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsSumOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (_$data.containsKey('product_id') !=
        other._$data.containsKey('product_id')) {
      return false;
    }
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$reference = reference;
    final lOther$reference = other.reference;
    if (_$data.containsKey('reference') !=
        other._$data.containsKey('reference')) {
      return false;
    }
    if (l$reference != lOther$reference) {
      return false;
    }
    final l$buyingPrice = buyingPrice;
    final lOther$buyingPrice = other.buyingPrice;
    if (_$data.containsKey('buyingPrice') !=
        other._$data.containsKey('buyingPrice')) {
      return false;
    }
    if (l$buyingPrice != lOther$buyingPrice) {
      return false;
    }
    final l$sellingPrice = sellingPrice;
    final lOther$sellingPrice = other.sellingPrice;
    if (_$data.containsKey('sellingPrice') !=
        other._$data.containsKey('sellingPrice')) {
      return false;
    }
    if (l$sellingPrice != lOther$sellingPrice) {
      return false;
    }
    final l$family_id = family_id;
    final lOther$family_id = other.family_id;
    if (_$data.containsKey('family_id') !=
        other._$data.containsKey('family_id')) {
      return false;
    }
    if (l$family_id != lOther$family_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$product_id = product_id;
    final l$reference = reference;
    final l$buyingPrice = buyingPrice;
    final l$sellingPrice = sellingPrice;
    final l$family_id = family_id;
    return Object.hashAll([
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('reference') ? l$reference : const {},
      _$data.containsKey('buyingPrice') ? l$buyingPrice : const {},
      _$data.containsKey('sellingPrice') ? l$sellingPrice : const {},
      _$data.containsKey('family_id') ? l$family_id : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductsSumOrderByAggregateInput<TRes> {
  factory CopyWith$Input$ProductsSumOrderByAggregateInput(
    Input$ProductsSumOrderByAggregateInput instance,
    TRes Function(Input$ProductsSumOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$ProductsSumOrderByAggregateInput;

  factory CopyWith$Input$ProductsSumOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductsSumOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? reference,
    Enum$SortOrder? buyingPrice,
    Enum$SortOrder? sellingPrice,
    Enum$SortOrder? family_id,
  });
}

class _CopyWithImpl$Input$ProductsSumOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductsSumOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$ProductsSumOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$ProductsSumOrderByAggregateInput _instance;

  final TRes Function(Input$ProductsSumOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? product_id = _undefined,
    Object? reference = _undefined,
    Object? buyingPrice = _undefined,
    Object? sellingPrice = _undefined,
    Object? family_id = _undefined,
  }) =>
      _then(Input$ProductsSumOrderByAggregateInput._({
        ..._instance._$data,
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (reference != _undefined)
          'reference': (reference as Enum$SortOrder?),
        if (buyingPrice != _undefined)
          'buyingPrice': (buyingPrice as Enum$SortOrder?),
        if (sellingPrice != _undefined)
          'sellingPrice': (sellingPrice as Enum$SortOrder?),
        if (family_id != _undefined)
          'family_id': (family_id as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$ProductsSumOrderByAggregateInput<TRes>
    implements CopyWith$Input$ProductsSumOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$ProductsSumOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? reference,
    Enum$SortOrder? buyingPrice,
    Enum$SortOrder? sellingPrice,
    Enum$SortOrder? family_id,
  }) =>
      _res;
}

class Input$ProductsScalarWhereWithAggregatesInput {
  factory Input$ProductsScalarWhereWithAggregatesInput({
    List<Input$ProductsScalarWhereWithAggregatesInput>? AND,
    List<Input$ProductsScalarWhereWithAggregatesInput>? OR,
    List<Input$ProductsScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? product_id,
    Input$IntWithAggregatesFilter? reference,
    Input$StringWithAggregatesFilter? name,
    Input$FloatWithAggregatesFilter? buyingPrice,
    Input$FloatWithAggregatesFilter? sellingPrice,
    Input$StringWithAggregatesFilter? description,
    Input$StringWithAggregatesFilter? picture,
    Input$IntWithAggregatesFilter? family_id,
  }) =>
      Input$ProductsScalarWhereWithAggregatesInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (product_id != null) r'product_id': product_id,
        if (reference != null) r'reference': reference,
        if (name != null) r'name': name,
        if (buyingPrice != null) r'buyingPrice': buyingPrice,
        if (sellingPrice != null) r'sellingPrice': sellingPrice,
        if (description != null) r'description': description,
        if (picture != null) r'picture': picture,
        if (family_id != null) r'family_id': family_id,
      });

  Input$ProductsScalarWhereWithAggregatesInput._(this._$data);

  factory Input$ProductsScalarWhereWithAggregatesInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) => Input$ProductsScalarWhereWithAggregatesInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) => Input$ProductsScalarWhereWithAggregatesInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) => Input$ProductsScalarWhereWithAggregatesInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : Input$IntWithAggregatesFilter.fromJson(
              (l$product_id as Map<String, dynamic>));
    }
    if (data.containsKey('reference')) {
      final l$reference = data['reference'];
      result$data['reference'] = l$reference == null
          ? null
          : Input$IntWithAggregatesFilter.fromJson(
              (l$reference as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringWithAggregatesFilter.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('buyingPrice')) {
      final l$buyingPrice = data['buyingPrice'];
      result$data['buyingPrice'] = l$buyingPrice == null
          ? null
          : Input$FloatWithAggregatesFilter.fromJson(
              (l$buyingPrice as Map<String, dynamic>));
    }
    if (data.containsKey('sellingPrice')) {
      final l$sellingPrice = data['sellingPrice'];
      result$data['sellingPrice'] = l$sellingPrice == null
          ? null
          : Input$FloatWithAggregatesFilter.fromJson(
              (l$sellingPrice as Map<String, dynamic>));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : Input$StringWithAggregatesFilter.fromJson(
              (l$description as Map<String, dynamic>));
    }
    if (data.containsKey('picture')) {
      final l$picture = data['picture'];
      result$data['picture'] = l$picture == null
          ? null
          : Input$StringWithAggregatesFilter.fromJson(
              (l$picture as Map<String, dynamic>));
    }
    if (data.containsKey('family_id')) {
      final l$family_id = data['family_id'];
      result$data['family_id'] = l$family_id == null
          ? null
          : Input$IntWithAggregatesFilter.fromJson(
              (l$family_id as Map<String, dynamic>));
    }
    return Input$ProductsScalarWhereWithAggregatesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ProductsScalarWhereWithAggregatesInput>? get AND =>
      (_$data['AND'] as List<Input$ProductsScalarWhereWithAggregatesInput>?);
  List<Input$ProductsScalarWhereWithAggregatesInput>? get OR =>
      (_$data['OR'] as List<Input$ProductsScalarWhereWithAggregatesInput>?);
  List<Input$ProductsScalarWhereWithAggregatesInput>? get NOT =>
      (_$data['NOT'] as List<Input$ProductsScalarWhereWithAggregatesInput>?);
  Input$IntWithAggregatesFilter? get product_id =>
      (_$data['product_id'] as Input$IntWithAggregatesFilter?);
  Input$IntWithAggregatesFilter? get reference =>
      (_$data['reference'] as Input$IntWithAggregatesFilter?);
  Input$StringWithAggregatesFilter? get name =>
      (_$data['name'] as Input$StringWithAggregatesFilter?);
  Input$FloatWithAggregatesFilter? get buyingPrice =>
      (_$data['buyingPrice'] as Input$FloatWithAggregatesFilter?);
  Input$FloatWithAggregatesFilter? get sellingPrice =>
      (_$data['sellingPrice'] as Input$FloatWithAggregatesFilter?);
  Input$StringWithAggregatesFilter? get description =>
      (_$data['description'] as Input$StringWithAggregatesFilter?);
  Input$StringWithAggregatesFilter? get picture =>
      (_$data['picture'] as Input$StringWithAggregatesFilter?);
  Input$IntWithAggregatesFilter? get family_id =>
      (_$data['family_id'] as Input$IntWithAggregatesFilter?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('AND')) {
      final l$AND = AND;
      result$data['AND'] = l$AND?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('OR')) {
      final l$OR = OR;
      result$data['OR'] = l$OR?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('NOT')) {
      final l$NOT = NOT;
      result$data['NOT'] = l$NOT?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] = l$product_id?.toJson();
    }
    if (_$data.containsKey('reference')) {
      final l$reference = reference;
      result$data['reference'] = l$reference?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('buyingPrice')) {
      final l$buyingPrice = buyingPrice;
      result$data['buyingPrice'] = l$buyingPrice?.toJson();
    }
    if (_$data.containsKey('sellingPrice')) {
      final l$sellingPrice = sellingPrice;
      result$data['sellingPrice'] = l$sellingPrice?.toJson();
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description?.toJson();
    }
    if (_$data.containsKey('picture')) {
      final l$picture = picture;
      result$data['picture'] = l$picture?.toJson();
    }
    if (_$data.containsKey('family_id')) {
      final l$family_id = family_id;
      result$data['family_id'] = l$family_id?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductsScalarWhereWithAggregatesInput<
          Input$ProductsScalarWhereWithAggregatesInput>
      get copyWith => CopyWith$Input$ProductsScalarWhereWithAggregatesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsScalarWhereWithAggregatesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$AND = AND;
    final lOther$AND = other.AND;
    if (_$data.containsKey('AND') != other._$data.containsKey('AND')) {
      return false;
    }
    if (l$AND != null && lOther$AND != null) {
      if (l$AND.length != lOther$AND.length) {
        return false;
      }
      for (int i = 0; i < l$AND.length; i++) {
        final l$AND$entry = l$AND[i];
        final lOther$AND$entry = lOther$AND[i];
        if (l$AND$entry != lOther$AND$entry) {
          return false;
        }
      }
    } else if (l$AND != lOther$AND) {
      return false;
    }
    final l$OR = OR;
    final lOther$OR = other.OR;
    if (_$data.containsKey('OR') != other._$data.containsKey('OR')) {
      return false;
    }
    if (l$OR != null && lOther$OR != null) {
      if (l$OR.length != lOther$OR.length) {
        return false;
      }
      for (int i = 0; i < l$OR.length; i++) {
        final l$OR$entry = l$OR[i];
        final lOther$OR$entry = lOther$OR[i];
        if (l$OR$entry != lOther$OR$entry) {
          return false;
        }
      }
    } else if (l$OR != lOther$OR) {
      return false;
    }
    final l$NOT = NOT;
    final lOther$NOT = other.NOT;
    if (_$data.containsKey('NOT') != other._$data.containsKey('NOT')) {
      return false;
    }
    if (l$NOT != null && lOther$NOT != null) {
      if (l$NOT.length != lOther$NOT.length) {
        return false;
      }
      for (int i = 0; i < l$NOT.length; i++) {
        final l$NOT$entry = l$NOT[i];
        final lOther$NOT$entry = lOther$NOT[i];
        if (l$NOT$entry != lOther$NOT$entry) {
          return false;
        }
      }
    } else if (l$NOT != lOther$NOT) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (_$data.containsKey('product_id') !=
        other._$data.containsKey('product_id')) {
      return false;
    }
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$reference = reference;
    final lOther$reference = other.reference;
    if (_$data.containsKey('reference') !=
        other._$data.containsKey('reference')) {
      return false;
    }
    if (l$reference != lOther$reference) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$buyingPrice = buyingPrice;
    final lOther$buyingPrice = other.buyingPrice;
    if (_$data.containsKey('buyingPrice') !=
        other._$data.containsKey('buyingPrice')) {
      return false;
    }
    if (l$buyingPrice != lOther$buyingPrice) {
      return false;
    }
    final l$sellingPrice = sellingPrice;
    final lOther$sellingPrice = other.sellingPrice;
    if (_$data.containsKey('sellingPrice') !=
        other._$data.containsKey('sellingPrice')) {
      return false;
    }
    if (l$sellingPrice != lOther$sellingPrice) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (_$data.containsKey('picture') != other._$data.containsKey('picture')) {
      return false;
    }
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$family_id = family_id;
    final lOther$family_id = other.family_id;
    if (_$data.containsKey('family_id') !=
        other._$data.containsKey('family_id')) {
      return false;
    }
    if (l$family_id != lOther$family_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$AND = AND;
    final l$OR = OR;
    final l$NOT = NOT;
    final l$product_id = product_id;
    final l$reference = reference;
    final l$name = name;
    final l$buyingPrice = buyingPrice;
    final l$sellingPrice = sellingPrice;
    final l$description = description;
    final l$picture = picture;
    final l$family_id = family_id;
    return Object.hashAll([
      _$data.containsKey('AND')
          ? l$AND == null
              ? null
              : Object.hashAll(l$AND.map((v) => v))
          : const {},
      _$data.containsKey('OR')
          ? l$OR == null
              ? null
              : Object.hashAll(l$OR.map((v) => v))
          : const {},
      _$data.containsKey('NOT')
          ? l$NOT == null
              ? null
              : Object.hashAll(l$NOT.map((v) => v))
          : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('reference') ? l$reference : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('buyingPrice') ? l$buyingPrice : const {},
      _$data.containsKey('sellingPrice') ? l$sellingPrice : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('picture') ? l$picture : const {},
      _$data.containsKey('family_id') ? l$family_id : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductsScalarWhereWithAggregatesInput<TRes> {
  factory CopyWith$Input$ProductsScalarWhereWithAggregatesInput(
    Input$ProductsScalarWhereWithAggregatesInput instance,
    TRes Function(Input$ProductsScalarWhereWithAggregatesInput) then,
  ) = _CopyWithImpl$Input$ProductsScalarWhereWithAggregatesInput;

  factory CopyWith$Input$ProductsScalarWhereWithAggregatesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductsScalarWhereWithAggregatesInput;

  TRes call({
    List<Input$ProductsScalarWhereWithAggregatesInput>? AND,
    List<Input$ProductsScalarWhereWithAggregatesInput>? OR,
    List<Input$ProductsScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? product_id,
    Input$IntWithAggregatesFilter? reference,
    Input$StringWithAggregatesFilter? name,
    Input$FloatWithAggregatesFilter? buyingPrice,
    Input$FloatWithAggregatesFilter? sellingPrice,
    Input$StringWithAggregatesFilter? description,
    Input$StringWithAggregatesFilter? picture,
    Input$IntWithAggregatesFilter? family_id,
  });
  TRes AND(
      Iterable<Input$ProductsScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$ProductsScalarWhereWithAggregatesInput<
                      Input$ProductsScalarWhereWithAggregatesInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$ProductsScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$ProductsScalarWhereWithAggregatesInput<
                      Input$ProductsScalarWhereWithAggregatesInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$ProductsScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$ProductsScalarWhereWithAggregatesInput<
                      Input$ProductsScalarWhereWithAggregatesInput>>?)
          _fn);
  CopyWith$Input$FloatWithAggregatesFilter<TRes> get buyingPrice;
  CopyWith$Input$FloatWithAggregatesFilter<TRes> get sellingPrice;
}

class _CopyWithImpl$Input$ProductsScalarWhereWithAggregatesInput<TRes>
    implements CopyWith$Input$ProductsScalarWhereWithAggregatesInput<TRes> {
  _CopyWithImpl$Input$ProductsScalarWhereWithAggregatesInput(
    this._instance,
    this._then,
  );

  final Input$ProductsScalarWhereWithAggregatesInput _instance;

  final TRes Function(Input$ProductsScalarWhereWithAggregatesInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? product_id = _undefined,
    Object? reference = _undefined,
    Object? name = _undefined,
    Object? buyingPrice = _undefined,
    Object? sellingPrice = _undefined,
    Object? description = _undefined,
    Object? picture = _undefined,
    Object? family_id = _undefined,
  }) =>
      _then(Input$ProductsScalarWhereWithAggregatesInput._({
        ..._instance._$data,
        if (AND != _undefined)
          'AND': (AND as List<Input$ProductsScalarWhereWithAggregatesInput>?),
        if (OR != _undefined)
          'OR': (OR as List<Input$ProductsScalarWhereWithAggregatesInput>?),
        if (NOT != _undefined)
          'NOT': (NOT as List<Input$ProductsScalarWhereWithAggregatesInput>?),
        if (product_id != _undefined)
          'product_id': (product_id as Input$IntWithAggregatesFilter?),
        if (reference != _undefined)
          'reference': (reference as Input$IntWithAggregatesFilter?),
        if (name != _undefined)
          'name': (name as Input$StringWithAggregatesFilter?),
        if (buyingPrice != _undefined)
          'buyingPrice': (buyingPrice as Input$FloatWithAggregatesFilter?),
        if (sellingPrice != _undefined)
          'sellingPrice': (sellingPrice as Input$FloatWithAggregatesFilter?),
        if (description != _undefined)
          'description': (description as Input$StringWithAggregatesFilter?),
        if (picture != _undefined)
          'picture': (picture as Input$StringWithAggregatesFilter?),
        if (family_id != _undefined)
          'family_id': (family_id as Input$IntWithAggregatesFilter?),
      }));
  TRes AND(
          Iterable<Input$ProductsScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductsScalarWhereWithAggregatesInput<
                          Input$ProductsScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND?.map(
              (e) => CopyWith$Input$ProductsScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes OR(
          Iterable<Input$ProductsScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductsScalarWhereWithAggregatesInput<
                          Input$ProductsScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR?.map(
              (e) => CopyWith$Input$ProductsScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes NOT(
          Iterable<Input$ProductsScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductsScalarWhereWithAggregatesInput<
                          Input$ProductsScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT?.map(
              (e) => CopyWith$Input$ProductsScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$FloatWithAggregatesFilter<TRes> get buyingPrice {
    final local$buyingPrice = _instance.buyingPrice;
    return local$buyingPrice == null
        ? CopyWith$Input$FloatWithAggregatesFilter.stub(_then(_instance))
        : CopyWith$Input$FloatWithAggregatesFilter(
            local$buyingPrice, (e) => call(buyingPrice: e));
  }

  CopyWith$Input$FloatWithAggregatesFilter<TRes> get sellingPrice {
    final local$sellingPrice = _instance.sellingPrice;
    return local$sellingPrice == null
        ? CopyWith$Input$FloatWithAggregatesFilter.stub(_then(_instance))
        : CopyWith$Input$FloatWithAggregatesFilter(
            local$sellingPrice, (e) => call(sellingPrice: e));
  }
}

class _CopyWithStubImpl$Input$ProductsScalarWhereWithAggregatesInput<TRes>
    implements CopyWith$Input$ProductsScalarWhereWithAggregatesInput<TRes> {
  _CopyWithStubImpl$Input$ProductsScalarWhereWithAggregatesInput(this._res);

  TRes _res;

  call({
    List<Input$ProductsScalarWhereWithAggregatesInput>? AND,
    List<Input$ProductsScalarWhereWithAggregatesInput>? OR,
    List<Input$ProductsScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? product_id,
    Input$IntWithAggregatesFilter? reference,
    Input$StringWithAggregatesFilter? name,
    Input$FloatWithAggregatesFilter? buyingPrice,
    Input$FloatWithAggregatesFilter? sellingPrice,
    Input$StringWithAggregatesFilter? description,
    Input$StringWithAggregatesFilter? picture,
    Input$IntWithAggregatesFilter? family_id,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
  CopyWith$Input$FloatWithAggregatesFilter<TRes> get buyingPrice =>
      CopyWith$Input$FloatWithAggregatesFilter.stub(_res);
  CopyWith$Input$FloatWithAggregatesFilter<TRes> get sellingPrice =>
      CopyWith$Input$FloatWithAggregatesFilter.stub(_res);
}

enum Enum$ProductFamilyScalarFieldEnum { id, name, $unknown }

String toJson$Enum$ProductFamilyScalarFieldEnum(
    Enum$ProductFamilyScalarFieldEnum e) {
  switch (e) {
    case Enum$ProductFamilyScalarFieldEnum.id:
      return r'id';
    case Enum$ProductFamilyScalarFieldEnum.name:
      return r'name';
    case Enum$ProductFamilyScalarFieldEnum.$unknown:
      return r'$unknown';
  }
}

Enum$ProductFamilyScalarFieldEnum fromJson$Enum$ProductFamilyScalarFieldEnum(
    String value) {
  switch (value) {
    case r'id':
      return Enum$ProductFamilyScalarFieldEnum.id;
    case r'name':
      return Enum$ProductFamilyScalarFieldEnum.name;
    default:
      return Enum$ProductFamilyScalarFieldEnum.$unknown;
  }
}
