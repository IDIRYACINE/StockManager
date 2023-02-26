import 'schema1.graphql.dart';
import 'schema4.graphql.dart';

class Input$PayementsWhereUniqueInput {
  factory Input$PayementsWhereUniqueInput(
          {Input$PayementsTransaction_idPayement_idCompoundUniqueInput?
              transaction_id_payement_id}) =>
      Input$PayementsWhereUniqueInput._({
        if (transaction_id_payement_id != null)
          r'transaction_id_payement_id': transaction_id_payement_id,
      });

  Input$PayementsWhereUniqueInput._(this._$data);

  factory Input$PayementsWhereUniqueInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_id_payement_id')) {
      final l$transaction_id_payement_id = data['transaction_id_payement_id'];
      result$data['transaction_id_payement_id'] =
          l$transaction_id_payement_id == null
              ? null
              : Input$PayementsTransaction_idPayement_idCompoundUniqueInput
                  .fromJson(
                      (l$transaction_id_payement_id as Map<String, dynamic>));
    }
    return Input$PayementsWhereUniqueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PayementsTransaction_idPayement_idCompoundUniqueInput?
      get transaction_id_payement_id => (_$data['transaction_id_payement_id']
          as Input$PayementsTransaction_idPayement_idCompoundUniqueInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_id_payement_id')) {
      final l$transaction_id_payement_id = transaction_id_payement_id;
      result$data['transaction_id_payement_id'] =
          l$transaction_id_payement_id?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PayementsWhereUniqueInput<Input$PayementsWhereUniqueInput>
      get copyWith => CopyWith$Input$PayementsWhereUniqueInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PayementsWhereUniqueInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_id_payement_id = transaction_id_payement_id;
    final lOther$transaction_id_payement_id = other.transaction_id_payement_id;
    if (_$data.containsKey('transaction_id_payement_id') !=
        other._$data.containsKey('transaction_id_payement_id')) {
      return false;
    }
    if (l$transaction_id_payement_id != lOther$transaction_id_payement_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_id_payement_id = transaction_id_payement_id;
    return Object.hashAll([
      _$data.containsKey('transaction_id_payement_id')
          ? l$transaction_id_payement_id
          : const {}
    ]);
  }
}

abstract class CopyWith$Input$PayementsWhereUniqueInput<TRes> {
  factory CopyWith$Input$PayementsWhereUniqueInput(
    Input$PayementsWhereUniqueInput instance,
    TRes Function(Input$PayementsWhereUniqueInput) then,
  ) = _CopyWithImpl$Input$PayementsWhereUniqueInput;

  factory CopyWith$Input$PayementsWhereUniqueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PayementsWhereUniqueInput;

  TRes call(
      {Input$PayementsTransaction_idPayement_idCompoundUniqueInput?
          transaction_id_payement_id});
  CopyWith$Input$PayementsTransaction_idPayement_idCompoundUniqueInput<TRes>
      get transaction_id_payement_id;
}

class _CopyWithImpl$Input$PayementsWhereUniqueInput<TRes>
    implements CopyWith$Input$PayementsWhereUniqueInput<TRes> {
  _CopyWithImpl$Input$PayementsWhereUniqueInput(
    this._instance,
    this._then,
  );

  final Input$PayementsWhereUniqueInput _instance;

  final TRes Function(Input$PayementsWhereUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? transaction_id_payement_id = _undefined}) =>
      _then(Input$PayementsWhereUniqueInput._({
        ..._instance._$data,
        if (transaction_id_payement_id != _undefined)
          'transaction_id_payement_id': (transaction_id_payement_id
              as Input$PayementsTransaction_idPayement_idCompoundUniqueInput?),
      }));
  CopyWith$Input$PayementsTransaction_idPayement_idCompoundUniqueInput<TRes>
      get transaction_id_payement_id {
    final local$transaction_id_payement_id =
        _instance.transaction_id_payement_id;
    return local$transaction_id_payement_id == null
        ? CopyWith$Input$PayementsTransaction_idPayement_idCompoundUniqueInput
            .stub(_then(_instance))
        : CopyWith$Input$PayementsTransaction_idPayement_idCompoundUniqueInput(
            local$transaction_id_payement_id,
            (e) => call(transaction_id_payement_id: e));
  }
}

class _CopyWithStubImpl$Input$PayementsWhereUniqueInput<TRes>
    implements CopyWith$Input$PayementsWhereUniqueInput<TRes> {
  _CopyWithStubImpl$Input$PayementsWhereUniqueInput(this._res);

  TRes _res;

  call(
          {Input$PayementsTransaction_idPayement_idCompoundUniqueInput?
              transaction_id_payement_id}) =>
      _res;
  CopyWith$Input$PayementsTransaction_idPayement_idCompoundUniqueInput<TRes>
      get transaction_id_payement_id =>
          CopyWith$Input$PayementsTransaction_idPayement_idCompoundUniqueInput
              .stub(_res);
}

class Input$PayementsTransaction_idPayement_idCompoundUniqueInput {
  factory Input$PayementsTransaction_idPayement_idCompoundUniqueInput({
    required int transaction_id,
    required int payement_id,
  }) =>
      Input$PayementsTransaction_idPayement_idCompoundUniqueInput._({
        r'transaction_id': transaction_id,
        r'payement_id': payement_id,
      });

  Input$PayementsTransaction_idPayement_idCompoundUniqueInput._(this._$data);

  factory Input$PayementsTransaction_idPayement_idCompoundUniqueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$transaction_id = data['transaction_id'];
    result$data['transaction_id'] = (l$transaction_id as int);
    final l$payement_id = data['payement_id'];
    result$data['payement_id'] = (l$payement_id as int);
    return Input$PayementsTransaction_idPayement_idCompoundUniqueInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  int get transaction_id => (_$data['transaction_id'] as int);
  int get payement_id => (_$data['payement_id'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$transaction_id = transaction_id;
    result$data['transaction_id'] = l$transaction_id;
    final l$payement_id = payement_id;
    result$data['payement_id'] = l$payement_id;
    return result$data;
  }

  CopyWith$Input$PayementsTransaction_idPayement_idCompoundUniqueInput<
          Input$PayementsTransaction_idPayement_idCompoundUniqueInput>
      get copyWith =>
          CopyWith$Input$PayementsTransaction_idPayement_idCompoundUniqueInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$PayementsTransaction_idPayement_idCompoundUniqueInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_id = transaction_id;
    final lOther$transaction_id = other.transaction_id;
    if (l$transaction_id != lOther$transaction_id) {
      return false;
    }
    final l$payement_id = payement_id;
    final lOther$payement_id = other.payement_id;
    if (l$payement_id != lOther$payement_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_id = transaction_id;
    final l$payement_id = payement_id;
    return Object.hashAll([
      l$transaction_id,
      l$payement_id,
    ]);
  }
}

abstract class CopyWith$Input$PayementsTransaction_idPayement_idCompoundUniqueInput<
    TRes> {
  factory CopyWith$Input$PayementsTransaction_idPayement_idCompoundUniqueInput(
    Input$PayementsTransaction_idPayement_idCompoundUniqueInput instance,
    TRes Function(Input$PayementsTransaction_idPayement_idCompoundUniqueInput)
        then,
  ) = _CopyWithImpl$Input$PayementsTransaction_idPayement_idCompoundUniqueInput;

  factory CopyWith$Input$PayementsTransaction_idPayement_idCompoundUniqueInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$PayementsTransaction_idPayement_idCompoundUniqueInput;

  TRes call({
    int? transaction_id,
    int? payement_id,
  });
}

class _CopyWithImpl$Input$PayementsTransaction_idPayement_idCompoundUniqueInput<
        TRes>
    implements
        CopyWith$Input$PayementsTransaction_idPayement_idCompoundUniqueInput<
            TRes> {
  _CopyWithImpl$Input$PayementsTransaction_idPayement_idCompoundUniqueInput(
    this._instance,
    this._then,
  );

  final Input$PayementsTransaction_idPayement_idCompoundUniqueInput _instance;

  final TRes Function(
      Input$PayementsTransaction_idPayement_idCompoundUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? payement_id = _undefined,
  }) =>
      _then(Input$PayementsTransaction_idPayement_idCompoundUniqueInput._({
        ..._instance._$data,
        if (transaction_id != _undefined && transaction_id != null)
          'transaction_id': (transaction_id as int),
        if (payement_id != _undefined && payement_id != null)
          'payement_id': (payement_id as int),
      }));
}

class _CopyWithStubImpl$Input$PayementsTransaction_idPayement_idCompoundUniqueInput<
        TRes>
    implements
        CopyWith$Input$PayementsTransaction_idPayement_idCompoundUniqueInput<
            TRes> {
  _CopyWithStubImpl$Input$PayementsTransaction_idPayement_idCompoundUniqueInput(
      this._res);

  TRes _res;

  call({
    int? transaction_id,
    int? payement_id,
  }) =>
      _res;
}

class Input$CityOrderByWithAggregationInput {
  factory Input$CityOrderByWithAggregationInput({
    Enum$SortOrder? city_id,
    Enum$SortOrder? city_name,
    Input$CityCountOrderByAggregateInput? $_count,
    Input$CityAvgOrderByAggregateInput? $_avg,
    Input$CityMaxOrderByAggregateInput? $_max,
    Input$CityMinOrderByAggregateInput? $_min,
    Input$CitySumOrderByAggregateInput? $_sum,
  }) =>
      Input$CityOrderByWithAggregationInput._({
        if (city_id != null) r'city_id': city_id,
        if (city_name != null) r'city_name': city_name,
        if ($_count != null) r'_count': $_count,
        if ($_avg != null) r'_avg': $_avg,
        if ($_max != null) r'_max': $_max,
        if ($_min != null) r'_min': $_min,
        if ($_sum != null) r'_sum': $_sum,
      });

  Input$CityOrderByWithAggregationInput._(this._$data);

  factory Input$CityOrderByWithAggregationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('city_id')) {
      final l$city_id = data['city_id'];
      result$data['city_id'] = l$city_id == null
          ? null
          : fromJson$Enum$SortOrder((l$city_id as String));
    }
    if (data.containsKey('city_name')) {
      final l$city_name = data['city_name'];
      result$data['city_name'] = l$city_name == null
          ? null
          : fromJson$Enum$SortOrder((l$city_name as String));
    }
    if (data.containsKey('_count')) {
      final l$$_count = data['_count'];
      result$data['_count'] = l$$_count == null
          ? null
          : Input$CityCountOrderByAggregateInput.fromJson(
              (l$$_count as Map<String, dynamic>));
    }
    if (data.containsKey('_avg')) {
      final l$$_avg = data['_avg'];
      result$data['_avg'] = l$$_avg == null
          ? null
          : Input$CityAvgOrderByAggregateInput.fromJson(
              (l$$_avg as Map<String, dynamic>));
    }
    if (data.containsKey('_max')) {
      final l$$_max = data['_max'];
      result$data['_max'] = l$$_max == null
          ? null
          : Input$CityMaxOrderByAggregateInput.fromJson(
              (l$$_max as Map<String, dynamic>));
    }
    if (data.containsKey('_min')) {
      final l$$_min = data['_min'];
      result$data['_min'] = l$$_min == null
          ? null
          : Input$CityMinOrderByAggregateInput.fromJson(
              (l$$_min as Map<String, dynamic>));
    }
    if (data.containsKey('_sum')) {
      final l$$_sum = data['_sum'];
      result$data['_sum'] = l$$_sum == null
          ? null
          : Input$CitySumOrderByAggregateInput.fromJson(
              (l$$_sum as Map<String, dynamic>));
    }
    return Input$CityOrderByWithAggregationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get city_id => (_$data['city_id'] as Enum$SortOrder?);
  Enum$SortOrder? get city_name => (_$data['city_name'] as Enum$SortOrder?);
  Input$CityCountOrderByAggregateInput? get $_count =>
      (_$data['_count'] as Input$CityCountOrderByAggregateInput?);
  Input$CityAvgOrderByAggregateInput? get $_avg =>
      (_$data['_avg'] as Input$CityAvgOrderByAggregateInput?);
  Input$CityMaxOrderByAggregateInput? get $_max =>
      (_$data['_max'] as Input$CityMaxOrderByAggregateInput?);
  Input$CityMinOrderByAggregateInput? get $_min =>
      (_$data['_min'] as Input$CityMinOrderByAggregateInput?);
  Input$CitySumOrderByAggregateInput? get $_sum =>
      (_$data['_sum'] as Input$CitySumOrderByAggregateInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('city_id')) {
      final l$city_id = city_id;
      result$data['city_id'] =
          l$city_id == null ? null : toJson$Enum$SortOrder(l$city_id);
    }
    if (_$data.containsKey('city_name')) {
      final l$city_name = city_name;
      result$data['city_name'] =
          l$city_name == null ? null : toJson$Enum$SortOrder(l$city_name);
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

  CopyWith$Input$CityOrderByWithAggregationInput<
          Input$CityOrderByWithAggregationInput>
      get copyWith => CopyWith$Input$CityOrderByWithAggregationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CityOrderByWithAggregationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$city_id = city_id;
    final lOther$city_id = other.city_id;
    if (_$data.containsKey('city_id') != other._$data.containsKey('city_id')) {
      return false;
    }
    if (l$city_id != lOther$city_id) {
      return false;
    }
    final l$city_name = city_name;
    final lOther$city_name = other.city_name;
    if (_$data.containsKey('city_name') !=
        other._$data.containsKey('city_name')) {
      return false;
    }
    if (l$city_name != lOther$city_name) {
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
    final l$city_id = city_id;
    final l$city_name = city_name;
    final l$$_count = $_count;
    final l$$_avg = $_avg;
    final l$$_max = $_max;
    final l$$_min = $_min;
    final l$$_sum = $_sum;
    return Object.hashAll([
      _$data.containsKey('city_id') ? l$city_id : const {},
      _$data.containsKey('city_name') ? l$city_name : const {},
      _$data.containsKey('_count') ? l$$_count : const {},
      _$data.containsKey('_avg') ? l$$_avg : const {},
      _$data.containsKey('_max') ? l$$_max : const {},
      _$data.containsKey('_min') ? l$$_min : const {},
      _$data.containsKey('_sum') ? l$$_sum : const {},
    ]);
  }
}

abstract class CopyWith$Input$CityOrderByWithAggregationInput<TRes> {
  factory CopyWith$Input$CityOrderByWithAggregationInput(
    Input$CityOrderByWithAggregationInput instance,
    TRes Function(Input$CityOrderByWithAggregationInput) then,
  ) = _CopyWithImpl$Input$CityOrderByWithAggregationInput;

  factory CopyWith$Input$CityOrderByWithAggregationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CityOrderByWithAggregationInput;

  TRes call({
    Enum$SortOrder? city_id,
    Enum$SortOrder? city_name,
    Input$CityCountOrderByAggregateInput? $_count,
    Input$CityAvgOrderByAggregateInput? $_avg,
    Input$CityMaxOrderByAggregateInput? $_max,
    Input$CityMinOrderByAggregateInput? $_min,
    Input$CitySumOrderByAggregateInput? $_sum,
  });
  CopyWith$Input$CityCountOrderByAggregateInput<TRes> get $_count;
  CopyWith$Input$CityAvgOrderByAggregateInput<TRes> get $_avg;
  CopyWith$Input$CityMaxOrderByAggregateInput<TRes> get $_max;
  CopyWith$Input$CityMinOrderByAggregateInput<TRes> get $_min;
  CopyWith$Input$CitySumOrderByAggregateInput<TRes> get $_sum;
}

class _CopyWithImpl$Input$CityOrderByWithAggregationInput<TRes>
    implements CopyWith$Input$CityOrderByWithAggregationInput<TRes> {
  _CopyWithImpl$Input$CityOrderByWithAggregationInput(
    this._instance,
    this._then,
  );

  final Input$CityOrderByWithAggregationInput _instance;

  final TRes Function(Input$CityOrderByWithAggregationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? city_id = _undefined,
    Object? city_name = _undefined,
    Object? $_count = _undefined,
    Object? $_avg = _undefined,
    Object? $_max = _undefined,
    Object? $_min = _undefined,
    Object? $_sum = _undefined,
  }) =>
      _then(Input$CityOrderByWithAggregationInput._({
        ..._instance._$data,
        if (city_id != _undefined) 'city_id': (city_id as Enum$SortOrder?),
        if (city_name != _undefined)
          'city_name': (city_name as Enum$SortOrder?),
        if ($_count != _undefined)
          '_count': ($_count as Input$CityCountOrderByAggregateInput?),
        if ($_avg != _undefined)
          '_avg': ($_avg as Input$CityAvgOrderByAggregateInput?),
        if ($_max != _undefined)
          '_max': ($_max as Input$CityMaxOrderByAggregateInput?),
        if ($_min != _undefined)
          '_min': ($_min as Input$CityMinOrderByAggregateInput?),
        if ($_sum != _undefined)
          '_sum': ($_sum as Input$CitySumOrderByAggregateInput?),
      }));
  CopyWith$Input$CityCountOrderByAggregateInput<TRes> get $_count {
    final local$$_count = _instance.$_count;
    return local$$_count == null
        ? CopyWith$Input$CityCountOrderByAggregateInput.stub(_then(_instance))
        : CopyWith$Input$CityCountOrderByAggregateInput(
            local$$_count, (e) => call($_count: e));
  }

  CopyWith$Input$CityAvgOrderByAggregateInput<TRes> get $_avg {
    final local$$_avg = _instance.$_avg;
    return local$$_avg == null
        ? CopyWith$Input$CityAvgOrderByAggregateInput.stub(_then(_instance))
        : CopyWith$Input$CityAvgOrderByAggregateInput(
            local$$_avg, (e) => call($_avg: e));
  }

  CopyWith$Input$CityMaxOrderByAggregateInput<TRes> get $_max {
    final local$$_max = _instance.$_max;
    return local$$_max == null
        ? CopyWith$Input$CityMaxOrderByAggregateInput.stub(_then(_instance))
        : CopyWith$Input$CityMaxOrderByAggregateInput(
            local$$_max, (e) => call($_max: e));
  }

  CopyWith$Input$CityMinOrderByAggregateInput<TRes> get $_min {
    final local$$_min = _instance.$_min;
    return local$$_min == null
        ? CopyWith$Input$CityMinOrderByAggregateInput.stub(_then(_instance))
        : CopyWith$Input$CityMinOrderByAggregateInput(
            local$$_min, (e) => call($_min: e));
  }

  CopyWith$Input$CitySumOrderByAggregateInput<TRes> get $_sum {
    final local$$_sum = _instance.$_sum;
    return local$$_sum == null
        ? CopyWith$Input$CitySumOrderByAggregateInput.stub(_then(_instance))
        : CopyWith$Input$CitySumOrderByAggregateInput(
            local$$_sum, (e) => call($_sum: e));
  }
}

class _CopyWithStubImpl$Input$CityOrderByWithAggregationInput<TRes>
    implements CopyWith$Input$CityOrderByWithAggregationInput<TRes> {
  _CopyWithStubImpl$Input$CityOrderByWithAggregationInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? city_id,
    Enum$SortOrder? city_name,
    Input$CityCountOrderByAggregateInput? $_count,
    Input$CityAvgOrderByAggregateInput? $_avg,
    Input$CityMaxOrderByAggregateInput? $_max,
    Input$CityMinOrderByAggregateInput? $_min,
    Input$CitySumOrderByAggregateInput? $_sum,
  }) =>
      _res;
  CopyWith$Input$CityCountOrderByAggregateInput<TRes> get $_count =>
      CopyWith$Input$CityCountOrderByAggregateInput.stub(_res);
  CopyWith$Input$CityAvgOrderByAggregateInput<TRes> get $_avg =>
      CopyWith$Input$CityAvgOrderByAggregateInput.stub(_res);
  CopyWith$Input$CityMaxOrderByAggregateInput<TRes> get $_max =>
      CopyWith$Input$CityMaxOrderByAggregateInput.stub(_res);
  CopyWith$Input$CityMinOrderByAggregateInput<TRes> get $_min =>
      CopyWith$Input$CityMinOrderByAggregateInput.stub(_res);
  CopyWith$Input$CitySumOrderByAggregateInput<TRes> get $_sum =>
      CopyWith$Input$CitySumOrderByAggregateInput.stub(_res);
}

class Input$CityCountOrderByAggregateInput {
  factory Input$CityCountOrderByAggregateInput({
    Enum$SortOrder? city_id,
    Enum$SortOrder? city_name,
  }) =>
      Input$CityCountOrderByAggregateInput._({
        if (city_id != null) r'city_id': city_id,
        if (city_name != null) r'city_name': city_name,
      });

  Input$CityCountOrderByAggregateInput._(this._$data);

  factory Input$CityCountOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('city_id')) {
      final l$city_id = data['city_id'];
      result$data['city_id'] = l$city_id == null
          ? null
          : fromJson$Enum$SortOrder((l$city_id as String));
    }
    if (data.containsKey('city_name')) {
      final l$city_name = data['city_name'];
      result$data['city_name'] = l$city_name == null
          ? null
          : fromJson$Enum$SortOrder((l$city_name as String));
    }
    return Input$CityCountOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get city_id => (_$data['city_id'] as Enum$SortOrder?);
  Enum$SortOrder? get city_name => (_$data['city_name'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('city_id')) {
      final l$city_id = city_id;
      result$data['city_id'] =
          l$city_id == null ? null : toJson$Enum$SortOrder(l$city_id);
    }
    if (_$data.containsKey('city_name')) {
      final l$city_name = city_name;
      result$data['city_name'] =
          l$city_name == null ? null : toJson$Enum$SortOrder(l$city_name);
    }
    return result$data;
  }

  CopyWith$Input$CityCountOrderByAggregateInput<
          Input$CityCountOrderByAggregateInput>
      get copyWith => CopyWith$Input$CityCountOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CityCountOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$city_id = city_id;
    final lOther$city_id = other.city_id;
    if (_$data.containsKey('city_id') != other._$data.containsKey('city_id')) {
      return false;
    }
    if (l$city_id != lOther$city_id) {
      return false;
    }
    final l$city_name = city_name;
    final lOther$city_name = other.city_name;
    if (_$data.containsKey('city_name') !=
        other._$data.containsKey('city_name')) {
      return false;
    }
    if (l$city_name != lOther$city_name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$city_id = city_id;
    final l$city_name = city_name;
    return Object.hashAll([
      _$data.containsKey('city_id') ? l$city_id : const {},
      _$data.containsKey('city_name') ? l$city_name : const {},
    ]);
  }
}

abstract class CopyWith$Input$CityCountOrderByAggregateInput<TRes> {
  factory CopyWith$Input$CityCountOrderByAggregateInput(
    Input$CityCountOrderByAggregateInput instance,
    TRes Function(Input$CityCountOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$CityCountOrderByAggregateInput;

  factory CopyWith$Input$CityCountOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CityCountOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? city_id,
    Enum$SortOrder? city_name,
  });
}

class _CopyWithImpl$Input$CityCountOrderByAggregateInput<TRes>
    implements CopyWith$Input$CityCountOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$CityCountOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$CityCountOrderByAggregateInput _instance;

  final TRes Function(Input$CityCountOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? city_id = _undefined,
    Object? city_name = _undefined,
  }) =>
      _then(Input$CityCountOrderByAggregateInput._({
        ..._instance._$data,
        if (city_id != _undefined) 'city_id': (city_id as Enum$SortOrder?),
        if (city_name != _undefined)
          'city_name': (city_name as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$CityCountOrderByAggregateInput<TRes>
    implements CopyWith$Input$CityCountOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$CityCountOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? city_id,
    Enum$SortOrder? city_name,
  }) =>
      _res;
}

class Input$CityAvgOrderByAggregateInput {
  factory Input$CityAvgOrderByAggregateInput({Enum$SortOrder? city_id}) =>
      Input$CityAvgOrderByAggregateInput._({
        if (city_id != null) r'city_id': city_id,
      });

  Input$CityAvgOrderByAggregateInput._(this._$data);

  factory Input$CityAvgOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('city_id')) {
      final l$city_id = data['city_id'];
      result$data['city_id'] = l$city_id == null
          ? null
          : fromJson$Enum$SortOrder((l$city_id as String));
    }
    return Input$CityAvgOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get city_id => (_$data['city_id'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('city_id')) {
      final l$city_id = city_id;
      result$data['city_id'] =
          l$city_id == null ? null : toJson$Enum$SortOrder(l$city_id);
    }
    return result$data;
  }

  CopyWith$Input$CityAvgOrderByAggregateInput<
          Input$CityAvgOrderByAggregateInput>
      get copyWith => CopyWith$Input$CityAvgOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CityAvgOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$city_id = city_id;
    final lOther$city_id = other.city_id;
    if (_$data.containsKey('city_id') != other._$data.containsKey('city_id')) {
      return false;
    }
    if (l$city_id != lOther$city_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$city_id = city_id;
    return Object.hashAll(
        [_$data.containsKey('city_id') ? l$city_id : const {}]);
  }
}

abstract class CopyWith$Input$CityAvgOrderByAggregateInput<TRes> {
  factory CopyWith$Input$CityAvgOrderByAggregateInput(
    Input$CityAvgOrderByAggregateInput instance,
    TRes Function(Input$CityAvgOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$CityAvgOrderByAggregateInput;

  factory CopyWith$Input$CityAvgOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CityAvgOrderByAggregateInput;

  TRes call({Enum$SortOrder? city_id});
}

class _CopyWithImpl$Input$CityAvgOrderByAggregateInput<TRes>
    implements CopyWith$Input$CityAvgOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$CityAvgOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$CityAvgOrderByAggregateInput _instance;

  final TRes Function(Input$CityAvgOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? city_id = _undefined}) =>
      _then(Input$CityAvgOrderByAggregateInput._({
        ..._instance._$data,
        if (city_id != _undefined) 'city_id': (city_id as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$CityAvgOrderByAggregateInput<TRes>
    implements CopyWith$Input$CityAvgOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$CityAvgOrderByAggregateInput(this._res);

  TRes _res;

  call({Enum$SortOrder? city_id}) => _res;
}

class Input$CityMaxOrderByAggregateInput {
  factory Input$CityMaxOrderByAggregateInput({
    Enum$SortOrder? city_id,
    Enum$SortOrder? city_name,
  }) =>
      Input$CityMaxOrderByAggregateInput._({
        if (city_id != null) r'city_id': city_id,
        if (city_name != null) r'city_name': city_name,
      });

  Input$CityMaxOrderByAggregateInput._(this._$data);

  factory Input$CityMaxOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('city_id')) {
      final l$city_id = data['city_id'];
      result$data['city_id'] = l$city_id == null
          ? null
          : fromJson$Enum$SortOrder((l$city_id as String));
    }
    if (data.containsKey('city_name')) {
      final l$city_name = data['city_name'];
      result$data['city_name'] = l$city_name == null
          ? null
          : fromJson$Enum$SortOrder((l$city_name as String));
    }
    return Input$CityMaxOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get city_id => (_$data['city_id'] as Enum$SortOrder?);
  Enum$SortOrder? get city_name => (_$data['city_name'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('city_id')) {
      final l$city_id = city_id;
      result$data['city_id'] =
          l$city_id == null ? null : toJson$Enum$SortOrder(l$city_id);
    }
    if (_$data.containsKey('city_name')) {
      final l$city_name = city_name;
      result$data['city_name'] =
          l$city_name == null ? null : toJson$Enum$SortOrder(l$city_name);
    }
    return result$data;
  }

  CopyWith$Input$CityMaxOrderByAggregateInput<
          Input$CityMaxOrderByAggregateInput>
      get copyWith => CopyWith$Input$CityMaxOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CityMaxOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$city_id = city_id;
    final lOther$city_id = other.city_id;
    if (_$data.containsKey('city_id') != other._$data.containsKey('city_id')) {
      return false;
    }
    if (l$city_id != lOther$city_id) {
      return false;
    }
    final l$city_name = city_name;
    final lOther$city_name = other.city_name;
    if (_$data.containsKey('city_name') !=
        other._$data.containsKey('city_name')) {
      return false;
    }
    if (l$city_name != lOther$city_name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$city_id = city_id;
    final l$city_name = city_name;
    return Object.hashAll([
      _$data.containsKey('city_id') ? l$city_id : const {},
      _$data.containsKey('city_name') ? l$city_name : const {},
    ]);
  }
}

abstract class CopyWith$Input$CityMaxOrderByAggregateInput<TRes> {
  factory CopyWith$Input$CityMaxOrderByAggregateInput(
    Input$CityMaxOrderByAggregateInput instance,
    TRes Function(Input$CityMaxOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$CityMaxOrderByAggregateInput;

  factory CopyWith$Input$CityMaxOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CityMaxOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? city_id,
    Enum$SortOrder? city_name,
  });
}

class _CopyWithImpl$Input$CityMaxOrderByAggregateInput<TRes>
    implements CopyWith$Input$CityMaxOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$CityMaxOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$CityMaxOrderByAggregateInput _instance;

  final TRes Function(Input$CityMaxOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? city_id = _undefined,
    Object? city_name = _undefined,
  }) =>
      _then(Input$CityMaxOrderByAggregateInput._({
        ..._instance._$data,
        if (city_id != _undefined) 'city_id': (city_id as Enum$SortOrder?),
        if (city_name != _undefined)
          'city_name': (city_name as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$CityMaxOrderByAggregateInput<TRes>
    implements CopyWith$Input$CityMaxOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$CityMaxOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? city_id,
    Enum$SortOrder? city_name,
  }) =>
      _res;
}

class Input$CityMinOrderByAggregateInput {
  factory Input$CityMinOrderByAggregateInput({
    Enum$SortOrder? city_id,
    Enum$SortOrder? city_name,
  }) =>
      Input$CityMinOrderByAggregateInput._({
        if (city_id != null) r'city_id': city_id,
        if (city_name != null) r'city_name': city_name,
      });

  Input$CityMinOrderByAggregateInput._(this._$data);

  factory Input$CityMinOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('city_id')) {
      final l$city_id = data['city_id'];
      result$data['city_id'] = l$city_id == null
          ? null
          : fromJson$Enum$SortOrder((l$city_id as String));
    }
    if (data.containsKey('city_name')) {
      final l$city_name = data['city_name'];
      result$data['city_name'] = l$city_name == null
          ? null
          : fromJson$Enum$SortOrder((l$city_name as String));
    }
    return Input$CityMinOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get city_id => (_$data['city_id'] as Enum$SortOrder?);
  Enum$SortOrder? get city_name => (_$data['city_name'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('city_id')) {
      final l$city_id = city_id;
      result$data['city_id'] =
          l$city_id == null ? null : toJson$Enum$SortOrder(l$city_id);
    }
    if (_$data.containsKey('city_name')) {
      final l$city_name = city_name;
      result$data['city_name'] =
          l$city_name == null ? null : toJson$Enum$SortOrder(l$city_name);
    }
    return result$data;
  }

  CopyWith$Input$CityMinOrderByAggregateInput<
          Input$CityMinOrderByAggregateInput>
      get copyWith => CopyWith$Input$CityMinOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CityMinOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$city_id = city_id;
    final lOther$city_id = other.city_id;
    if (_$data.containsKey('city_id') != other._$data.containsKey('city_id')) {
      return false;
    }
    if (l$city_id != lOther$city_id) {
      return false;
    }
    final l$city_name = city_name;
    final lOther$city_name = other.city_name;
    if (_$data.containsKey('city_name') !=
        other._$data.containsKey('city_name')) {
      return false;
    }
    if (l$city_name != lOther$city_name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$city_id = city_id;
    final l$city_name = city_name;
    return Object.hashAll([
      _$data.containsKey('city_id') ? l$city_id : const {},
      _$data.containsKey('city_name') ? l$city_name : const {},
    ]);
  }
}

abstract class CopyWith$Input$CityMinOrderByAggregateInput<TRes> {
  factory CopyWith$Input$CityMinOrderByAggregateInput(
    Input$CityMinOrderByAggregateInput instance,
    TRes Function(Input$CityMinOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$CityMinOrderByAggregateInput;

  factory CopyWith$Input$CityMinOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CityMinOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? city_id,
    Enum$SortOrder? city_name,
  });
}

class _CopyWithImpl$Input$CityMinOrderByAggregateInput<TRes>
    implements CopyWith$Input$CityMinOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$CityMinOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$CityMinOrderByAggregateInput _instance;

  final TRes Function(Input$CityMinOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? city_id = _undefined,
    Object? city_name = _undefined,
  }) =>
      _then(Input$CityMinOrderByAggregateInput._({
        ..._instance._$data,
        if (city_id != _undefined) 'city_id': (city_id as Enum$SortOrder?),
        if (city_name != _undefined)
          'city_name': (city_name as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$CityMinOrderByAggregateInput<TRes>
    implements CopyWith$Input$CityMinOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$CityMinOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? city_id,
    Enum$SortOrder? city_name,
  }) =>
      _res;
}

class Input$CitySumOrderByAggregateInput {
  factory Input$CitySumOrderByAggregateInput({Enum$SortOrder? city_id}) =>
      Input$CitySumOrderByAggregateInput._({
        if (city_id != null) r'city_id': city_id,
      });

  Input$CitySumOrderByAggregateInput._(this._$data);

  factory Input$CitySumOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('city_id')) {
      final l$city_id = data['city_id'];
      result$data['city_id'] = l$city_id == null
          ? null
          : fromJson$Enum$SortOrder((l$city_id as String));
    }
    return Input$CitySumOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get city_id => (_$data['city_id'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('city_id')) {
      final l$city_id = city_id;
      result$data['city_id'] =
          l$city_id == null ? null : toJson$Enum$SortOrder(l$city_id);
    }
    return result$data;
  }

  CopyWith$Input$CitySumOrderByAggregateInput<
          Input$CitySumOrderByAggregateInput>
      get copyWith => CopyWith$Input$CitySumOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CitySumOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$city_id = city_id;
    final lOther$city_id = other.city_id;
    if (_$data.containsKey('city_id') != other._$data.containsKey('city_id')) {
      return false;
    }
    if (l$city_id != lOther$city_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$city_id = city_id;
    return Object.hashAll(
        [_$data.containsKey('city_id') ? l$city_id : const {}]);
  }
}

abstract class CopyWith$Input$CitySumOrderByAggregateInput<TRes> {
  factory CopyWith$Input$CitySumOrderByAggregateInput(
    Input$CitySumOrderByAggregateInput instance,
    TRes Function(Input$CitySumOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$CitySumOrderByAggregateInput;

  factory CopyWith$Input$CitySumOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CitySumOrderByAggregateInput;

  TRes call({Enum$SortOrder? city_id});
}

class _CopyWithImpl$Input$CitySumOrderByAggregateInput<TRes>
    implements CopyWith$Input$CitySumOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$CitySumOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$CitySumOrderByAggregateInput _instance;

  final TRes Function(Input$CitySumOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? city_id = _undefined}) =>
      _then(Input$CitySumOrderByAggregateInput._({
        ..._instance._$data,
        if (city_id != _undefined) 'city_id': (city_id as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$CitySumOrderByAggregateInput<TRes>
    implements CopyWith$Input$CitySumOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$CitySumOrderByAggregateInput(this._res);

  TRes _res;

  call({Enum$SortOrder? city_id}) => _res;
}

class Input$CityScalarWhereWithAggregatesInput {
  factory Input$CityScalarWhereWithAggregatesInput({
    List<Input$CityScalarWhereWithAggregatesInput>? AND,
    List<Input$CityScalarWhereWithAggregatesInput>? OR,
    List<Input$CityScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? city_id,
    Input$StringWithAggregatesFilter? city_name,
  }) =>
      Input$CityScalarWhereWithAggregatesInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (city_id != null) r'city_id': city_id,
        if (city_name != null) r'city_name': city_name,
      });

  Input$CityScalarWhereWithAggregatesInput._(this._$data);

  factory Input$CityScalarWhereWithAggregatesInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) => Input$CityScalarWhereWithAggregatesInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) => Input$CityScalarWhereWithAggregatesInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) => Input$CityScalarWhereWithAggregatesInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('city_id')) {
      final l$city_id = data['city_id'];
      result$data['city_id'] = l$city_id == null
          ? null
          : Input$IntWithAggregatesFilter.fromJson(
              (l$city_id as Map<String, dynamic>));
    }
    if (data.containsKey('city_name')) {
      final l$city_name = data['city_name'];
      result$data['city_name'] = l$city_name == null
          ? null
          : Input$StringWithAggregatesFilter.fromJson(
              (l$city_name as Map<String, dynamic>));
    }
    return Input$CityScalarWhereWithAggregatesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$CityScalarWhereWithAggregatesInput>? get AND =>
      (_$data['AND'] as List<Input$CityScalarWhereWithAggregatesInput>?);
  List<Input$CityScalarWhereWithAggregatesInput>? get OR =>
      (_$data['OR'] as List<Input$CityScalarWhereWithAggregatesInput>?);
  List<Input$CityScalarWhereWithAggregatesInput>? get NOT =>
      (_$data['NOT'] as List<Input$CityScalarWhereWithAggregatesInput>?);
  Input$IntWithAggregatesFilter? get city_id =>
      (_$data['city_id'] as Input$IntWithAggregatesFilter?);
  Input$StringWithAggregatesFilter? get city_name =>
      (_$data['city_name'] as Input$StringWithAggregatesFilter?);
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
    if (_$data.containsKey('city_id')) {
      final l$city_id = city_id;
      result$data['city_id'] = l$city_id?.toJson();
    }
    if (_$data.containsKey('city_name')) {
      final l$city_name = city_name;
      result$data['city_name'] = l$city_name?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$CityScalarWhereWithAggregatesInput<
          Input$CityScalarWhereWithAggregatesInput>
      get copyWith => CopyWith$Input$CityScalarWhereWithAggregatesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CityScalarWhereWithAggregatesInput) ||
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
    final l$city_id = city_id;
    final lOther$city_id = other.city_id;
    if (_$data.containsKey('city_id') != other._$data.containsKey('city_id')) {
      return false;
    }
    if (l$city_id != lOther$city_id) {
      return false;
    }
    final l$city_name = city_name;
    final lOther$city_name = other.city_name;
    if (_$data.containsKey('city_name') !=
        other._$data.containsKey('city_name')) {
      return false;
    }
    if (l$city_name != lOther$city_name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$AND = AND;
    final l$OR = OR;
    final l$NOT = NOT;
    final l$city_id = city_id;
    final l$city_name = city_name;
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
      _$data.containsKey('city_id') ? l$city_id : const {},
      _$data.containsKey('city_name') ? l$city_name : const {},
    ]);
  }
}

abstract class CopyWith$Input$CityScalarWhereWithAggregatesInput<TRes> {
  factory CopyWith$Input$CityScalarWhereWithAggregatesInput(
    Input$CityScalarWhereWithAggregatesInput instance,
    TRes Function(Input$CityScalarWhereWithAggregatesInput) then,
  ) = _CopyWithImpl$Input$CityScalarWhereWithAggregatesInput;

  factory CopyWith$Input$CityScalarWhereWithAggregatesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CityScalarWhereWithAggregatesInput;

  TRes call({
    List<Input$CityScalarWhereWithAggregatesInput>? AND,
    List<Input$CityScalarWhereWithAggregatesInput>? OR,
    List<Input$CityScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? city_id,
    Input$StringWithAggregatesFilter? city_name,
  });
  TRes AND(
      Iterable<Input$CityScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$CityScalarWhereWithAggregatesInput<
                      Input$CityScalarWhereWithAggregatesInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$CityScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$CityScalarWhereWithAggregatesInput<
                      Input$CityScalarWhereWithAggregatesInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$CityScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$CityScalarWhereWithAggregatesInput<
                      Input$CityScalarWhereWithAggregatesInput>>?)
          _fn);
  CopyWith$Input$IntWithAggregatesFilter<TRes> get city_id;
  CopyWith$Input$StringWithAggregatesFilter<TRes> get city_name;
}

class _CopyWithImpl$Input$CityScalarWhereWithAggregatesInput<TRes>
    implements CopyWith$Input$CityScalarWhereWithAggregatesInput<TRes> {
  _CopyWithImpl$Input$CityScalarWhereWithAggregatesInput(
    this._instance,
    this._then,
  );

  final Input$CityScalarWhereWithAggregatesInput _instance;

  final TRes Function(Input$CityScalarWhereWithAggregatesInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? city_id = _undefined,
    Object? city_name = _undefined,
  }) =>
      _then(Input$CityScalarWhereWithAggregatesInput._({
        ..._instance._$data,
        if (AND != _undefined)
          'AND': (AND as List<Input$CityScalarWhereWithAggregatesInput>?),
        if (OR != _undefined)
          'OR': (OR as List<Input$CityScalarWhereWithAggregatesInput>?),
        if (NOT != _undefined)
          'NOT': (NOT as List<Input$CityScalarWhereWithAggregatesInput>?),
        if (city_id != _undefined)
          'city_id': (city_id as Input$IntWithAggregatesFilter?),
        if (city_name != _undefined)
          'city_name': (city_name as Input$StringWithAggregatesFilter?),
      }));
  TRes AND(
          Iterable<Input$CityScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$CityScalarWhereWithAggregatesInput<
                          Input$CityScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND
              ?.map((e) => CopyWith$Input$CityScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes OR(
          Iterable<Input$CityScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$CityScalarWhereWithAggregatesInput<
                          Input$CityScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR
              ?.map((e) => CopyWith$Input$CityScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes NOT(
          Iterable<Input$CityScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$CityScalarWhereWithAggregatesInput<
                          Input$CityScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT
              ?.map((e) => CopyWith$Input$CityScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$IntWithAggregatesFilter<TRes> get city_id {
    final local$city_id = _instance.city_id;
    return local$city_id == null
        ? CopyWith$Input$IntWithAggregatesFilter.stub(_then(_instance))
        : CopyWith$Input$IntWithAggregatesFilter(
            local$city_id, (e) => call(city_id: e));
  }

  CopyWith$Input$StringWithAggregatesFilter<TRes> get city_name {
    final local$city_name = _instance.city_name;
    return local$city_name == null
        ? CopyWith$Input$StringWithAggregatesFilter.stub(_then(_instance))
        : CopyWith$Input$StringWithAggregatesFilter(
            local$city_name, (e) => call(city_name: e));
  }
}

class _CopyWithStubImpl$Input$CityScalarWhereWithAggregatesInput<TRes>
    implements CopyWith$Input$CityScalarWhereWithAggregatesInput<TRes> {
  _CopyWithStubImpl$Input$CityScalarWhereWithAggregatesInput(this._res);

  TRes _res;

  call({
    List<Input$CityScalarWhereWithAggregatesInput>? AND,
    List<Input$CityScalarWhereWithAggregatesInput>? OR,
    List<Input$CityScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? city_id,
    Input$StringWithAggregatesFilter? city_name,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
  CopyWith$Input$IntWithAggregatesFilter<TRes> get city_id =>
      CopyWith$Input$IntWithAggregatesFilter.stub(_res);
  CopyWith$Input$StringWithAggregatesFilter<TRes> get city_name =>
      CopyWith$Input$StringWithAggregatesFilter.stub(_res);
}

class Input$IntWithAggregatesFilter {
  factory Input$IntWithAggregatesFilter({
    int? equals,
    List<int>? $in,
    List<int>? notIn,
    int? lt,
    int? lte,
    int? gt,
    int? gte,
    Input$NestedIntWithAggregatesFilter? not,
    Input$NestedIntFilter? $_count,
    Input$NestedFloatFilter? $_avg,
    Input$NestedIntFilter? $_sum,
    Input$NestedIntFilter? $_min,
    Input$NestedIntFilter? $_max,
  }) =>
      Input$IntWithAggregatesFilter._({
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

  Input$IntWithAggregatesFilter._(this._$data);

  factory Input$IntWithAggregatesFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('equals')) {
      final l$equals = data['equals'];
      result$data['equals'] = (l$equals as int?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] =
          (l$notIn as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as int?);
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as int?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as int?);
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as int?);
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = l$not == null
          ? null
          : Input$NestedIntWithAggregatesFilter.fromJson(
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
          : Input$NestedIntFilter.fromJson((l$$_sum as Map<String, dynamic>));
    }
    if (data.containsKey('_min')) {
      final l$$_min = data['_min'];
      result$data['_min'] = l$$_min == null
          ? null
          : Input$NestedIntFilter.fromJson((l$$_min as Map<String, dynamic>));
    }
    if (data.containsKey('_max')) {
      final l$$_max = data['_max'];
      result$data['_max'] = l$$_max == null
          ? null
          : Input$NestedIntFilter.fromJson((l$$_max as Map<String, dynamic>));
    }
    return Input$IntWithAggregatesFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get equals => (_$data['equals'] as int?);
  List<int>? get $in => (_$data['in'] as List<int>?);
  List<int>? get notIn => (_$data['notIn'] as List<int>?);
  int? get lt => (_$data['lt'] as int?);
  int? get lte => (_$data['lte'] as int?);
  int? get gt => (_$data['gt'] as int?);
  int? get gte => (_$data['gte'] as int?);
  Input$NestedIntWithAggregatesFilter? get not =>
      (_$data['not'] as Input$NestedIntWithAggregatesFilter?);
  Input$NestedIntFilter? get $_count =>
      (_$data['_count'] as Input$NestedIntFilter?);
  Input$NestedFloatFilter? get $_avg =>
      (_$data['_avg'] as Input$NestedFloatFilter?);
  Input$NestedIntFilter? get $_sum =>
      (_$data['_sum'] as Input$NestedIntFilter?);
  Input$NestedIntFilter? get $_min =>
      (_$data['_min'] as Input$NestedIntFilter?);
  Input$NestedIntFilter? get $_max =>
      (_$data['_max'] as Input$NestedIntFilter?);
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

  CopyWith$Input$IntWithAggregatesFilter<Input$IntWithAggregatesFilter>
      get copyWith => CopyWith$Input$IntWithAggregatesFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$IntWithAggregatesFilter) ||
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

abstract class CopyWith$Input$IntWithAggregatesFilter<TRes> {
  factory CopyWith$Input$IntWithAggregatesFilter(
    Input$IntWithAggregatesFilter instance,
    TRes Function(Input$IntWithAggregatesFilter) then,
  ) = _CopyWithImpl$Input$IntWithAggregatesFilter;

  factory CopyWith$Input$IntWithAggregatesFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$IntWithAggregatesFilter;

  TRes call({
    int? equals,
    List<int>? $in,
    List<int>? notIn,
    int? lt,
    int? lte,
    int? gt,
    int? gte,
    Input$NestedIntWithAggregatesFilter? not,
    Input$NestedIntFilter? $_count,
    Input$NestedFloatFilter? $_avg,
    Input$NestedIntFilter? $_sum,
    Input$NestedIntFilter? $_min,
    Input$NestedIntFilter? $_max,
  });
  CopyWith$Input$NestedIntWithAggregatesFilter<TRes> get not;
}

class _CopyWithImpl$Input$IntWithAggregatesFilter<TRes>
    implements CopyWith$Input$IntWithAggregatesFilter<TRes> {
  _CopyWithImpl$Input$IntWithAggregatesFilter(
    this._instance,
    this._then,
  );

  final Input$IntWithAggregatesFilter _instance;

  final TRes Function(Input$IntWithAggregatesFilter) _then;

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
      _then(Input$IntWithAggregatesFilter._({
        ..._instance._$data,
        if (equals != _undefined) 'equals': (equals as int?),
        if ($in != _undefined) 'in': ($in as List<int>?),
        if (notIn != _undefined) 'notIn': (notIn as List<int>?),
        if (lt != _undefined) 'lt': (lt as int?),
        if (lte != _undefined) 'lte': (lte as int?),
        if (gt != _undefined) 'gt': (gt as int?),
        if (gte != _undefined) 'gte': (gte as int?),
        if (not != _undefined)
          'not': (not as Input$NestedIntWithAggregatesFilter?),
        if ($_count != _undefined)
          '_count': ($_count as Input$NestedIntFilter?),
        if ($_avg != _undefined) '_avg': ($_avg as Input$NestedFloatFilter?),
        if ($_sum != _undefined) '_sum': ($_sum as Input$NestedIntFilter?),
        if ($_min != _undefined) '_min': ($_min as Input$NestedIntFilter?),
        if ($_max != _undefined) '_max': ($_max as Input$NestedIntFilter?),
      }));
  CopyWith$Input$NestedIntWithAggregatesFilter<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$NestedIntWithAggregatesFilter.stub(_then(_instance))
        : CopyWith$Input$NestedIntWithAggregatesFilter(
            local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$IntWithAggregatesFilter<TRes>
    implements CopyWith$Input$IntWithAggregatesFilter<TRes> {
  _CopyWithStubImpl$Input$IntWithAggregatesFilter(this._res);

  TRes _res;

  call({
    int? equals,
    List<int>? $in,
    List<int>? notIn,
    int? lt,
    int? lte,
    int? gt,
    int? gte,
    Input$NestedIntWithAggregatesFilter? not,
    Input$NestedIntFilter? $_count,
    Input$NestedFloatFilter? $_avg,
    Input$NestedIntFilter? $_sum,
    Input$NestedIntFilter? $_min,
    Input$NestedIntFilter? $_max,
  }) =>
      _res;
  CopyWith$Input$NestedIntWithAggregatesFilter<TRes> get not =>
      CopyWith$Input$NestedIntWithAggregatesFilter.stub(_res);
}

class Input$NestedIntWithAggregatesFilter {
  factory Input$NestedIntWithAggregatesFilter({
    int? equals,
    List<int>? $in,
    List<int>? notIn,
    int? lt,
    int? lte,
    int? gt,
    int? gte,
    Input$NestedIntWithAggregatesFilter? not,
    Input$NestedIntFilter? $_count,
    Input$NestedFloatFilter? $_avg,
    Input$NestedIntFilter? $_sum,
    Input$NestedIntFilter? $_min,
    Input$NestedIntFilter? $_max,
  }) =>
      Input$NestedIntWithAggregatesFilter._({
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

  Input$NestedIntWithAggregatesFilter._(this._$data);

  factory Input$NestedIntWithAggregatesFilter.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('equals')) {
      final l$equals = data['equals'];
      result$data['equals'] = (l$equals as int?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] =
          (l$notIn as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as int?);
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as int?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as int?);
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as int?);
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = l$not == null
          ? null
          : Input$NestedIntWithAggregatesFilter.fromJson(
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
          : Input$NestedIntFilter.fromJson((l$$_sum as Map<String, dynamic>));
    }
    if (data.containsKey('_min')) {
      final l$$_min = data['_min'];
      result$data['_min'] = l$$_min == null
          ? null
          : Input$NestedIntFilter.fromJson((l$$_min as Map<String, dynamic>));
    }
    if (data.containsKey('_max')) {
      final l$$_max = data['_max'];
      result$data['_max'] = l$$_max == null
          ? null
          : Input$NestedIntFilter.fromJson((l$$_max as Map<String, dynamic>));
    }
    return Input$NestedIntWithAggregatesFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get equals => (_$data['equals'] as int?);
  List<int>? get $in => (_$data['in'] as List<int>?);
  List<int>? get notIn => (_$data['notIn'] as List<int>?);
  int? get lt => (_$data['lt'] as int?);
  int? get lte => (_$data['lte'] as int?);
  int? get gt => (_$data['gt'] as int?);
  int? get gte => (_$data['gte'] as int?);
  Input$NestedIntWithAggregatesFilter? get not =>
      (_$data['not'] as Input$NestedIntWithAggregatesFilter?);
  Input$NestedIntFilter? get $_count =>
      (_$data['_count'] as Input$NestedIntFilter?);
  Input$NestedFloatFilter? get $_avg =>
      (_$data['_avg'] as Input$NestedFloatFilter?);
  Input$NestedIntFilter? get $_sum =>
      (_$data['_sum'] as Input$NestedIntFilter?);
  Input$NestedIntFilter? get $_min =>
      (_$data['_min'] as Input$NestedIntFilter?);
  Input$NestedIntFilter? get $_max =>
      (_$data['_max'] as Input$NestedIntFilter?);
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

  CopyWith$Input$NestedIntWithAggregatesFilter<
          Input$NestedIntWithAggregatesFilter>
      get copyWith => CopyWith$Input$NestedIntWithAggregatesFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$NestedIntWithAggregatesFilter) ||
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

abstract class CopyWith$Input$NestedIntWithAggregatesFilter<TRes> {
  factory CopyWith$Input$NestedIntWithAggregatesFilter(
    Input$NestedIntWithAggregatesFilter instance,
    TRes Function(Input$NestedIntWithAggregatesFilter) then,
  ) = _CopyWithImpl$Input$NestedIntWithAggregatesFilter;

  factory CopyWith$Input$NestedIntWithAggregatesFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$NestedIntWithAggregatesFilter;

  TRes call({
    int? equals,
    List<int>? $in,
    List<int>? notIn,
    int? lt,
    int? lte,
    int? gt,
    int? gte,
    Input$NestedIntWithAggregatesFilter? not,
    Input$NestedIntFilter? $_count,
    Input$NestedFloatFilter? $_avg,
    Input$NestedIntFilter? $_sum,
    Input$NestedIntFilter? $_min,
    Input$NestedIntFilter? $_max,
  });
  CopyWith$Input$NestedIntWithAggregatesFilter<TRes> get not;
}

class _CopyWithImpl$Input$NestedIntWithAggregatesFilter<TRes>
    implements CopyWith$Input$NestedIntWithAggregatesFilter<TRes> {
  _CopyWithImpl$Input$NestedIntWithAggregatesFilter(
    this._instance,
    this._then,
  );

  final Input$NestedIntWithAggregatesFilter _instance;

  final TRes Function(Input$NestedIntWithAggregatesFilter) _then;

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
      _then(Input$NestedIntWithAggregatesFilter._({
        ..._instance._$data,
        if (equals != _undefined) 'equals': (equals as int?),
        if ($in != _undefined) 'in': ($in as List<int>?),
        if (notIn != _undefined) 'notIn': (notIn as List<int>?),
        if (lt != _undefined) 'lt': (lt as int?),
        if (lte != _undefined) 'lte': (lte as int?),
        if (gt != _undefined) 'gt': (gt as int?),
        if (gte != _undefined) 'gte': (gte as int?),
        if (not != _undefined)
          'not': (not as Input$NestedIntWithAggregatesFilter?),
        if ($_count != _undefined)
          '_count': ($_count as Input$NestedIntFilter?),
        if ($_avg != _undefined) '_avg': ($_avg as Input$NestedFloatFilter?),
        if ($_sum != _undefined) '_sum': ($_sum as Input$NestedIntFilter?),
        if ($_min != _undefined) '_min': ($_min as Input$NestedIntFilter?),
        if ($_max != _undefined) '_max': ($_max as Input$NestedIntFilter?),
      }));
  CopyWith$Input$NestedIntWithAggregatesFilter<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$NestedIntWithAggregatesFilter.stub(_then(_instance))
        : CopyWith$Input$NestedIntWithAggregatesFilter(
            local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$NestedIntWithAggregatesFilter<TRes>
    implements CopyWith$Input$NestedIntWithAggregatesFilter<TRes> {
  _CopyWithStubImpl$Input$NestedIntWithAggregatesFilter(this._res);

  TRes _res;

  call({
    int? equals,
    List<int>? $in,
    List<int>? notIn,
    int? lt,
    int? lte,
    int? gt,
    int? gte,
    Input$NestedIntWithAggregatesFilter? not,
    Input$NestedIntFilter? $_count,
    Input$NestedFloatFilter? $_avg,
    Input$NestedIntFilter? $_sum,
    Input$NestedIntFilter? $_min,
    Input$NestedIntFilter? $_max,
  }) =>
      _res;
  CopyWith$Input$NestedIntWithAggregatesFilter<TRes> get not =>
      CopyWith$Input$NestedIntWithAggregatesFilter.stub(_res);
}

class Input$StringWithAggregatesFilter {
  factory Input$StringWithAggregatesFilter({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    String? contains,
    String? startsWith,
    String? endsWith,
    Input$NestedStringWithAggregatesFilter? not,
    Input$NestedIntFilter? $_count,
    Input$NestedStringFilter? $_min,
    Input$NestedStringFilter? $_max,
  }) =>
      Input$StringWithAggregatesFilter._({
        if (equals != null) r'equals': equals,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (contains != null) r'contains': contains,
        if (startsWith != null) r'startsWith': startsWith,
        if (endsWith != null) r'endsWith': endsWith,
        if (not != null) r'not': not,
        if ($_count != null) r'_count': $_count,
        if ($_min != null) r'_min': $_min,
        if ($_max != null) r'_max': $_max,
      });

  Input$StringWithAggregatesFilter._(this._$data);

  factory Input$StringWithAggregatesFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('equals')) {
      final l$equals = data['equals'];
      result$data['equals'] = (l$equals as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] =
          (l$notIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as String?);
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as String?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as String?);
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as String?);
    }
    if (data.containsKey('contains')) {
      final l$contains = data['contains'];
      result$data['contains'] = (l$contains as String?);
    }
    if (data.containsKey('startsWith')) {
      final l$startsWith = data['startsWith'];
      result$data['startsWith'] = (l$startsWith as String?);
    }
    if (data.containsKey('endsWith')) {
      final l$endsWith = data['endsWith'];
      result$data['endsWith'] = (l$endsWith as String?);
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = l$not == null
          ? null
          : Input$NestedStringWithAggregatesFilter.fromJson(
              (l$not as Map<String, dynamic>));
    }
    if (data.containsKey('_count')) {
      final l$$_count = data['_count'];
      result$data['_count'] = l$$_count == null
          ? null
          : Input$NestedIntFilter.fromJson((l$$_count as Map<String, dynamic>));
    }
    if (data.containsKey('_min')) {
      final l$$_min = data['_min'];
      result$data['_min'] = l$$_min == null
          ? null
          : Input$NestedStringFilter.fromJson(
              (l$$_min as Map<String, dynamic>));
    }
    if (data.containsKey('_max')) {
      final l$$_max = data['_max'];
      result$data['_max'] = l$$_max == null
          ? null
          : Input$NestedStringFilter.fromJson(
              (l$$_max as Map<String, dynamic>));
    }
    return Input$StringWithAggregatesFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get equals => (_$data['equals'] as String?);
  List<String>? get $in => (_$data['in'] as List<String>?);
  List<String>? get notIn => (_$data['notIn'] as List<String>?);
  String? get lt => (_$data['lt'] as String?);
  String? get lte => (_$data['lte'] as String?);
  String? get gt => (_$data['gt'] as String?);
  String? get gte => (_$data['gte'] as String?);
  String? get contains => (_$data['contains'] as String?);
  String? get startsWith => (_$data['startsWith'] as String?);
  String? get endsWith => (_$data['endsWith'] as String?);
  Input$NestedStringWithAggregatesFilter? get not =>
      (_$data['not'] as Input$NestedStringWithAggregatesFilter?);
  Input$NestedIntFilter? get $_count =>
      (_$data['_count'] as Input$NestedIntFilter?);
  Input$NestedStringFilter? get $_min =>
      (_$data['_min'] as Input$NestedStringFilter?);
  Input$NestedStringFilter? get $_max =>
      (_$data['_max'] as Input$NestedStringFilter?);
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
    if (_$data.containsKey('contains')) {
      final l$contains = contains;
      result$data['contains'] = l$contains;
    }
    if (_$data.containsKey('startsWith')) {
      final l$startsWith = startsWith;
      result$data['startsWith'] = l$startsWith;
    }
    if (_$data.containsKey('endsWith')) {
      final l$endsWith = endsWith;
      result$data['endsWith'] = l$endsWith;
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.toJson();
    }
    if (_$data.containsKey('_count')) {
      final l$$_count = $_count;
      result$data['_count'] = l$$_count?.toJson();
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

  CopyWith$Input$StringWithAggregatesFilter<Input$StringWithAggregatesFilter>
      get copyWith => CopyWith$Input$StringWithAggregatesFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$StringWithAggregatesFilter) ||
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
    final l$contains = contains;
    final lOther$contains = other.contains;
    if (_$data.containsKey('contains') !=
        other._$data.containsKey('contains')) {
      return false;
    }
    if (l$contains != lOther$contains) {
      return false;
    }
    final l$startsWith = startsWith;
    final lOther$startsWith = other.startsWith;
    if (_$data.containsKey('startsWith') !=
        other._$data.containsKey('startsWith')) {
      return false;
    }
    if (l$startsWith != lOther$startsWith) {
      return false;
    }
    final l$endsWith = endsWith;
    final lOther$endsWith = other.endsWith;
    if (_$data.containsKey('endsWith') !=
        other._$data.containsKey('endsWith')) {
      return false;
    }
    if (l$endsWith != lOther$endsWith) {
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
    final l$contains = contains;
    final l$startsWith = startsWith;
    final l$endsWith = endsWith;
    final l$not = not;
    final l$$_count = $_count;
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
      _$data.containsKey('contains') ? l$contains : const {},
      _$data.containsKey('startsWith') ? l$startsWith : const {},
      _$data.containsKey('endsWith') ? l$endsWith : const {},
      _$data.containsKey('not') ? l$not : const {},
      _$data.containsKey('_count') ? l$$_count : const {},
      _$data.containsKey('_min') ? l$$_min : const {},
      _$data.containsKey('_max') ? l$$_max : const {},
    ]);
  }
}

abstract class CopyWith$Input$StringWithAggregatesFilter<TRes> {
  factory CopyWith$Input$StringWithAggregatesFilter(
    Input$StringWithAggregatesFilter instance,
    TRes Function(Input$StringWithAggregatesFilter) then,
  ) = _CopyWithImpl$Input$StringWithAggregatesFilter;

  factory CopyWith$Input$StringWithAggregatesFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$StringWithAggregatesFilter;

  TRes call({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    String? contains,
    String? startsWith,
    String? endsWith,
    Input$NestedStringWithAggregatesFilter? not,
    Input$NestedIntFilter? $_count,
    Input$NestedStringFilter? $_min,
    Input$NestedStringFilter? $_max,
  });
  CopyWith$Input$NestedStringWithAggregatesFilter<TRes> get not;
}

class _CopyWithImpl$Input$StringWithAggregatesFilter<TRes>
    implements CopyWith$Input$StringWithAggregatesFilter<TRes> {
  _CopyWithImpl$Input$StringWithAggregatesFilter(
    this._instance,
    this._then,
  );

  final Input$StringWithAggregatesFilter _instance;

  final TRes Function(Input$StringWithAggregatesFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? equals = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
    Object? lt = _undefined,
    Object? lte = _undefined,
    Object? gt = _undefined,
    Object? gte = _undefined,
    Object? contains = _undefined,
    Object? startsWith = _undefined,
    Object? endsWith = _undefined,
    Object? not = _undefined,
    Object? $_count = _undefined,
    Object? $_min = _undefined,
    Object? $_max = _undefined,
  }) =>
      _then(Input$StringWithAggregatesFilter._({
        ..._instance._$data,
        if (equals != _undefined) 'equals': (equals as String?),
        if ($in != _undefined) 'in': ($in as List<String>?),
        if (notIn != _undefined) 'notIn': (notIn as List<String>?),
        if (lt != _undefined) 'lt': (lt as String?),
        if (lte != _undefined) 'lte': (lte as String?),
        if (gt != _undefined) 'gt': (gt as String?),
        if (gte != _undefined) 'gte': (gte as String?),
        if (contains != _undefined) 'contains': (contains as String?),
        if (startsWith != _undefined) 'startsWith': (startsWith as String?),
        if (endsWith != _undefined) 'endsWith': (endsWith as String?),
        if (not != _undefined)
          'not': (not as Input$NestedStringWithAggregatesFilter?),
        if ($_count != _undefined)
          '_count': ($_count as Input$NestedIntFilter?),
        if ($_min != _undefined) '_min': ($_min as Input$NestedStringFilter?),
        if ($_max != _undefined) '_max': ($_max as Input$NestedStringFilter?),
      }));
  CopyWith$Input$NestedStringWithAggregatesFilter<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$NestedStringWithAggregatesFilter.stub(_then(_instance))
        : CopyWith$Input$NestedStringWithAggregatesFilter(
            local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$StringWithAggregatesFilter<TRes>
    implements CopyWith$Input$StringWithAggregatesFilter<TRes> {
  _CopyWithStubImpl$Input$StringWithAggregatesFilter(this._res);

  TRes _res;

  call({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    String? contains,
    String? startsWith,
    String? endsWith,
    Input$NestedStringWithAggregatesFilter? not,
    Input$NestedIntFilter? $_count,
    Input$NestedStringFilter? $_min,
    Input$NestedStringFilter? $_max,
  }) =>
      _res;
  CopyWith$Input$NestedStringWithAggregatesFilter<TRes> get not =>
      CopyWith$Input$NestedStringWithAggregatesFilter.stub(_res);
}

class Input$NestedStringWithAggregatesFilter {
  factory Input$NestedStringWithAggregatesFilter({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    String? contains,
    String? startsWith,
    String? endsWith,
    Input$NestedStringWithAggregatesFilter? not,
    Input$NestedIntFilter? $_count,
    Input$NestedStringFilter? $_min,
    Input$NestedStringFilter? $_max,
  }) =>
      Input$NestedStringWithAggregatesFilter._({
        if (equals != null) r'equals': equals,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (contains != null) r'contains': contains,
        if (startsWith != null) r'startsWith': startsWith,
        if (endsWith != null) r'endsWith': endsWith,
        if (not != null) r'not': not,
        if ($_count != null) r'_count': $_count,
        if ($_min != null) r'_min': $_min,
        if ($_max != null) r'_max': $_max,
      });

  Input$NestedStringWithAggregatesFilter._(this._$data);

  factory Input$NestedStringWithAggregatesFilter.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('equals')) {
      final l$equals = data['equals'];
      result$data['equals'] = (l$equals as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] =
          (l$notIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as String?);
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as String?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as String?);
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as String?);
    }
    if (data.containsKey('contains')) {
      final l$contains = data['contains'];
      result$data['contains'] = (l$contains as String?);
    }
    if (data.containsKey('startsWith')) {
      final l$startsWith = data['startsWith'];
      result$data['startsWith'] = (l$startsWith as String?);
    }
    if (data.containsKey('endsWith')) {
      final l$endsWith = data['endsWith'];
      result$data['endsWith'] = (l$endsWith as String?);
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = l$not == null
          ? null
          : Input$NestedStringWithAggregatesFilter.fromJson(
              (l$not as Map<String, dynamic>));
    }
    if (data.containsKey('_count')) {
      final l$$_count = data['_count'];
      result$data['_count'] = l$$_count == null
          ? null
          : Input$NestedIntFilter.fromJson((l$$_count as Map<String, dynamic>));
    }
    if (data.containsKey('_min')) {
      final l$$_min = data['_min'];
      result$data['_min'] = l$$_min == null
          ? null
          : Input$NestedStringFilter.fromJson(
              (l$$_min as Map<String, dynamic>));
    }
    if (data.containsKey('_max')) {
      final l$$_max = data['_max'];
      result$data['_max'] = l$$_max == null
          ? null
          : Input$NestedStringFilter.fromJson(
              (l$$_max as Map<String, dynamic>));
    }
    return Input$NestedStringWithAggregatesFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get equals => (_$data['equals'] as String?);
  List<String>? get $in => (_$data['in'] as List<String>?);
  List<String>? get notIn => (_$data['notIn'] as List<String>?);
  String? get lt => (_$data['lt'] as String?);
  String? get lte => (_$data['lte'] as String?);
  String? get gt => (_$data['gt'] as String?);
  String? get gte => (_$data['gte'] as String?);
  String? get contains => (_$data['contains'] as String?);
  String? get startsWith => (_$data['startsWith'] as String?);
  String? get endsWith => (_$data['endsWith'] as String?);
  Input$NestedStringWithAggregatesFilter? get not =>
      (_$data['not'] as Input$NestedStringWithAggregatesFilter?);
  Input$NestedIntFilter? get $_count =>
      (_$data['_count'] as Input$NestedIntFilter?);
  Input$NestedStringFilter? get $_min =>
      (_$data['_min'] as Input$NestedStringFilter?);
  Input$NestedStringFilter? get $_max =>
      (_$data['_max'] as Input$NestedStringFilter?);
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
    if (_$data.containsKey('contains')) {
      final l$contains = contains;
      result$data['contains'] = l$contains;
    }
    if (_$data.containsKey('startsWith')) {
      final l$startsWith = startsWith;
      result$data['startsWith'] = l$startsWith;
    }
    if (_$data.containsKey('endsWith')) {
      final l$endsWith = endsWith;
      result$data['endsWith'] = l$endsWith;
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.toJson();
    }
    if (_$data.containsKey('_count')) {
      final l$$_count = $_count;
      result$data['_count'] = l$$_count?.toJson();
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

  CopyWith$Input$NestedStringWithAggregatesFilter<
          Input$NestedStringWithAggregatesFilter>
      get copyWith => CopyWith$Input$NestedStringWithAggregatesFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$NestedStringWithAggregatesFilter) ||
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
    final l$contains = contains;
    final lOther$contains = other.contains;
    if (_$data.containsKey('contains') !=
        other._$data.containsKey('contains')) {
      return false;
    }
    if (l$contains != lOther$contains) {
      return false;
    }
    final l$startsWith = startsWith;
    final lOther$startsWith = other.startsWith;
    if (_$data.containsKey('startsWith') !=
        other._$data.containsKey('startsWith')) {
      return false;
    }
    if (l$startsWith != lOther$startsWith) {
      return false;
    }
    final l$endsWith = endsWith;
    final lOther$endsWith = other.endsWith;
    if (_$data.containsKey('endsWith') !=
        other._$data.containsKey('endsWith')) {
      return false;
    }
    if (l$endsWith != lOther$endsWith) {
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
    final l$contains = contains;
    final l$startsWith = startsWith;
    final l$endsWith = endsWith;
    final l$not = not;
    final l$$_count = $_count;
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
      _$data.containsKey('contains') ? l$contains : const {},
      _$data.containsKey('startsWith') ? l$startsWith : const {},
      _$data.containsKey('endsWith') ? l$endsWith : const {},
      _$data.containsKey('not') ? l$not : const {},
      _$data.containsKey('_count') ? l$$_count : const {},
      _$data.containsKey('_min') ? l$$_min : const {},
      _$data.containsKey('_max') ? l$$_max : const {},
    ]);
  }
}

abstract class CopyWith$Input$NestedStringWithAggregatesFilter<TRes> {
  factory CopyWith$Input$NestedStringWithAggregatesFilter(
    Input$NestedStringWithAggregatesFilter instance,
    TRes Function(Input$NestedStringWithAggregatesFilter) then,
  ) = _CopyWithImpl$Input$NestedStringWithAggregatesFilter;

  factory CopyWith$Input$NestedStringWithAggregatesFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$NestedStringWithAggregatesFilter;

  TRes call({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    String? contains,
    String? startsWith,
    String? endsWith,
    Input$NestedStringWithAggregatesFilter? not,
    Input$NestedIntFilter? $_count,
    Input$NestedStringFilter? $_min,
    Input$NestedStringFilter? $_max,
  });
  CopyWith$Input$NestedStringWithAggregatesFilter<TRes> get not;
}

class _CopyWithImpl$Input$NestedStringWithAggregatesFilter<TRes>
    implements CopyWith$Input$NestedStringWithAggregatesFilter<TRes> {
  _CopyWithImpl$Input$NestedStringWithAggregatesFilter(
    this._instance,
    this._then,
  );

  final Input$NestedStringWithAggregatesFilter _instance;

  final TRes Function(Input$NestedStringWithAggregatesFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? equals = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
    Object? lt = _undefined,
    Object? lte = _undefined,
    Object? gt = _undefined,
    Object? gte = _undefined,
    Object? contains = _undefined,
    Object? startsWith = _undefined,
    Object? endsWith = _undefined,
    Object? not = _undefined,
    Object? $_count = _undefined,
    Object? $_min = _undefined,
    Object? $_max = _undefined,
  }) =>
      _then(Input$NestedStringWithAggregatesFilter._({
        ..._instance._$data,
        if (equals != _undefined) 'equals': (equals as String?),
        if ($in != _undefined) 'in': ($in as List<String>?),
        if (notIn != _undefined) 'notIn': (notIn as List<String>?),
        if (lt != _undefined) 'lt': (lt as String?),
        if (lte != _undefined) 'lte': (lte as String?),
        if (gt != _undefined) 'gt': (gt as String?),
        if (gte != _undefined) 'gte': (gte as String?),
        if (contains != _undefined) 'contains': (contains as String?),
        if (startsWith != _undefined) 'startsWith': (startsWith as String?),
        if (endsWith != _undefined) 'endsWith': (endsWith as String?),
        if (not != _undefined)
          'not': (not as Input$NestedStringWithAggregatesFilter?),
        if ($_count != _undefined)
          '_count': ($_count as Input$NestedIntFilter?),
        if ($_min != _undefined) '_min': ($_min as Input$NestedStringFilter?),
        if ($_max != _undefined) '_max': ($_max as Input$NestedStringFilter?),
      }));
  CopyWith$Input$NestedStringWithAggregatesFilter<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$NestedStringWithAggregatesFilter.stub(_then(_instance))
        : CopyWith$Input$NestedStringWithAggregatesFilter(
            local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$NestedStringWithAggregatesFilter<TRes>
    implements CopyWith$Input$NestedStringWithAggregatesFilter<TRes> {
  _CopyWithStubImpl$Input$NestedStringWithAggregatesFilter(this._res);

  TRes _res;

  call({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    String? contains,
    String? startsWith,
    String? endsWith,
    Input$NestedStringWithAggregatesFilter? not,
    Input$NestedIntFilter? $_count,
    Input$NestedStringFilter? $_min,
    Input$NestedStringFilter? $_max,
  }) =>
      _res;
  CopyWith$Input$NestedStringWithAggregatesFilter<TRes> get not =>
      CopyWith$Input$NestedStringWithAggregatesFilter.stub(_res);
}

class Input$ColorsWhereInput {
  factory Input$ColorsWhereInput({
    List<Input$ColorsWhereInput>? AND,
    List<Input$ColorsWhereInput>? OR,
    List<Input$ColorsWhereInput>? NOT,
    Input$IntFilter? id,
    Input$StringFilter? color,
    Input$ProductModelListRelationFilter? ProductModel,
  }) =>
      Input$ColorsWhereInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (id != null) r'id': id,
        if (color != null) r'color': color,
        if (ProductModel != null) r'ProductModel': ProductModel,
      });

  Input$ColorsWhereInput._(this._$data);

  factory Input$ColorsWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) =>
              Input$ColorsWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) =>
              Input$ColorsWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) =>
              Input$ColorsWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IntFilter.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input$StringFilter.fromJson((l$color as Map<String, dynamic>));
    }
    if (data.containsKey('ProductModel')) {
      final l$ProductModel = data['ProductModel'];
      result$data['ProductModel'] = l$ProductModel == null
          ? null
          : Input$ProductModelListRelationFilter.fromJson(
              (l$ProductModel as Map<String, dynamic>));
    }
    return Input$ColorsWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ColorsWhereInput>? get AND =>
      (_$data['AND'] as List<Input$ColorsWhereInput>?);
  List<Input$ColorsWhereInput>? get OR =>
      (_$data['OR'] as List<Input$ColorsWhereInput>?);
  List<Input$ColorsWhereInput>? get NOT =>
      (_$data['NOT'] as List<Input$ColorsWhereInput>?);
  Input$IntFilter? get id => (_$data['id'] as Input$IntFilter?);
  Input$StringFilter? get color => (_$data['color'] as Input$StringFilter?);
  Input$ProductModelListRelationFilter? get ProductModel =>
      (_$data['ProductModel'] as Input$ProductModelListRelationFilter?);
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
    if (_$data.containsKey('ProductModel')) {
      final l$ProductModel = ProductModel;
      result$data['ProductModel'] = l$ProductModel?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ColorsWhereInput<Input$ColorsWhereInput> get copyWith =>
      CopyWith$Input$ColorsWhereInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ColorsWhereInput) ||
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
    final l$ProductModel = ProductModel;
    final lOther$ProductModel = other.ProductModel;
    if (_$data.containsKey('ProductModel') !=
        other._$data.containsKey('ProductModel')) {
      return false;
    }
    if (l$ProductModel != lOther$ProductModel) {
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
    final l$ProductModel = ProductModel;
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
      _$data.containsKey('ProductModel') ? l$ProductModel : const {},
    ]);
  }
}

abstract class CopyWith$Input$ColorsWhereInput<TRes> {
  factory CopyWith$Input$ColorsWhereInput(
    Input$ColorsWhereInput instance,
    TRes Function(Input$ColorsWhereInput) then,
  ) = _CopyWithImpl$Input$ColorsWhereInput;

  factory CopyWith$Input$ColorsWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ColorsWhereInput;

  TRes call({
    List<Input$ColorsWhereInput>? AND,
    List<Input$ColorsWhereInput>? OR,
    List<Input$ColorsWhereInput>? NOT,
    Input$IntFilter? id,
    Input$StringFilter? color,
    Input$ProductModelListRelationFilter? ProductModel,
  });
  TRes AND(
      Iterable<Input$ColorsWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ColorsWhereInput<Input$ColorsWhereInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$ColorsWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ColorsWhereInput<Input$ColorsWhereInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$ColorsWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ColorsWhereInput<Input$ColorsWhereInput>>?)
          _fn);
  CopyWith$Input$ProductModelListRelationFilter<TRes> get ProductModel;
}

class _CopyWithImpl$Input$ColorsWhereInput<TRes>
    implements CopyWith$Input$ColorsWhereInput<TRes> {
  _CopyWithImpl$Input$ColorsWhereInput(
    this._instance,
    this._then,
  );

  final Input$ColorsWhereInput _instance;

  final TRes Function(Input$ColorsWhereInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? id = _undefined,
    Object? color = _undefined,
    Object? ProductModel = _undefined,
  }) =>
      _then(Input$ColorsWhereInput._({
        ..._instance._$data,
        if (AND != _undefined) 'AND': (AND as List<Input$ColorsWhereInput>?),
        if (OR != _undefined) 'OR': (OR as List<Input$ColorsWhereInput>?),
        if (NOT != _undefined) 'NOT': (NOT as List<Input$ColorsWhereInput>?),
        if (id != _undefined) 'id': (id as Input$IntFilter?),
        if (color != _undefined) 'color': (color as Input$StringFilter?),
        if (ProductModel != _undefined)
          'ProductModel':
              (ProductModel as Input$ProductModelListRelationFilter?),
      }));
  TRes AND(
          Iterable<Input$ColorsWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ColorsWhereInput<Input$ColorsWhereInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND?.map((e) => CopyWith$Input$ColorsWhereInput(
                e,
                (i) => i,
              )))?.toList());
  TRes OR(
          Iterable<Input$ColorsWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ColorsWhereInput<Input$ColorsWhereInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR?.map((e) => CopyWith$Input$ColorsWhereInput(
                e,
                (i) => i,
              )))?.toList());
  TRes NOT(
          Iterable<Input$ColorsWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ColorsWhereInput<Input$ColorsWhereInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT?.map((e) => CopyWith$Input$ColorsWhereInput(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Input$ProductModelListRelationFilter<TRes> get ProductModel {
    final local$ProductModel = _instance.ProductModel;
    return local$ProductModel == null
        ? CopyWith$Input$ProductModelListRelationFilter.stub(_then(_instance))
        : CopyWith$Input$ProductModelListRelationFilter(
            local$ProductModel, (e) => call(ProductModel: e));
  }
}

class _CopyWithStubImpl$Input$ColorsWhereInput<TRes>
    implements CopyWith$Input$ColorsWhereInput<TRes> {
  _CopyWithStubImpl$Input$ColorsWhereInput(this._res);

  TRes _res;

  call({
    List<Input$ColorsWhereInput>? AND,
    List<Input$ColorsWhereInput>? OR,
    List<Input$ColorsWhereInput>? NOT,
    Input$IntFilter? id,
    Input$StringFilter? color,
    Input$ProductModelListRelationFilter? ProductModel,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
  CopyWith$Input$ProductModelListRelationFilter<TRes> get ProductModel =>
      CopyWith$Input$ProductModelListRelationFilter.stub(_res);
}

class Input$ProductModelListRelationFilter {
  factory Input$ProductModelListRelationFilter({
    Input$ProductModelWhereInput? every,
    Input$ProductModelWhereInput? some,
    Input$ProductModelWhereInput? none,
  }) =>
      Input$ProductModelListRelationFilter._({
        if (every != null) r'every': every,
        if (some != null) r'some': some,
        if (none != null) r'none': none,
      });

  Input$ProductModelListRelationFilter._(this._$data);

  factory Input$ProductModelListRelationFilter.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('every')) {
      final l$every = data['every'];
      result$data['every'] = l$every == null
          ? null
          : Input$ProductModelWhereInput.fromJson(
              (l$every as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$ProductModelWhereInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$ProductModelWhereInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    return Input$ProductModelListRelationFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductModelWhereInput? get every =>
      (_$data['every'] as Input$ProductModelWhereInput?);
  Input$ProductModelWhereInput? get some =>
      (_$data['some'] as Input$ProductModelWhereInput?);
  Input$ProductModelWhereInput? get none =>
      (_$data['none'] as Input$ProductModelWhereInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('every')) {
      final l$every = every;
      result$data['every'] = l$every?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductModelListRelationFilter<
          Input$ProductModelListRelationFilter>
      get copyWith => CopyWith$Input$ProductModelListRelationFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelListRelationFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$every = every;
    final lOther$every = other.every;
    if (_$data.containsKey('every') != other._$data.containsKey('every')) {
      return false;
    }
    if (l$every != lOther$every) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$every = every;
    final l$some = some;
    final l$none = none;
    return Object.hashAll([
      _$data.containsKey('every') ? l$every : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('none') ? l$none : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductModelListRelationFilter<TRes> {
  factory CopyWith$Input$ProductModelListRelationFilter(
    Input$ProductModelListRelationFilter instance,
    TRes Function(Input$ProductModelListRelationFilter) then,
  ) = _CopyWithImpl$Input$ProductModelListRelationFilter;

  factory CopyWith$Input$ProductModelListRelationFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductModelListRelationFilter;

  TRes call({
    Input$ProductModelWhereInput? every,
    Input$ProductModelWhereInput? some,
    Input$ProductModelWhereInput? none,
  });
  CopyWith$Input$ProductModelWhereInput<TRes> get every;
  CopyWith$Input$ProductModelWhereInput<TRes> get some;
  CopyWith$Input$ProductModelWhereInput<TRes> get none;
}

class _CopyWithImpl$Input$ProductModelListRelationFilter<TRes>
    implements CopyWith$Input$ProductModelListRelationFilter<TRes> {
  _CopyWithImpl$Input$ProductModelListRelationFilter(
    this._instance,
    this._then,
  );

  final Input$ProductModelListRelationFilter _instance;

  final TRes Function(Input$ProductModelListRelationFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? every = _undefined,
    Object? some = _undefined,
    Object? none = _undefined,
  }) =>
      _then(Input$ProductModelListRelationFilter._({
        ..._instance._$data,
        if (every != _undefined)
          'every': (every as Input$ProductModelWhereInput?),
        if (some != _undefined) 'some': (some as Input$ProductModelWhereInput?),
        if (none != _undefined) 'none': (none as Input$ProductModelWhereInput?),
      }));
  CopyWith$Input$ProductModelWhereInput<TRes> get every {
    final local$every = _instance.every;
    return local$every == null
        ? CopyWith$Input$ProductModelWhereInput.stub(_then(_instance))
        : CopyWith$Input$ProductModelWhereInput(
            local$every, (e) => call(every: e));
  }

  CopyWith$Input$ProductModelWhereInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$ProductModelWhereInput.stub(_then(_instance))
        : CopyWith$Input$ProductModelWhereInput(
            local$some, (e) => call(some: e));
  }

  CopyWith$Input$ProductModelWhereInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$ProductModelWhereInput.stub(_then(_instance))
        : CopyWith$Input$ProductModelWhereInput(
            local$none, (e) => call(none: e));
  }
}

class _CopyWithStubImpl$Input$ProductModelListRelationFilter<TRes>
    implements CopyWith$Input$ProductModelListRelationFilter<TRes> {
  _CopyWithStubImpl$Input$ProductModelListRelationFilter(this._res);

  TRes _res;

  call({
    Input$ProductModelWhereInput? every,
    Input$ProductModelWhereInput? some,
    Input$ProductModelWhereInput? none,
  }) =>
      _res;
  CopyWith$Input$ProductModelWhereInput<TRes> get every =>
      CopyWith$Input$ProductModelWhereInput.stub(_res);
  CopyWith$Input$ProductModelWhereInput<TRes> get some =>
      CopyWith$Input$ProductModelWhereInput.stub(_res);
  CopyWith$Input$ProductModelWhereInput<TRes> get none =>
      CopyWith$Input$ProductModelWhereInput.stub(_res);
}

class Input$ProductModelWhereInput {
  factory Input$ProductModelWhereInput({
    List<Input$ProductModelWhereInput>? AND,
    List<Input$ProductModelWhereInput>? OR,
    List<Input$ProductModelWhereInput>? NOT,
    Input$IntFilter? product_id,
    Input$IntFilter? color_id,
    Input$IntFilter? size_id,
    Input$IntFilter? quantity,
    Input$ProductsRelationFilter? product,
    Input$SizesRelationFilter? size,
    Input$ColorsRelationFilter? color,
  }) =>
      Input$ProductModelWhereInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (product_id != null) r'product_id': product_id,
        if (color_id != null) r'color_id': color_id,
        if (size_id != null) r'size_id': size_id,
        if (quantity != null) r'quantity': quantity,
        if (product != null) r'product': product,
        if (size != null) r'size': size,
        if (color != null) r'color': color,
      });

  Input$ProductModelWhereInput._(this._$data);

  factory Input$ProductModelWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) => Input$ProductModelWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) => Input$ProductModelWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) => Input$ProductModelWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : Input$IntFilter.fromJson((l$product_id as Map<String, dynamic>));
    }
    if (data.containsKey('color_id')) {
      final l$color_id = data['color_id'];
      result$data['color_id'] = l$color_id == null
          ? null
          : Input$IntFilter.fromJson((l$color_id as Map<String, dynamic>));
    }
    if (data.containsKey('size_id')) {
      final l$size_id = data['size_id'];
      result$data['size_id'] = l$size_id == null
          ? null
          : Input$IntFilter.fromJson((l$size_id as Map<String, dynamic>));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : Input$IntFilter.fromJson((l$quantity as Map<String, dynamic>));
    }
    if (data.containsKey('product')) {
      final l$product = data['product'];
      result$data['product'] = l$product == null
          ? null
          : Input$ProductsRelationFilter.fromJson(
              (l$product as Map<String, dynamic>));
    }
    if (data.containsKey('size')) {
      final l$size = data['size'];
      result$data['size'] = l$size == null
          ? null
          : Input$SizesRelationFilter.fromJson(
              (l$size as Map<String, dynamic>));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input$ColorsRelationFilter.fromJson(
              (l$color as Map<String, dynamic>));
    }
    return Input$ProductModelWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ProductModelWhereInput>? get AND =>
      (_$data['AND'] as List<Input$ProductModelWhereInput>?);
  List<Input$ProductModelWhereInput>? get OR =>
      (_$data['OR'] as List<Input$ProductModelWhereInput>?);
  List<Input$ProductModelWhereInput>? get NOT =>
      (_$data['NOT'] as List<Input$ProductModelWhereInput>?);
  Input$IntFilter? get product_id => (_$data['product_id'] as Input$IntFilter?);
  Input$IntFilter? get color_id => (_$data['color_id'] as Input$IntFilter?);
  Input$IntFilter? get size_id => (_$data['size_id'] as Input$IntFilter?);
  Input$IntFilter? get quantity => (_$data['quantity'] as Input$IntFilter?);
  Input$ProductsRelationFilter? get product =>
      (_$data['product'] as Input$ProductsRelationFilter?);
  Input$SizesRelationFilter? get size =>
      (_$data['size'] as Input$SizesRelationFilter?);
  Input$ColorsRelationFilter? get color =>
      (_$data['color'] as Input$ColorsRelationFilter?);
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
    if (_$data.containsKey('product')) {
      final l$product = product;
      result$data['product'] = l$product?.toJson();
    }
    if (_$data.containsKey('size')) {
      final l$size = size;
      result$data['size'] = l$size?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductModelWhereInput<Input$ProductModelWhereInput>
      get copyWith => CopyWith$Input$ProductModelWhereInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelWhereInput) ||
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
    final l$product = product;
    final lOther$product = other.product;
    if (_$data.containsKey('product') != other._$data.containsKey('product')) {
      return false;
    }
    if (l$product != lOther$product) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (_$data.containsKey('size') != other._$data.containsKey('size')) {
      return false;
    }
    if (l$size != lOther$size) {
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
    final l$product_id = product_id;
    final l$color_id = color_id;
    final l$size_id = size_id;
    final l$quantity = quantity;
    final l$product = product;
    final l$size = size;
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
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('color_id') ? l$color_id : const {},
      _$data.containsKey('size_id') ? l$size_id : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('product') ? l$product : const {},
      _$data.containsKey('size') ? l$size : const {},
      _$data.containsKey('color') ? l$color : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductModelWhereInput<TRes> {
  factory CopyWith$Input$ProductModelWhereInput(
    Input$ProductModelWhereInput instance,
    TRes Function(Input$ProductModelWhereInput) then,
  ) = _CopyWithImpl$Input$ProductModelWhereInput;

  factory CopyWith$Input$ProductModelWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductModelWhereInput;

  TRes call({
    List<Input$ProductModelWhereInput>? AND,
    List<Input$ProductModelWhereInput>? OR,
    List<Input$ProductModelWhereInput>? NOT,
    Input$IntFilter? product_id,
    Input$IntFilter? color_id,
    Input$IntFilter? size_id,
    Input$IntFilter? quantity,
    Input$ProductsRelationFilter? product,
    Input$SizesRelationFilter? size,
    Input$ColorsRelationFilter? color,
  });
  TRes AND(
      Iterable<Input$ProductModelWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelWhereInput<
                      Input$ProductModelWhereInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$ProductModelWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelWhereInput<
                      Input$ProductModelWhereInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$ProductModelWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelWhereInput<
                      Input$ProductModelWhereInput>>?)
          _fn);
  CopyWith$Input$ProductsRelationFilter<TRes> get product;
  CopyWith$Input$SizesRelationFilter<TRes> get size;
  CopyWith$Input$ColorsRelationFilter<TRes> get color;
}

class _CopyWithImpl$Input$ProductModelWhereInput<TRes>
    implements CopyWith$Input$ProductModelWhereInput<TRes> {
  _CopyWithImpl$Input$ProductModelWhereInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelWhereInput _instance;

  final TRes Function(Input$ProductModelWhereInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? product_id = _undefined,
    Object? color_id = _undefined,
    Object? size_id = _undefined,
    Object? quantity = _undefined,
    Object? product = _undefined,
    Object? size = _undefined,
    Object? color = _undefined,
  }) =>
      _then(Input$ProductModelWhereInput._({
        ..._instance._$data,
        if (AND != _undefined)
          'AND': (AND as List<Input$ProductModelWhereInput>?),
        if (OR != _undefined) 'OR': (OR as List<Input$ProductModelWhereInput>?),
        if (NOT != _undefined)
          'NOT': (NOT as List<Input$ProductModelWhereInput>?),
        if (product_id != _undefined)
          'product_id': (product_id as Input$IntFilter?),
        if (color_id != _undefined) 'color_id': (color_id as Input$IntFilter?),
        if (size_id != _undefined) 'size_id': (size_id as Input$IntFilter?),
        if (quantity != _undefined) 'quantity': (quantity as Input$IntFilter?),
        if (product != _undefined)
          'product': (product as Input$ProductsRelationFilter?),
        if (size != _undefined) 'size': (size as Input$SizesRelationFilter?),
        if (color != _undefined)
          'color': (color as Input$ColorsRelationFilter?),
      }));
  TRes AND(
          Iterable<Input$ProductModelWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelWhereInput<
                          Input$ProductModelWhereInput>>?)
              _fn) =>
      call(
          AND: _fn(
              _instance.AND?.map((e) => CopyWith$Input$ProductModelWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes OR(
          Iterable<Input$ProductModelWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelWhereInput<
                          Input$ProductModelWhereInput>>?)
              _fn) =>
      call(
          OR: _fn(
              _instance.OR?.map((e) => CopyWith$Input$ProductModelWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes NOT(
          Iterable<Input$ProductModelWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelWhereInput<
                          Input$ProductModelWhereInput>>?)
              _fn) =>
      call(
          NOT: _fn(
              _instance.NOT?.map((e) => CopyWith$Input$ProductModelWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$ProductsRelationFilter<TRes> get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Input$ProductsRelationFilter.stub(_then(_instance))
        : CopyWith$Input$ProductsRelationFilter(
            local$product, (e) => call(product: e));
  }

  CopyWith$Input$SizesRelationFilter<TRes> get size {
    final local$size = _instance.size;
    return local$size == null
        ? CopyWith$Input$SizesRelationFilter.stub(_then(_instance))
        : CopyWith$Input$SizesRelationFilter(local$size, (e) => call(size: e));
  }

  CopyWith$Input$ColorsRelationFilter<TRes> get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith$Input$ColorsRelationFilter.stub(_then(_instance))
        : CopyWith$Input$ColorsRelationFilter(
            local$color, (e) => call(color: e));
  }
}

class _CopyWithStubImpl$Input$ProductModelWhereInput<TRes>
    implements CopyWith$Input$ProductModelWhereInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelWhereInput(this._res);

  TRes _res;

  call({
    List<Input$ProductModelWhereInput>? AND,
    List<Input$ProductModelWhereInput>? OR,
    List<Input$ProductModelWhereInput>? NOT,
    Input$IntFilter? product_id,
    Input$IntFilter? color_id,
    Input$IntFilter? size_id,
    Input$IntFilter? quantity,
    Input$ProductsRelationFilter? product,
    Input$SizesRelationFilter? size,
    Input$ColorsRelationFilter? color,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
  CopyWith$Input$ProductsRelationFilter<TRes> get product =>
      CopyWith$Input$ProductsRelationFilter.stub(_res);
  CopyWith$Input$SizesRelationFilter<TRes> get size =>
      CopyWith$Input$SizesRelationFilter.stub(_res);
  CopyWith$Input$ColorsRelationFilter<TRes> get color =>
      CopyWith$Input$ColorsRelationFilter.stub(_res);
}

class Input$ProductsRelationFilter {
  factory Input$ProductsRelationFilter({
    Input$ProductsWhereInput? $is,
    Input$ProductsWhereInput? isNot,
  }) =>
      Input$ProductsRelationFilter._({
        if ($is != null) r'is': $is,
        if (isNot != null) r'isNot': isNot,
      });

  Input$ProductsRelationFilter._(this._$data);

  factory Input$ProductsRelationFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('is')) {
      final l$$is = data['is'];
      result$data['is'] = l$$is == null
          ? null
          : Input$ProductsWhereInput.fromJson((l$$is as Map<String, dynamic>));
    }
    if (data.containsKey('isNot')) {
      final l$isNot = data['isNot'];
      result$data['isNot'] = l$isNot == null
          ? null
          : Input$ProductsWhereInput.fromJson(
              (l$isNot as Map<String, dynamic>));
    }
    return Input$ProductsRelationFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductsWhereInput? get $is =>
      (_$data['is'] as Input$ProductsWhereInput?);
  Input$ProductsWhereInput? get isNot =>
      (_$data['isNot'] as Input$ProductsWhereInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('is')) {
      final l$$is = $is;
      result$data['is'] = l$$is?.toJson();
    }
    if (_$data.containsKey('isNot')) {
      final l$isNot = isNot;
      result$data['isNot'] = l$isNot?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductsRelationFilter<Input$ProductsRelationFilter>
      get copyWith => CopyWith$Input$ProductsRelationFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsRelationFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$is = $is;
    final lOther$$is = other.$is;
    if (_$data.containsKey('is') != other._$data.containsKey('is')) {
      return false;
    }
    if (l$$is != lOther$$is) {
      return false;
    }
    final l$isNot = isNot;
    final lOther$isNot = other.isNot;
    if (_$data.containsKey('isNot') != other._$data.containsKey('isNot')) {
      return false;
    }
    if (l$isNot != lOther$isNot) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$is = $is;
    final l$isNot = isNot;
    return Object.hashAll([
      _$data.containsKey('is') ? l$$is : const {},
      _$data.containsKey('isNot') ? l$isNot : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductsRelationFilter<TRes> {
  factory CopyWith$Input$ProductsRelationFilter(
    Input$ProductsRelationFilter instance,
    TRes Function(Input$ProductsRelationFilter) then,
  ) = _CopyWithImpl$Input$ProductsRelationFilter;

  factory CopyWith$Input$ProductsRelationFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductsRelationFilter;

  TRes call({
    Input$ProductsWhereInput? $is,
    Input$ProductsWhereInput? isNot,
  });
  CopyWith$Input$ProductsWhereInput<TRes> get $is;
  CopyWith$Input$ProductsWhereInput<TRes> get isNot;
}

class _CopyWithImpl$Input$ProductsRelationFilter<TRes>
    implements CopyWith$Input$ProductsRelationFilter<TRes> {
  _CopyWithImpl$Input$ProductsRelationFilter(
    this._instance,
    this._then,
  );

  final Input$ProductsRelationFilter _instance;

  final TRes Function(Input$ProductsRelationFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $is = _undefined,
    Object? isNot = _undefined,
  }) =>
      _then(Input$ProductsRelationFilter._({
        ..._instance._$data,
        if ($is != _undefined) 'is': ($is as Input$ProductsWhereInput?),
        if (isNot != _undefined) 'isNot': (isNot as Input$ProductsWhereInput?),
      }));
  CopyWith$Input$ProductsWhereInput<TRes> get $is {
    final local$$is = _instance.$is;
    return local$$is == null
        ? CopyWith$Input$ProductsWhereInput.stub(_then(_instance))
        : CopyWith$Input$ProductsWhereInput(local$$is, (e) => call($is: e));
  }

  CopyWith$Input$ProductsWhereInput<TRes> get isNot {
    final local$isNot = _instance.isNot;
    return local$isNot == null
        ? CopyWith$Input$ProductsWhereInput.stub(_then(_instance))
        : CopyWith$Input$ProductsWhereInput(local$isNot, (e) => call(isNot: e));
  }
}

class _CopyWithStubImpl$Input$ProductsRelationFilter<TRes>
    implements CopyWith$Input$ProductsRelationFilter<TRes> {
  _CopyWithStubImpl$Input$ProductsRelationFilter(this._res);

  TRes _res;

  call({
    Input$ProductsWhereInput? $is,
    Input$ProductsWhereInput? isNot,
  }) =>
      _res;
  CopyWith$Input$ProductsWhereInput<TRes> get $is =>
      CopyWith$Input$ProductsWhereInput.stub(_res);
  CopyWith$Input$ProductsWhereInput<TRes> get isNot =>
      CopyWith$Input$ProductsWhereInput.stub(_res);
}

class Input$ProductsWhereInput {
  factory Input$ProductsWhereInput({
    List<Input$ProductsWhereInput>? AND,
    List<Input$ProductsWhereInput>? OR,
    List<Input$ProductsWhereInput>? NOT,
    Input$IntFilter? product_id,
    Input$IntFilter? reference,
    Input$StringFilter? name,
    Input$FloatFilter? buyingPrice,
    Input$FloatFilter? sellingPrice,
    Input$StringFilter? description,
    Input$StringFilter? picture,
    Input$IntFilter? family_id,
    Input$ProductFamilyRelationFilter? family,
    Input$ProductModelListRelationFilter? ProductModel,
    Input$TransactionProductListRelationFilter? TransactionProduct,
  }) =>
      Input$ProductsWhereInput._({
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
        if (family != null) r'family': family,
        if (ProductModel != null) r'ProductModel': ProductModel,
        if (TransactionProduct != null)
          r'TransactionProduct': TransactionProduct,
      });

  Input$ProductsWhereInput._(this._$data);

  factory Input$ProductsWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) =>
              Input$ProductsWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) =>
              Input$ProductsWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) =>
              Input$ProductsWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : Input$IntFilter.fromJson((l$product_id as Map<String, dynamic>));
    }
    if (data.containsKey('reference')) {
      final l$reference = data['reference'];
      result$data['reference'] = l$reference == null
          ? null
          : Input$IntFilter.fromJson((l$reference as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringFilter.fromJson((l$name as Map<String, dynamic>));
    }
    if (data.containsKey('buyingPrice')) {
      final l$buyingPrice = data['buyingPrice'];
      result$data['buyingPrice'] = l$buyingPrice == null
          ? null
          : Input$FloatFilter.fromJson((l$buyingPrice as Map<String, dynamic>));
    }
    if (data.containsKey('sellingPrice')) {
      final l$sellingPrice = data['sellingPrice'];
      result$data['sellingPrice'] = l$sellingPrice == null
          ? null
          : Input$FloatFilter.fromJson(
              (l$sellingPrice as Map<String, dynamic>));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : Input$StringFilter.fromJson(
              (l$description as Map<String, dynamic>));
    }
    if (data.containsKey('picture')) {
      final l$picture = data['picture'];
      result$data['picture'] = l$picture == null
          ? null
          : Input$StringFilter.fromJson((l$picture as Map<String, dynamic>));
    }
    if (data.containsKey('family_id')) {
      final l$family_id = data['family_id'];
      result$data['family_id'] = l$family_id == null
          ? null
          : Input$IntFilter.fromJson((l$family_id as Map<String, dynamic>));
    }
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input$ProductFamilyRelationFilter.fromJson(
              (l$family as Map<String, dynamic>));
    }
    if (data.containsKey('ProductModel')) {
      final l$ProductModel = data['ProductModel'];
      result$data['ProductModel'] = l$ProductModel == null
          ? null
          : Input$ProductModelListRelationFilter.fromJson(
              (l$ProductModel as Map<String, dynamic>));
    }
    if (data.containsKey('TransactionProduct')) {
      final l$TransactionProduct = data['TransactionProduct'];
      result$data['TransactionProduct'] = l$TransactionProduct == null
          ? null
          : Input$TransactionProductListRelationFilter.fromJson(
              (l$TransactionProduct as Map<String, dynamic>));
    }
    return Input$ProductsWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ProductsWhereInput>? get AND =>
      (_$data['AND'] as List<Input$ProductsWhereInput>?);
  List<Input$ProductsWhereInput>? get OR =>
      (_$data['OR'] as List<Input$ProductsWhereInput>?);
  List<Input$ProductsWhereInput>? get NOT =>
      (_$data['NOT'] as List<Input$ProductsWhereInput>?);
  Input$IntFilter? get product_id => (_$data['product_id'] as Input$IntFilter?);
  Input$IntFilter? get reference => (_$data['reference'] as Input$IntFilter?);
  Input$StringFilter? get name => (_$data['name'] as Input$StringFilter?);
  Input$FloatFilter? get buyingPrice =>
      (_$data['buyingPrice'] as Input$FloatFilter?);
  Input$FloatFilter? get sellingPrice =>
      (_$data['sellingPrice'] as Input$FloatFilter?);
  Input$StringFilter? get description =>
      (_$data['description'] as Input$StringFilter?);
  Input$StringFilter? get picture => (_$data['picture'] as Input$StringFilter?);
  Input$IntFilter? get family_id => (_$data['family_id'] as Input$IntFilter?);
  Input$ProductFamilyRelationFilter? get family =>
      (_$data['family'] as Input$ProductFamilyRelationFilter?);
  Input$ProductModelListRelationFilter? get ProductModel =>
      (_$data['ProductModel'] as Input$ProductModelListRelationFilter?);
  Input$TransactionProductListRelationFilter? get TransactionProduct =>
      (_$data['TransactionProduct']
          as Input$TransactionProductListRelationFilter?);
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
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    if (_$data.containsKey('ProductModel')) {
      final l$ProductModel = ProductModel;
      result$data['ProductModel'] = l$ProductModel?.toJson();
    }
    if (_$data.containsKey('TransactionProduct')) {
      final l$TransactionProduct = TransactionProduct;
      result$data['TransactionProduct'] = l$TransactionProduct?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductsWhereInput<Input$ProductsWhereInput> get copyWith =>
      CopyWith$Input$ProductsWhereInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsWhereInput) ||
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
    final l$family = family;
    final lOther$family = other.family;
    if (_$data.containsKey('family') != other._$data.containsKey('family')) {
      return false;
    }
    if (l$family != lOther$family) {
      return false;
    }
    final l$ProductModel = ProductModel;
    final lOther$ProductModel = other.ProductModel;
    if (_$data.containsKey('ProductModel') !=
        other._$data.containsKey('ProductModel')) {
      return false;
    }
    if (l$ProductModel != lOther$ProductModel) {
      return false;
    }
    final l$TransactionProduct = TransactionProduct;
    final lOther$TransactionProduct = other.TransactionProduct;
    if (_$data.containsKey('TransactionProduct') !=
        other._$data.containsKey('TransactionProduct')) {
      return false;
    }
    if (l$TransactionProduct != lOther$TransactionProduct) {
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
    final l$family = family;
    final l$ProductModel = ProductModel;
    final l$TransactionProduct = TransactionProduct;
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
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('ProductModel') ? l$ProductModel : const {},
      _$data.containsKey('TransactionProduct')
          ? l$TransactionProduct
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductsWhereInput<TRes> {
  factory CopyWith$Input$ProductsWhereInput(
    Input$ProductsWhereInput instance,
    TRes Function(Input$ProductsWhereInput) then,
  ) = _CopyWithImpl$Input$ProductsWhereInput;

  factory CopyWith$Input$ProductsWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductsWhereInput;

  TRes call({
    List<Input$ProductsWhereInput>? AND,
    List<Input$ProductsWhereInput>? OR,
    List<Input$ProductsWhereInput>? NOT,
    Input$IntFilter? product_id,
    Input$IntFilter? reference,
    Input$StringFilter? name,
    Input$FloatFilter? buyingPrice,
    Input$FloatFilter? sellingPrice,
    Input$StringFilter? description,
    Input$StringFilter? picture,
    Input$IntFilter? family_id,
    Input$ProductFamilyRelationFilter? family,
    Input$ProductModelListRelationFilter? ProductModel,
    Input$TransactionProductListRelationFilter? TransactionProduct,
  });
  TRes AND(
      Iterable<Input$ProductsWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ProductsWhereInput<Input$ProductsWhereInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$ProductsWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ProductsWhereInput<Input$ProductsWhereInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$ProductsWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ProductsWhereInput<Input$ProductsWhereInput>>?)
          _fn);
  CopyWith$Input$ProductFamilyRelationFilter<TRes> get family;
  CopyWith$Input$ProductModelListRelationFilter<TRes> get ProductModel;
  CopyWith$Input$TransactionProductListRelationFilter<TRes>
      get TransactionProduct;
}

class _CopyWithImpl$Input$ProductsWhereInput<TRes>
    implements CopyWith$Input$ProductsWhereInput<TRes> {
  _CopyWithImpl$Input$ProductsWhereInput(
    this._instance,
    this._then,
  );

  final Input$ProductsWhereInput _instance;

  final TRes Function(Input$ProductsWhereInput) _then;

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
    Object? family = _undefined,
    Object? ProductModel = _undefined,
    Object? TransactionProduct = _undefined,
  }) =>
      _then(Input$ProductsWhereInput._({
        ..._instance._$data,
        if (AND != _undefined) 'AND': (AND as List<Input$ProductsWhereInput>?),
        if (OR != _undefined) 'OR': (OR as List<Input$ProductsWhereInput>?),
        if (NOT != _undefined) 'NOT': (NOT as List<Input$ProductsWhereInput>?),
        if (product_id != _undefined)
          'product_id': (product_id as Input$IntFilter?),
        if (reference != _undefined)
          'reference': (reference as Input$IntFilter?),
        if (name != _undefined) 'name': (name as Input$StringFilter?),
        if (buyingPrice != _undefined)
          'buyingPrice': (buyingPrice as Input$FloatFilter?),
        if (sellingPrice != _undefined)
          'sellingPrice': (sellingPrice as Input$FloatFilter?),
        if (description != _undefined)
          'description': (description as Input$StringFilter?),
        if (picture != _undefined) 'picture': (picture as Input$StringFilter?),
        if (family_id != _undefined)
          'family_id': (family_id as Input$IntFilter?),
        if (family != _undefined)
          'family': (family as Input$ProductFamilyRelationFilter?),
        if (ProductModel != _undefined)
          'ProductModel':
              (ProductModel as Input$ProductModelListRelationFilter?),
        if (TransactionProduct != _undefined)
          'TransactionProduct': (TransactionProduct
              as Input$TransactionProductListRelationFilter?),
      }));
  TRes AND(
          Iterable<Input$ProductsWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductsWhereInput<
                          Input$ProductsWhereInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND?.map((e) => CopyWith$Input$ProductsWhereInput(
                e,
                (i) => i,
              )))?.toList());
  TRes OR(
          Iterable<Input$ProductsWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductsWhereInput<
                          Input$ProductsWhereInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR?.map((e) => CopyWith$Input$ProductsWhereInput(
                e,
                (i) => i,
              )))?.toList());
  TRes NOT(
          Iterable<Input$ProductsWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductsWhereInput<
                          Input$ProductsWhereInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT?.map((e) => CopyWith$Input$ProductsWhereInput(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Input$ProductFamilyRelationFilter<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith$Input$ProductFamilyRelationFilter.stub(_then(_instance))
        : CopyWith$Input$ProductFamilyRelationFilter(
            local$family, (e) => call(family: e));
  }

  CopyWith$Input$ProductModelListRelationFilter<TRes> get ProductModel {
    final local$ProductModel = _instance.ProductModel;
    return local$ProductModel == null
        ? CopyWith$Input$ProductModelListRelationFilter.stub(_then(_instance))
        : CopyWith$Input$ProductModelListRelationFilter(
            local$ProductModel, (e) => call(ProductModel: e));
  }

  CopyWith$Input$TransactionProductListRelationFilter<TRes>
      get TransactionProduct {
    final local$TransactionProduct = _instance.TransactionProduct;
    return local$TransactionProduct == null
        ? CopyWith$Input$TransactionProductListRelationFilter.stub(
            _then(_instance))
        : CopyWith$Input$TransactionProductListRelationFilter(
            local$TransactionProduct, (e) => call(TransactionProduct: e));
  }
}

class _CopyWithStubImpl$Input$ProductsWhereInput<TRes>
    implements CopyWith$Input$ProductsWhereInput<TRes> {
  _CopyWithStubImpl$Input$ProductsWhereInput(this._res);

  TRes _res;

  call({
    List<Input$ProductsWhereInput>? AND,
    List<Input$ProductsWhereInput>? OR,
    List<Input$ProductsWhereInput>? NOT,
    Input$IntFilter? product_id,
    Input$IntFilter? reference,
    Input$StringFilter? name,
    Input$FloatFilter? buyingPrice,
    Input$FloatFilter? sellingPrice,
    Input$StringFilter? description,
    Input$StringFilter? picture,
    Input$IntFilter? family_id,
    Input$ProductFamilyRelationFilter? family,
    Input$ProductModelListRelationFilter? ProductModel,
    Input$TransactionProductListRelationFilter? TransactionProduct,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
  CopyWith$Input$ProductFamilyRelationFilter<TRes> get family =>
      CopyWith$Input$ProductFamilyRelationFilter.stub(_res);
  CopyWith$Input$ProductModelListRelationFilter<TRes> get ProductModel =>
      CopyWith$Input$ProductModelListRelationFilter.stub(_res);
  CopyWith$Input$TransactionProductListRelationFilter<TRes>
      get TransactionProduct =>
          CopyWith$Input$TransactionProductListRelationFilter.stub(_res);
}

class Input$ProductFamilyRelationFilter {
  factory Input$ProductFamilyRelationFilter({
    Input$ProductFamilyWhereInput? $is,
    Input$ProductFamilyWhereInput? isNot,
  }) =>
      Input$ProductFamilyRelationFilter._({
        if ($is != null) r'is': $is,
        if (isNot != null) r'isNot': isNot,
      });

  Input$ProductFamilyRelationFilter._(this._$data);

  factory Input$ProductFamilyRelationFilter.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('is')) {
      final l$$is = data['is'];
      result$data['is'] = l$$is == null
          ? null
          : Input$ProductFamilyWhereInput.fromJson(
              (l$$is as Map<String, dynamic>));
    }
    if (data.containsKey('isNot')) {
      final l$isNot = data['isNot'];
      result$data['isNot'] = l$isNot == null
          ? null
          : Input$ProductFamilyWhereInput.fromJson(
              (l$isNot as Map<String, dynamic>));
    }
    return Input$ProductFamilyRelationFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductFamilyWhereInput? get $is =>
      (_$data['is'] as Input$ProductFamilyWhereInput?);
  Input$ProductFamilyWhereInput? get isNot =>
      (_$data['isNot'] as Input$ProductFamilyWhereInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('is')) {
      final l$$is = $is;
      result$data['is'] = l$$is?.toJson();
    }
    if (_$data.containsKey('isNot')) {
      final l$isNot = isNot;
      result$data['isNot'] = l$isNot?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductFamilyRelationFilter<Input$ProductFamilyRelationFilter>
      get copyWith => CopyWith$Input$ProductFamilyRelationFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductFamilyRelationFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$is = $is;
    final lOther$$is = other.$is;
    if (_$data.containsKey('is') != other._$data.containsKey('is')) {
      return false;
    }
    if (l$$is != lOther$$is) {
      return false;
    }
    final l$isNot = isNot;
    final lOther$isNot = other.isNot;
    if (_$data.containsKey('isNot') != other._$data.containsKey('isNot')) {
      return false;
    }
    if (l$isNot != lOther$isNot) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$is = $is;
    final l$isNot = isNot;
    return Object.hashAll([
      _$data.containsKey('is') ? l$$is : const {},
      _$data.containsKey('isNot') ? l$isNot : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductFamilyRelationFilter<TRes> {
  factory CopyWith$Input$ProductFamilyRelationFilter(
    Input$ProductFamilyRelationFilter instance,
    TRes Function(Input$ProductFamilyRelationFilter) then,
  ) = _CopyWithImpl$Input$ProductFamilyRelationFilter;

  factory CopyWith$Input$ProductFamilyRelationFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductFamilyRelationFilter;

  TRes call({
    Input$ProductFamilyWhereInput? $is,
    Input$ProductFamilyWhereInput? isNot,
  });
  CopyWith$Input$ProductFamilyWhereInput<TRes> get $is;
  CopyWith$Input$ProductFamilyWhereInput<TRes> get isNot;
}

class _CopyWithImpl$Input$ProductFamilyRelationFilter<TRes>
    implements CopyWith$Input$ProductFamilyRelationFilter<TRes> {
  _CopyWithImpl$Input$ProductFamilyRelationFilter(
    this._instance,
    this._then,
  );

  final Input$ProductFamilyRelationFilter _instance;

  final TRes Function(Input$ProductFamilyRelationFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $is = _undefined,
    Object? isNot = _undefined,
  }) =>
      _then(Input$ProductFamilyRelationFilter._({
        ..._instance._$data,
        if ($is != _undefined) 'is': ($is as Input$ProductFamilyWhereInput?),
        if (isNot != _undefined)
          'isNot': (isNot as Input$ProductFamilyWhereInput?),
      }));
  CopyWith$Input$ProductFamilyWhereInput<TRes> get $is {
    final local$$is = _instance.$is;
    return local$$is == null
        ? CopyWith$Input$ProductFamilyWhereInput.stub(_then(_instance))
        : CopyWith$Input$ProductFamilyWhereInput(
            local$$is, (e) => call($is: e));
  }

  CopyWith$Input$ProductFamilyWhereInput<TRes> get isNot {
    final local$isNot = _instance.isNot;
    return local$isNot == null
        ? CopyWith$Input$ProductFamilyWhereInput.stub(_then(_instance))
        : CopyWith$Input$ProductFamilyWhereInput(
            local$isNot, (e) => call(isNot: e));
  }
}

class _CopyWithStubImpl$Input$ProductFamilyRelationFilter<TRes>
    implements CopyWith$Input$ProductFamilyRelationFilter<TRes> {
  _CopyWithStubImpl$Input$ProductFamilyRelationFilter(this._res);

  TRes _res;

  call({
    Input$ProductFamilyWhereInput? $is,
    Input$ProductFamilyWhereInput? isNot,
  }) =>
      _res;
  CopyWith$Input$ProductFamilyWhereInput<TRes> get $is =>
      CopyWith$Input$ProductFamilyWhereInput.stub(_res);
  CopyWith$Input$ProductFamilyWhereInput<TRes> get isNot =>
      CopyWith$Input$ProductFamilyWhereInput.stub(_res);
}

class Input$ProductFamilyWhereInput {
  factory Input$ProductFamilyWhereInput({
    List<Input$ProductFamilyWhereInput>? AND,
    List<Input$ProductFamilyWhereInput>? OR,
    List<Input$ProductFamilyWhereInput>? NOT,
    Input$IntFilter? id,
    Input$StringFilter? name,
    Input$ProductsListRelationFilter? Products,
  }) =>
      Input$ProductFamilyWhereInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (Products != null) r'Products': Products,
      });

  Input$ProductFamilyWhereInput._(this._$data);

  factory Input$ProductFamilyWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) => Input$ProductFamilyWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) => Input$ProductFamilyWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) => Input$ProductFamilyWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IntFilter.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringFilter.fromJson((l$name as Map<String, dynamic>));
    }
    if (data.containsKey('Products')) {
      final l$Products = data['Products'];
      result$data['Products'] = l$Products == null
          ? null
          : Input$ProductsListRelationFilter.fromJson(
              (l$Products as Map<String, dynamic>));
    }
    return Input$ProductFamilyWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ProductFamilyWhereInput>? get AND =>
      (_$data['AND'] as List<Input$ProductFamilyWhereInput>?);
  List<Input$ProductFamilyWhereInput>? get OR =>
      (_$data['OR'] as List<Input$ProductFamilyWhereInput>?);
  List<Input$ProductFamilyWhereInput>? get NOT =>
      (_$data['NOT'] as List<Input$ProductFamilyWhereInput>?);
  Input$IntFilter? get id => (_$data['id'] as Input$IntFilter?);
  Input$StringFilter? get name => (_$data['name'] as Input$StringFilter?);
  Input$ProductsListRelationFilter? get Products =>
      (_$data['Products'] as Input$ProductsListRelationFilter?);
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
    if (_$data.containsKey('Products')) {
      final l$Products = Products;
      result$data['Products'] = l$Products?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductFamilyWhereInput<Input$ProductFamilyWhereInput>
      get copyWith => CopyWith$Input$ProductFamilyWhereInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductFamilyWhereInput) ||
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
    final l$Products = Products;
    final lOther$Products = other.Products;
    if (_$data.containsKey('Products') !=
        other._$data.containsKey('Products')) {
      return false;
    }
    if (l$Products != lOther$Products) {
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
    final l$Products = Products;
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
      _$data.containsKey('Products') ? l$Products : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductFamilyWhereInput<TRes> {
  factory CopyWith$Input$ProductFamilyWhereInput(
    Input$ProductFamilyWhereInput instance,
    TRes Function(Input$ProductFamilyWhereInput) then,
  ) = _CopyWithImpl$Input$ProductFamilyWhereInput;

  factory CopyWith$Input$ProductFamilyWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductFamilyWhereInput;

  TRes call({
    List<Input$ProductFamilyWhereInput>? AND,
    List<Input$ProductFamilyWhereInput>? OR,
    List<Input$ProductFamilyWhereInput>? NOT,
    Input$IntFilter? id,
    Input$StringFilter? name,
    Input$ProductsListRelationFilter? Products,
  });
  TRes AND(
      Iterable<Input$ProductFamilyWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ProductFamilyWhereInput<
                      Input$ProductFamilyWhereInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$ProductFamilyWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ProductFamilyWhereInput<
                      Input$ProductFamilyWhereInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$ProductFamilyWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ProductFamilyWhereInput<
                      Input$ProductFamilyWhereInput>>?)
          _fn);
  CopyWith$Input$ProductsListRelationFilter<TRes> get Products;
}

class _CopyWithImpl$Input$ProductFamilyWhereInput<TRes>
    implements CopyWith$Input$ProductFamilyWhereInput<TRes> {
  _CopyWithImpl$Input$ProductFamilyWhereInput(
    this._instance,
    this._then,
  );

  final Input$ProductFamilyWhereInput _instance;

  final TRes Function(Input$ProductFamilyWhereInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? Products = _undefined,
  }) =>
      _then(Input$ProductFamilyWhereInput._({
        ..._instance._$data,
        if (AND != _undefined)
          'AND': (AND as List<Input$ProductFamilyWhereInput>?),
        if (OR != _undefined)
          'OR': (OR as List<Input$ProductFamilyWhereInput>?),
        if (NOT != _undefined)
          'NOT': (NOT as List<Input$ProductFamilyWhereInput>?),
        if (id != _undefined) 'id': (id as Input$IntFilter?),
        if (name != _undefined) 'name': (name as Input$StringFilter?),
        if (Products != _undefined)
          'Products': (Products as Input$ProductsListRelationFilter?),
      }));
  TRes AND(
          Iterable<Input$ProductFamilyWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductFamilyWhereInput<
                          Input$ProductFamilyWhereInput>>?)
              _fn) =>
      call(
          AND: _fn(
              _instance.AND?.map((e) => CopyWith$Input$ProductFamilyWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes OR(
          Iterable<Input$ProductFamilyWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductFamilyWhereInput<
                          Input$ProductFamilyWhereInput>>?)
              _fn) =>
      call(
          OR: _fn(
              _instance.OR?.map((e) => CopyWith$Input$ProductFamilyWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes NOT(
          Iterable<Input$ProductFamilyWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductFamilyWhereInput<
                          Input$ProductFamilyWhereInput>>?)
              _fn) =>
      call(
          NOT: _fn(
              _instance.NOT?.map((e) => CopyWith$Input$ProductFamilyWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$ProductsListRelationFilter<TRes> get Products {
    final local$Products = _instance.Products;
    return local$Products == null
        ? CopyWith$Input$ProductsListRelationFilter.stub(_then(_instance))
        : CopyWith$Input$ProductsListRelationFilter(
            local$Products, (e) => call(Products: e));
  }
}

class _CopyWithStubImpl$Input$ProductFamilyWhereInput<TRes>
    implements CopyWith$Input$ProductFamilyWhereInput<TRes> {
  _CopyWithStubImpl$Input$ProductFamilyWhereInput(this._res);

  TRes _res;

  call({
    List<Input$ProductFamilyWhereInput>? AND,
    List<Input$ProductFamilyWhereInput>? OR,
    List<Input$ProductFamilyWhereInput>? NOT,
    Input$IntFilter? id,
    Input$StringFilter? name,
    Input$ProductsListRelationFilter? Products,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
  CopyWith$Input$ProductsListRelationFilter<TRes> get Products =>
      CopyWith$Input$ProductsListRelationFilter.stub(_res);
}

class Input$ProductsListRelationFilter {
  factory Input$ProductsListRelationFilter({
    Input$ProductsWhereInput? every,
    Input$ProductsWhereInput? some,
    Input$ProductsWhereInput? none,
  }) =>
      Input$ProductsListRelationFilter._({
        if (every != null) r'every': every,
        if (some != null) r'some': some,
        if (none != null) r'none': none,
      });

  Input$ProductsListRelationFilter._(this._$data);

  factory Input$ProductsListRelationFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('every')) {
      final l$every = data['every'];
      result$data['every'] = l$every == null
          ? null
          : Input$ProductsWhereInput.fromJson(
              (l$every as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$ProductsWhereInput.fromJson((l$some as Map<String, dynamic>));
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$ProductsWhereInput.fromJson((l$none as Map<String, dynamic>));
    }
    return Input$ProductsListRelationFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductsWhereInput? get every =>
      (_$data['every'] as Input$ProductsWhereInput?);
  Input$ProductsWhereInput? get some =>
      (_$data['some'] as Input$ProductsWhereInput?);
  Input$ProductsWhereInput? get none =>
      (_$data['none'] as Input$ProductsWhereInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('every')) {
      final l$every = every;
      result$data['every'] = l$every?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductsListRelationFilter<Input$ProductsListRelationFilter>
      get copyWith => CopyWith$Input$ProductsListRelationFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsListRelationFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$every = every;
    final lOther$every = other.every;
    if (_$data.containsKey('every') != other._$data.containsKey('every')) {
      return false;
    }
    if (l$every != lOther$every) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$every = every;
    final l$some = some;
    final l$none = none;
    return Object.hashAll([
      _$data.containsKey('every') ? l$every : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('none') ? l$none : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductsListRelationFilter<TRes> {
  factory CopyWith$Input$ProductsListRelationFilter(
    Input$ProductsListRelationFilter instance,
    TRes Function(Input$ProductsListRelationFilter) then,
  ) = _CopyWithImpl$Input$ProductsListRelationFilter;

  factory CopyWith$Input$ProductsListRelationFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductsListRelationFilter;

  TRes call({
    Input$ProductsWhereInput? every,
    Input$ProductsWhereInput? some,
    Input$ProductsWhereInput? none,
  });
  CopyWith$Input$ProductsWhereInput<TRes> get every;
  CopyWith$Input$ProductsWhereInput<TRes> get some;
  CopyWith$Input$ProductsWhereInput<TRes> get none;
}

class _CopyWithImpl$Input$ProductsListRelationFilter<TRes>
    implements CopyWith$Input$ProductsListRelationFilter<TRes> {
  _CopyWithImpl$Input$ProductsListRelationFilter(
    this._instance,
    this._then,
  );

  final Input$ProductsListRelationFilter _instance;

  final TRes Function(Input$ProductsListRelationFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? every = _undefined,
    Object? some = _undefined,
    Object? none = _undefined,
  }) =>
      _then(Input$ProductsListRelationFilter._({
        ..._instance._$data,
        if (every != _undefined) 'every': (every as Input$ProductsWhereInput?),
        if (some != _undefined) 'some': (some as Input$ProductsWhereInput?),
        if (none != _undefined) 'none': (none as Input$ProductsWhereInput?),
      }));
  CopyWith$Input$ProductsWhereInput<TRes> get every {
    final local$every = _instance.every;
    return local$every == null
        ? CopyWith$Input$ProductsWhereInput.stub(_then(_instance))
        : CopyWith$Input$ProductsWhereInput(local$every, (e) => call(every: e));
  }

  CopyWith$Input$ProductsWhereInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$ProductsWhereInput.stub(_then(_instance))
        : CopyWith$Input$ProductsWhereInput(local$some, (e) => call(some: e));
  }

  CopyWith$Input$ProductsWhereInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$ProductsWhereInput.stub(_then(_instance))
        : CopyWith$Input$ProductsWhereInput(local$none, (e) => call(none: e));
  }
}

class _CopyWithStubImpl$Input$ProductsListRelationFilter<TRes>
    implements CopyWith$Input$ProductsListRelationFilter<TRes> {
  _CopyWithStubImpl$Input$ProductsListRelationFilter(this._res);

  TRes _res;

  call({
    Input$ProductsWhereInput? every,
    Input$ProductsWhereInput? some,
    Input$ProductsWhereInput? none,
  }) =>
      _res;
  CopyWith$Input$ProductsWhereInput<TRes> get every =>
      CopyWith$Input$ProductsWhereInput.stub(_res);
  CopyWith$Input$ProductsWhereInput<TRes> get some =>
      CopyWith$Input$ProductsWhereInput.stub(_res);
  CopyWith$Input$ProductsWhereInput<TRes> get none =>
      CopyWith$Input$ProductsWhereInput.stub(_res);
}

class Input$TransactionProductListRelationFilter {
  factory Input$TransactionProductListRelationFilter({
    Input$TransactionProductWhereInput? every,
    Input$TransactionProductWhereInput? some,
    Input$TransactionProductWhereInput? none,
  }) =>
      Input$TransactionProductListRelationFilter._({
        if (every != null) r'every': every,
        if (some != null) r'some': some,
        if (none != null) r'none': none,
      });

  Input$TransactionProductListRelationFilter._(this._$data);

  factory Input$TransactionProductListRelationFilter.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('every')) {
      final l$every = data['every'];
      result$data['every'] = l$every == null
          ? null
          : Input$TransactionProductWhereInput.fromJson(
              (l$every as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$TransactionProductWhereInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$TransactionProductWhereInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    return Input$TransactionProductListRelationFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionProductWhereInput? get every =>
      (_$data['every'] as Input$TransactionProductWhereInput?);
  Input$TransactionProductWhereInput? get some =>
      (_$data['some'] as Input$TransactionProductWhereInput?);
  Input$TransactionProductWhereInput? get none =>
      (_$data['none'] as Input$TransactionProductWhereInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('every')) {
      final l$every = every;
      result$data['every'] = l$every?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionProductListRelationFilter<
          Input$TransactionProductListRelationFilter>
      get copyWith => CopyWith$Input$TransactionProductListRelationFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionProductListRelationFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$every = every;
    final lOther$every = other.every;
    if (_$data.containsKey('every') != other._$data.containsKey('every')) {
      return false;
    }
    if (l$every != lOther$every) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$every = every;
    final l$some = some;
    final l$none = none;
    return Object.hashAll([
      _$data.containsKey('every') ? l$every : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('none') ? l$none : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionProductListRelationFilter<TRes> {
  factory CopyWith$Input$TransactionProductListRelationFilter(
    Input$TransactionProductListRelationFilter instance,
    TRes Function(Input$TransactionProductListRelationFilter) then,
  ) = _CopyWithImpl$Input$TransactionProductListRelationFilter;

  factory CopyWith$Input$TransactionProductListRelationFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionProductListRelationFilter;

  TRes call({
    Input$TransactionProductWhereInput? every,
    Input$TransactionProductWhereInput? some,
    Input$TransactionProductWhereInput? none,
  });
  CopyWith$Input$TransactionProductWhereInput<TRes> get every;
  CopyWith$Input$TransactionProductWhereInput<TRes> get some;
  CopyWith$Input$TransactionProductWhereInput<TRes> get none;
}

class _CopyWithImpl$Input$TransactionProductListRelationFilter<TRes>
    implements CopyWith$Input$TransactionProductListRelationFilter<TRes> {
  _CopyWithImpl$Input$TransactionProductListRelationFilter(
    this._instance,
    this._then,
  );

  final Input$TransactionProductListRelationFilter _instance;

  final TRes Function(Input$TransactionProductListRelationFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? every = _undefined,
    Object? some = _undefined,
    Object? none = _undefined,
  }) =>
      _then(Input$TransactionProductListRelationFilter._({
        ..._instance._$data,
        if (every != _undefined)
          'every': (every as Input$TransactionProductWhereInput?),
        if (some != _undefined)
          'some': (some as Input$TransactionProductWhereInput?),
        if (none != _undefined)
          'none': (none as Input$TransactionProductWhereInput?),
      }));
  CopyWith$Input$TransactionProductWhereInput<TRes> get every {
    final local$every = _instance.every;
    return local$every == null
        ? CopyWith$Input$TransactionProductWhereInput.stub(_then(_instance))
        : CopyWith$Input$TransactionProductWhereInput(
            local$every, (e) => call(every: e));
  }

  CopyWith$Input$TransactionProductWhereInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$TransactionProductWhereInput.stub(_then(_instance))
        : CopyWith$Input$TransactionProductWhereInput(
            local$some, (e) => call(some: e));
  }

  CopyWith$Input$TransactionProductWhereInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$TransactionProductWhereInput.stub(_then(_instance))
        : CopyWith$Input$TransactionProductWhereInput(
            local$none, (e) => call(none: e));
  }
}

class _CopyWithStubImpl$Input$TransactionProductListRelationFilter<TRes>
    implements CopyWith$Input$TransactionProductListRelationFilter<TRes> {
  _CopyWithStubImpl$Input$TransactionProductListRelationFilter(this._res);

  TRes _res;

  call({
    Input$TransactionProductWhereInput? every,
    Input$TransactionProductWhereInput? some,
    Input$TransactionProductWhereInput? none,
  }) =>
      _res;
  CopyWith$Input$TransactionProductWhereInput<TRes> get every =>
      CopyWith$Input$TransactionProductWhereInput.stub(_res);
  CopyWith$Input$TransactionProductWhereInput<TRes> get some =>
      CopyWith$Input$TransactionProductWhereInput.stub(_res);
  CopyWith$Input$TransactionProductWhereInput<TRes> get none =>
      CopyWith$Input$TransactionProductWhereInput.stub(_res);
}

class Input$TransactionProductWhereInput {
  factory Input$TransactionProductWhereInput({
    List<Input$TransactionProductWhereInput>? AND,
    List<Input$TransactionProductWhereInput>? OR,
    List<Input$TransactionProductWhereInput>? NOT,
    Input$IntFilter? transaction_id,
    Input$IntFilter? product_id,
    Input$IntFilter? quantity,
    Input$FloatFilter? price,
    Input$StringFilter? product_name,
    Input$ProductsRelationFilter? product,
  }) =>
      Input$TransactionProductWhereInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (product_id != null) r'product_id': product_id,
        if (quantity != null) r'quantity': quantity,
        if (price != null) r'price': price,
        if (product_name != null) r'product_name': product_name,
        if (product != null) r'product': product,
      });

  Input$TransactionProductWhereInput._(this._$data);

  factory Input$TransactionProductWhereInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) => Input$TransactionProductWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) => Input$TransactionProductWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) => Input$TransactionProductWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : Input$IntFilter.fromJson(
              (l$transaction_id as Map<String, dynamic>));
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : Input$IntFilter.fromJson((l$product_id as Map<String, dynamic>));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : Input$IntFilter.fromJson((l$quantity as Map<String, dynamic>));
    }
    if (data.containsKey('price')) {
      final l$price = data['price'];
      result$data['price'] = l$price == null
          ? null
          : Input$FloatFilter.fromJson((l$price as Map<String, dynamic>));
    }
    if (data.containsKey('product_name')) {
      final l$product_name = data['product_name'];
      result$data['product_name'] = l$product_name == null
          ? null
          : Input$StringFilter.fromJson(
              (l$product_name as Map<String, dynamic>));
    }
    if (data.containsKey('product')) {
      final l$product = data['product'];
      result$data['product'] = l$product == null
          ? null
          : Input$ProductsRelationFilter.fromJson(
              (l$product as Map<String, dynamic>));
    }
    return Input$TransactionProductWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TransactionProductWhereInput>? get AND =>
      (_$data['AND'] as List<Input$TransactionProductWhereInput>?);
  List<Input$TransactionProductWhereInput>? get OR =>
      (_$data['OR'] as List<Input$TransactionProductWhereInput>?);
  List<Input$TransactionProductWhereInput>? get NOT =>
      (_$data['NOT'] as List<Input$TransactionProductWhereInput>?);
  Input$IntFilter? get transaction_id =>
      (_$data['transaction_id'] as Input$IntFilter?);
  Input$IntFilter? get product_id => (_$data['product_id'] as Input$IntFilter?);
  Input$IntFilter? get quantity => (_$data['quantity'] as Input$IntFilter?);
  Input$FloatFilter? get price => (_$data['price'] as Input$FloatFilter?);
  Input$StringFilter? get product_name =>
      (_$data['product_name'] as Input$StringFilter?);
  Input$ProductsRelationFilter? get product =>
      (_$data['product'] as Input$ProductsRelationFilter?);
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
    if (_$data.containsKey('transaction_id')) {
      final l$transaction_id = transaction_id;
      result$data['transaction_id'] = l$transaction_id?.toJson();
    }
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] = l$product_id?.toJson();
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] = l$quantity?.toJson();
    }
    if (_$data.containsKey('price')) {
      final l$price = price;
      result$data['price'] = l$price?.toJson();
    }
    if (_$data.containsKey('product_name')) {
      final l$product_name = product_name;
      result$data['product_name'] = l$product_name?.toJson();
    }
    if (_$data.containsKey('product')) {
      final l$product = product;
      result$data['product'] = l$product?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionProductWhereInput<
          Input$TransactionProductWhereInput>
      get copyWith => CopyWith$Input$TransactionProductWhereInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionProductWhereInput) ||
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
    final l$transaction_id = transaction_id;
    final lOther$transaction_id = other.transaction_id;
    if (_$data.containsKey('transaction_id') !=
        other._$data.containsKey('transaction_id')) {
      return false;
    }
    if (l$transaction_id != lOther$transaction_id) {
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
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (_$data.containsKey('quantity') !=
        other._$data.containsKey('quantity')) {
      return false;
    }
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (_$data.containsKey('price') != other._$data.containsKey('price')) {
      return false;
    }
    if (l$price != lOther$price) {
      return false;
    }
    final l$product_name = product_name;
    final lOther$product_name = other.product_name;
    if (_$data.containsKey('product_name') !=
        other._$data.containsKey('product_name')) {
      return false;
    }
    if (l$product_name != lOther$product_name) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (_$data.containsKey('product') != other._$data.containsKey('product')) {
      return false;
    }
    if (l$product != lOther$product) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$AND = AND;
    final l$OR = OR;
    final l$NOT = NOT;
    final l$transaction_id = transaction_id;
    final l$product_id = product_id;
    final l$quantity = quantity;
    final l$price = price;
    final l$product_name = product_name;
    final l$product = product;
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
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('price') ? l$price : const {},
      _$data.containsKey('product_name') ? l$product_name : const {},
      _$data.containsKey('product') ? l$product : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionProductWhereInput<TRes> {
  factory CopyWith$Input$TransactionProductWhereInput(
    Input$TransactionProductWhereInput instance,
    TRes Function(Input$TransactionProductWhereInput) then,
  ) = _CopyWithImpl$Input$TransactionProductWhereInput;

  factory CopyWith$Input$TransactionProductWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionProductWhereInput;

  TRes call({
    List<Input$TransactionProductWhereInput>? AND,
    List<Input$TransactionProductWhereInput>? OR,
    List<Input$TransactionProductWhereInput>? NOT,
    Input$IntFilter? transaction_id,
    Input$IntFilter? product_id,
    Input$IntFilter? quantity,
    Input$FloatFilter? price,
    Input$StringFilter? product_name,
    Input$ProductsRelationFilter? product,
  });
  TRes AND(
      Iterable<Input$TransactionProductWhereInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionProductWhereInput<
                      Input$TransactionProductWhereInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$TransactionProductWhereInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionProductWhereInput<
                      Input$TransactionProductWhereInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$TransactionProductWhereInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionProductWhereInput<
                      Input$TransactionProductWhereInput>>?)
          _fn);
  CopyWith$Input$ProductsRelationFilter<TRes> get product;
}

class _CopyWithImpl$Input$TransactionProductWhereInput<TRes>
    implements CopyWith$Input$TransactionProductWhereInput<TRes> {
  _CopyWithImpl$Input$TransactionProductWhereInput(
    this._instance,
    this._then,
  );

  final Input$TransactionProductWhereInput _instance;

  final TRes Function(Input$TransactionProductWhereInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? transaction_id = _undefined,
    Object? product_id = _undefined,
    Object? quantity = _undefined,
    Object? price = _undefined,
    Object? product_name = _undefined,
    Object? product = _undefined,
  }) =>
      _then(Input$TransactionProductWhereInput._({
        ..._instance._$data,
        if (AND != _undefined)
          'AND': (AND as List<Input$TransactionProductWhereInput>?),
        if (OR != _undefined)
          'OR': (OR as List<Input$TransactionProductWhereInput>?),
        if (NOT != _undefined)
          'NOT': (NOT as List<Input$TransactionProductWhereInput>?),
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Input$IntFilter?),
        if (product_id != _undefined)
          'product_id': (product_id as Input$IntFilter?),
        if (quantity != _undefined) 'quantity': (quantity as Input$IntFilter?),
        if (price != _undefined) 'price': (price as Input$FloatFilter?),
        if (product_name != _undefined)
          'product_name': (product_name as Input$StringFilter?),
        if (product != _undefined)
          'product': (product as Input$ProductsRelationFilter?),
      }));
  TRes AND(
          Iterable<Input$TransactionProductWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionProductWhereInput<
                          Input$TransactionProductWhereInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND
              ?.map((e) => CopyWith$Input$TransactionProductWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes OR(
          Iterable<Input$TransactionProductWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionProductWhereInput<
                          Input$TransactionProductWhereInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR
              ?.map((e) => CopyWith$Input$TransactionProductWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes NOT(
          Iterable<Input$TransactionProductWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionProductWhereInput<
                          Input$TransactionProductWhereInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT
              ?.map((e) => CopyWith$Input$TransactionProductWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$ProductsRelationFilter<TRes> get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Input$ProductsRelationFilter.stub(_then(_instance))
        : CopyWith$Input$ProductsRelationFilter(
            local$product, (e) => call(product: e));
  }
}

class _CopyWithStubImpl$Input$TransactionProductWhereInput<TRes>
    implements CopyWith$Input$TransactionProductWhereInput<TRes> {
  _CopyWithStubImpl$Input$TransactionProductWhereInput(this._res);

  TRes _res;

  call({
    List<Input$TransactionProductWhereInput>? AND,
    List<Input$TransactionProductWhereInput>? OR,
    List<Input$TransactionProductWhereInput>? NOT,
    Input$IntFilter? transaction_id,
    Input$IntFilter? product_id,
    Input$IntFilter? quantity,
    Input$FloatFilter? price,
    Input$StringFilter? product_name,
    Input$ProductsRelationFilter? product,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
  CopyWith$Input$ProductsRelationFilter<TRes> get product =>
      CopyWith$Input$ProductsRelationFilter.stub(_res);
}

class Input$SizesRelationFilter {
  factory Input$SizesRelationFilter({
    Input$SizesWhereInput? $is,
    Input$SizesWhereInput? isNot,
  }) =>
      Input$SizesRelationFilter._({
        if ($is != null) r'is': $is,
        if (isNot != null) r'isNot': isNot,
      });

  Input$SizesRelationFilter._(this._$data);

  factory Input$SizesRelationFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('is')) {
      final l$$is = data['is'];
      result$data['is'] = l$$is == null
          ? null
          : Input$SizesWhereInput.fromJson((l$$is as Map<String, dynamic>));
    }
    if (data.containsKey('isNot')) {
      final l$isNot = data['isNot'];
      result$data['isNot'] = l$isNot == null
          ? null
          : Input$SizesWhereInput.fromJson((l$isNot as Map<String, dynamic>));
    }
    return Input$SizesRelationFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SizesWhereInput? get $is => (_$data['is'] as Input$SizesWhereInput?);
  Input$SizesWhereInput? get isNot =>
      (_$data['isNot'] as Input$SizesWhereInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('is')) {
      final l$$is = $is;
      result$data['is'] = l$$is?.toJson();
    }
    if (_$data.containsKey('isNot')) {
      final l$isNot = isNot;
      result$data['isNot'] = l$isNot?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$SizesRelationFilter<Input$SizesRelationFilter> get copyWith =>
      CopyWith$Input$SizesRelationFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SizesRelationFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$is = $is;
    final lOther$$is = other.$is;
    if (_$data.containsKey('is') != other._$data.containsKey('is')) {
      return false;
    }
    if (l$$is != lOther$$is) {
      return false;
    }
    final l$isNot = isNot;
    final lOther$isNot = other.isNot;
    if (_$data.containsKey('isNot') != other._$data.containsKey('isNot')) {
      return false;
    }
    if (l$isNot != lOther$isNot) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$is = $is;
    final l$isNot = isNot;
    return Object.hashAll([
      _$data.containsKey('is') ? l$$is : const {},
      _$data.containsKey('isNot') ? l$isNot : const {},
    ]);
  }
}

abstract class CopyWith$Input$SizesRelationFilter<TRes> {
  factory CopyWith$Input$SizesRelationFilter(
    Input$SizesRelationFilter instance,
    TRes Function(Input$SizesRelationFilter) then,
  ) = _CopyWithImpl$Input$SizesRelationFilter;

  factory CopyWith$Input$SizesRelationFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$SizesRelationFilter;

  TRes call({
    Input$SizesWhereInput? $is,
    Input$SizesWhereInput? isNot,
  });
  CopyWith$Input$SizesWhereInput<TRes> get $is;
  CopyWith$Input$SizesWhereInput<TRes> get isNot;
}

class _CopyWithImpl$Input$SizesRelationFilter<TRes>
    implements CopyWith$Input$SizesRelationFilter<TRes> {
  _CopyWithImpl$Input$SizesRelationFilter(
    this._instance,
    this._then,
  );

  final Input$SizesRelationFilter _instance;

  final TRes Function(Input$SizesRelationFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $is = _undefined,
    Object? isNot = _undefined,
  }) =>
      _then(Input$SizesRelationFilter._({
        ..._instance._$data,
        if ($is != _undefined) 'is': ($is as Input$SizesWhereInput?),
        if (isNot != _undefined) 'isNot': (isNot as Input$SizesWhereInput?),
      }));
  CopyWith$Input$SizesWhereInput<TRes> get $is {
    final local$$is = _instance.$is;
    return local$$is == null
        ? CopyWith$Input$SizesWhereInput.stub(_then(_instance))
        : CopyWith$Input$SizesWhereInput(local$$is, (e) => call($is: e));
  }

  CopyWith$Input$SizesWhereInput<TRes> get isNot {
    final local$isNot = _instance.isNot;
    return local$isNot == null
        ? CopyWith$Input$SizesWhereInput.stub(_then(_instance))
        : CopyWith$Input$SizesWhereInput(local$isNot, (e) => call(isNot: e));
  }
}

class _CopyWithStubImpl$Input$SizesRelationFilter<TRes>
    implements CopyWith$Input$SizesRelationFilter<TRes> {
  _CopyWithStubImpl$Input$SizesRelationFilter(this._res);

  TRes _res;

  call({
    Input$SizesWhereInput? $is,
    Input$SizesWhereInput? isNot,
  }) =>
      _res;
  CopyWith$Input$SizesWhereInput<TRes> get $is =>
      CopyWith$Input$SizesWhereInput.stub(_res);
  CopyWith$Input$SizesWhereInput<TRes> get isNot =>
      CopyWith$Input$SizesWhereInput.stub(_res);
}

class Input$SizesWhereInput {
  factory Input$SizesWhereInput({
    List<Input$SizesWhereInput>? AND,
    List<Input$SizesWhereInput>? OR,
    List<Input$SizesWhereInput>? NOT,
    Input$IntFilter? id,
    Input$StringFilter? size,
    Input$ProductModelListRelationFilter? ProductModel,
  }) =>
      Input$SizesWhereInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (id != null) r'id': id,
        if (size != null) r'size': size,
        if (ProductModel != null) r'ProductModel': ProductModel,
      });

  Input$SizesWhereInput._(this._$data);

  factory Input$SizesWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) =>
              Input$SizesWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) =>
              Input$SizesWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) =>
              Input$SizesWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IntFilter.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('size')) {
      final l$size = data['size'];
      result$data['size'] = l$size == null
          ? null
          : Input$StringFilter.fromJson((l$size as Map<String, dynamic>));
    }
    if (data.containsKey('ProductModel')) {
      final l$ProductModel = data['ProductModel'];
      result$data['ProductModel'] = l$ProductModel == null
          ? null
          : Input$ProductModelListRelationFilter.fromJson(
              (l$ProductModel as Map<String, dynamic>));
    }
    return Input$SizesWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$SizesWhereInput>? get AND =>
      (_$data['AND'] as List<Input$SizesWhereInput>?);
  List<Input$SizesWhereInput>? get OR =>
      (_$data['OR'] as List<Input$SizesWhereInput>?);
  List<Input$SizesWhereInput>? get NOT =>
      (_$data['NOT'] as List<Input$SizesWhereInput>?);
  Input$IntFilter? get id => (_$data['id'] as Input$IntFilter?);
  Input$StringFilter? get size => (_$data['size'] as Input$StringFilter?);
  Input$ProductModelListRelationFilter? get ProductModel =>
      (_$data['ProductModel'] as Input$ProductModelListRelationFilter?);
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
    if (_$data.containsKey('size')) {
      final l$size = size;
      result$data['size'] = l$size?.toJson();
    }
    if (_$data.containsKey('ProductModel')) {
      final l$ProductModel = ProductModel;
      result$data['ProductModel'] = l$ProductModel?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$SizesWhereInput<Input$SizesWhereInput> get copyWith =>
      CopyWith$Input$SizesWhereInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SizesWhereInput) || runtimeType != other.runtimeType) {
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
    final l$size = size;
    final lOther$size = other.size;
    if (_$data.containsKey('size') != other._$data.containsKey('size')) {
      return false;
    }
    if (l$size != lOther$size) {
      return false;
    }
    final l$ProductModel = ProductModel;
    final lOther$ProductModel = other.ProductModel;
    if (_$data.containsKey('ProductModel') !=
        other._$data.containsKey('ProductModel')) {
      return false;
    }
    if (l$ProductModel != lOther$ProductModel) {
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
    final l$size = size;
    final l$ProductModel = ProductModel;
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
      _$data.containsKey('size') ? l$size : const {},
      _$data.containsKey('ProductModel') ? l$ProductModel : const {},
    ]);
  }
}

abstract class CopyWith$Input$SizesWhereInput<TRes> {
  factory CopyWith$Input$SizesWhereInput(
    Input$SizesWhereInput instance,
    TRes Function(Input$SizesWhereInput) then,
  ) = _CopyWithImpl$Input$SizesWhereInput;

  factory CopyWith$Input$SizesWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SizesWhereInput;

  TRes call({
    List<Input$SizesWhereInput>? AND,
    List<Input$SizesWhereInput>? OR,
    List<Input$SizesWhereInput>? NOT,
    Input$IntFilter? id,
    Input$StringFilter? size,
    Input$ProductModelListRelationFilter? ProductModel,
  });
  TRes AND(
      Iterable<Input$SizesWhereInput>? Function(
              Iterable<CopyWith$Input$SizesWhereInput<Input$SizesWhereInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$SizesWhereInput>? Function(
              Iterable<CopyWith$Input$SizesWhereInput<Input$SizesWhereInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$SizesWhereInput>? Function(
              Iterable<CopyWith$Input$SizesWhereInput<Input$SizesWhereInput>>?)
          _fn);
  CopyWith$Input$ProductModelListRelationFilter<TRes> get ProductModel;
}

class _CopyWithImpl$Input$SizesWhereInput<TRes>
    implements CopyWith$Input$SizesWhereInput<TRes> {
  _CopyWithImpl$Input$SizesWhereInput(
    this._instance,
    this._then,
  );

  final Input$SizesWhereInput _instance;

  final TRes Function(Input$SizesWhereInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? id = _undefined,
    Object? size = _undefined,
    Object? ProductModel = _undefined,
  }) =>
      _then(Input$SizesWhereInput._({
        ..._instance._$data,
        if (AND != _undefined) 'AND': (AND as List<Input$SizesWhereInput>?),
        if (OR != _undefined) 'OR': (OR as List<Input$SizesWhereInput>?),
        if (NOT != _undefined) 'NOT': (NOT as List<Input$SizesWhereInput>?),
        if (id != _undefined) 'id': (id as Input$IntFilter?),
        if (size != _undefined) 'size': (size as Input$StringFilter?),
        if (ProductModel != _undefined)
          'ProductModel':
              (ProductModel as Input$ProductModelListRelationFilter?),
      }));
  TRes AND(
          Iterable<Input$SizesWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$SizesWhereInput<Input$SizesWhereInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND?.map((e) => CopyWith$Input$SizesWhereInput(
                e,
                (i) => i,
              )))?.toList());
  TRes OR(
          Iterable<Input$SizesWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$SizesWhereInput<Input$SizesWhereInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR?.map((e) => CopyWith$Input$SizesWhereInput(
                e,
                (i) => i,
              )))?.toList());
  TRes NOT(
          Iterable<Input$SizesWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$SizesWhereInput<Input$SizesWhereInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT?.map((e) => CopyWith$Input$SizesWhereInput(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Input$ProductModelListRelationFilter<TRes> get ProductModel {
    final local$ProductModel = _instance.ProductModel;
    return local$ProductModel == null
        ? CopyWith$Input$ProductModelListRelationFilter.stub(_then(_instance))
        : CopyWith$Input$ProductModelListRelationFilter(
            local$ProductModel, (e) => call(ProductModel: e));
  }
}

class _CopyWithStubImpl$Input$SizesWhereInput<TRes>
    implements CopyWith$Input$SizesWhereInput<TRes> {
  _CopyWithStubImpl$Input$SizesWhereInput(this._res);

  TRes _res;

  call({
    List<Input$SizesWhereInput>? AND,
    List<Input$SizesWhereInput>? OR,
    List<Input$SizesWhereInput>? NOT,
    Input$IntFilter? id,
    Input$StringFilter? size,
    Input$ProductModelListRelationFilter? ProductModel,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
  CopyWith$Input$ProductModelListRelationFilter<TRes> get ProductModel =>
      CopyWith$Input$ProductModelListRelationFilter.stub(_res);
}

class Input$ColorsRelationFilter {
  factory Input$ColorsRelationFilter({
    Input$ColorsWhereInput? $is,
    Input$ColorsWhereInput? isNot,
  }) =>
      Input$ColorsRelationFilter._({
        if ($is != null) r'is': $is,
        if (isNot != null) r'isNot': isNot,
      });

  Input$ColorsRelationFilter._(this._$data);

  factory Input$ColorsRelationFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('is')) {
      final l$$is = data['is'];
      result$data['is'] = l$$is == null
          ? null
          : Input$ColorsWhereInput.fromJson((l$$is as Map<String, dynamic>));
    }
    if (data.containsKey('isNot')) {
      final l$isNot = data['isNot'];
      result$data['isNot'] = l$isNot == null
          ? null
          : Input$ColorsWhereInput.fromJson((l$isNot as Map<String, dynamic>));
    }
    return Input$ColorsRelationFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ColorsWhereInput? get $is => (_$data['is'] as Input$ColorsWhereInput?);
  Input$ColorsWhereInput? get isNot =>
      (_$data['isNot'] as Input$ColorsWhereInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('is')) {
      final l$$is = $is;
      result$data['is'] = l$$is?.toJson();
    }
    if (_$data.containsKey('isNot')) {
      final l$isNot = isNot;
      result$data['isNot'] = l$isNot?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ColorsRelationFilter<Input$ColorsRelationFilter>
      get copyWith => CopyWith$Input$ColorsRelationFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ColorsRelationFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$is = $is;
    final lOther$$is = other.$is;
    if (_$data.containsKey('is') != other._$data.containsKey('is')) {
      return false;
    }
    if (l$$is != lOther$$is) {
      return false;
    }
    final l$isNot = isNot;
    final lOther$isNot = other.isNot;
    if (_$data.containsKey('isNot') != other._$data.containsKey('isNot')) {
      return false;
    }
    if (l$isNot != lOther$isNot) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$is = $is;
    final l$isNot = isNot;
    return Object.hashAll([
      _$data.containsKey('is') ? l$$is : const {},
      _$data.containsKey('isNot') ? l$isNot : const {},
    ]);
  }
}

abstract class CopyWith$Input$ColorsRelationFilter<TRes> {
  factory CopyWith$Input$ColorsRelationFilter(
    Input$ColorsRelationFilter instance,
    TRes Function(Input$ColorsRelationFilter) then,
  ) = _CopyWithImpl$Input$ColorsRelationFilter;

  factory CopyWith$Input$ColorsRelationFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$ColorsRelationFilter;

  TRes call({
    Input$ColorsWhereInput? $is,
    Input$ColorsWhereInput? isNot,
  });
  CopyWith$Input$ColorsWhereInput<TRes> get $is;
  CopyWith$Input$ColorsWhereInput<TRes> get isNot;
}

class _CopyWithImpl$Input$ColorsRelationFilter<TRes>
    implements CopyWith$Input$ColorsRelationFilter<TRes> {
  _CopyWithImpl$Input$ColorsRelationFilter(
    this._instance,
    this._then,
  );

  final Input$ColorsRelationFilter _instance;

  final TRes Function(Input$ColorsRelationFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $is = _undefined,
    Object? isNot = _undefined,
  }) =>
      _then(Input$ColorsRelationFilter._({
        ..._instance._$data,
        if ($is != _undefined) 'is': ($is as Input$ColorsWhereInput?),
        if (isNot != _undefined) 'isNot': (isNot as Input$ColorsWhereInput?),
      }));
  CopyWith$Input$ColorsWhereInput<TRes> get $is {
    final local$$is = _instance.$is;
    return local$$is == null
        ? CopyWith$Input$ColorsWhereInput.stub(_then(_instance))
        : CopyWith$Input$ColorsWhereInput(local$$is, (e) => call($is: e));
  }

  CopyWith$Input$ColorsWhereInput<TRes> get isNot {
    final local$isNot = _instance.isNot;
    return local$isNot == null
        ? CopyWith$Input$ColorsWhereInput.stub(_then(_instance))
        : CopyWith$Input$ColorsWhereInput(local$isNot, (e) => call(isNot: e));
  }
}

class _CopyWithStubImpl$Input$ColorsRelationFilter<TRes>
    implements CopyWith$Input$ColorsRelationFilter<TRes> {
  _CopyWithStubImpl$Input$ColorsRelationFilter(this._res);

  TRes _res;

  call({
    Input$ColorsWhereInput? $is,
    Input$ColorsWhereInput? isNot,
  }) =>
      _res;
  CopyWith$Input$ColorsWhereInput<TRes> get $is =>
      CopyWith$Input$ColorsWhereInput.stub(_res);
  CopyWith$Input$ColorsWhereInput<TRes> get isNot =>
      CopyWith$Input$ColorsWhereInput.stub(_res);
}

class Input$ColorsOrderByWithRelationInput {
  factory Input$ColorsOrderByWithRelationInput({
    Enum$SortOrder? id,
    Enum$SortOrder? color,
    Input$ProductModelOrderByRelationAggregateInput? ProductModel,
  }) =>
      Input$ColorsOrderByWithRelationInput._({
        if (id != null) r'id': id,
        if (color != null) r'color': color,
        if (ProductModel != null) r'ProductModel': ProductModel,
      });

  Input$ColorsOrderByWithRelationInput._(this._$data);

  factory Input$ColorsOrderByWithRelationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortOrder((l$id as String));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] =
          l$color == null ? null : fromJson$Enum$SortOrder((l$color as String));
    }
    if (data.containsKey('ProductModel')) {
      final l$ProductModel = data['ProductModel'];
      result$data['ProductModel'] = l$ProductModel == null
          ? null
          : Input$ProductModelOrderByRelationAggregateInput.fromJson(
              (l$ProductModel as Map<String, dynamic>));
    }
    return Input$ColorsOrderByWithRelationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get id => (_$data['id'] as Enum$SortOrder?);
  Enum$SortOrder? get color => (_$data['color'] as Enum$SortOrder?);
  Input$ProductModelOrderByRelationAggregateInput? get ProductModel =>
      (_$data['ProductModel']
          as Input$ProductModelOrderByRelationAggregateInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortOrder(l$id);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] =
          l$color == null ? null : toJson$Enum$SortOrder(l$color);
    }
    if (_$data.containsKey('ProductModel')) {
      final l$ProductModel = ProductModel;
      result$data['ProductModel'] = l$ProductModel?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ColorsOrderByWithRelationInput<
          Input$ColorsOrderByWithRelationInput>
      get copyWith => CopyWith$Input$ColorsOrderByWithRelationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ColorsOrderByWithRelationInput) ||
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
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
      return false;
    }
    final l$ProductModel = ProductModel;
    final lOther$ProductModel = other.ProductModel;
    if (_$data.containsKey('ProductModel') !=
        other._$data.containsKey('ProductModel')) {
      return false;
    }
    if (l$ProductModel != lOther$ProductModel) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$color = color;
    final l$ProductModel = ProductModel;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('ProductModel') ? l$ProductModel : const {},
    ]);
  }
}

abstract class CopyWith$Input$ColorsOrderByWithRelationInput<TRes> {
  factory CopyWith$Input$ColorsOrderByWithRelationInput(
    Input$ColorsOrderByWithRelationInput instance,
    TRes Function(Input$ColorsOrderByWithRelationInput) then,
  ) = _CopyWithImpl$Input$ColorsOrderByWithRelationInput;

  factory CopyWith$Input$ColorsOrderByWithRelationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ColorsOrderByWithRelationInput;

  TRes call({
    Enum$SortOrder? id,
    Enum$SortOrder? color,
    Input$ProductModelOrderByRelationAggregateInput? ProductModel,
  });
  CopyWith$Input$ProductModelOrderByRelationAggregateInput<TRes>
      get ProductModel;
}

class _CopyWithImpl$Input$ColorsOrderByWithRelationInput<TRes>
    implements CopyWith$Input$ColorsOrderByWithRelationInput<TRes> {
  _CopyWithImpl$Input$ColorsOrderByWithRelationInput(
    this._instance,
    this._then,
  );

  final Input$ColorsOrderByWithRelationInput _instance;

  final TRes Function(Input$ColorsOrderByWithRelationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
    Object? ProductModel = _undefined,
  }) =>
      _then(Input$ColorsOrderByWithRelationInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortOrder?),
        if (color != _undefined) 'color': (color as Enum$SortOrder?),
        if (ProductModel != _undefined)
          'ProductModel': (ProductModel
              as Input$ProductModelOrderByRelationAggregateInput?),
      }));
  CopyWith$Input$ProductModelOrderByRelationAggregateInput<TRes>
      get ProductModel {
    final local$ProductModel = _instance.ProductModel;
    return local$ProductModel == null
        ? CopyWith$Input$ProductModelOrderByRelationAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductModelOrderByRelationAggregateInput(
            local$ProductModel, (e) => call(ProductModel: e));
  }
}

class _CopyWithStubImpl$Input$ColorsOrderByWithRelationInput<TRes>
    implements CopyWith$Input$ColorsOrderByWithRelationInput<TRes> {
  _CopyWithStubImpl$Input$ColorsOrderByWithRelationInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? id,
    Enum$SortOrder? color,
    Input$ProductModelOrderByRelationAggregateInput? ProductModel,
  }) =>
      _res;
  CopyWith$Input$ProductModelOrderByRelationAggregateInput<TRes>
      get ProductModel =>
          CopyWith$Input$ProductModelOrderByRelationAggregateInput.stub(_res);
}

class Input$ProductModelOrderByRelationAggregateInput {
  factory Input$ProductModelOrderByRelationAggregateInput(
          {Enum$SortOrder? $_count}) =>
      Input$ProductModelOrderByRelationAggregateInput._({
        if ($_count != null) r'_count': $_count,
      });

  Input$ProductModelOrderByRelationAggregateInput._(this._$data);

  factory Input$ProductModelOrderByRelationAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_count')) {
      final l$$_count = data['_count'];
      result$data['_count'] = l$$_count == null
          ? null
          : fromJson$Enum$SortOrder((l$$_count as String));
    }
    return Input$ProductModelOrderByRelationAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get $_count => (_$data['_count'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_count')) {
      final l$$_count = $_count;
      result$data['_count'] =
          l$$_count == null ? null : toJson$Enum$SortOrder(l$$_count);
    }
    return result$data;
  }

  CopyWith$Input$ProductModelOrderByRelationAggregateInput<
          Input$ProductModelOrderByRelationAggregateInput>
      get copyWith => CopyWith$Input$ProductModelOrderByRelationAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelOrderByRelationAggregateInput) ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$$_count = $_count;
    return Object.hashAll(
        [_$data.containsKey('_count') ? l$$_count : const {}]);
  }
}

abstract class CopyWith$Input$ProductModelOrderByRelationAggregateInput<TRes> {
  factory CopyWith$Input$ProductModelOrderByRelationAggregateInput(
    Input$ProductModelOrderByRelationAggregateInput instance,
    TRes Function(Input$ProductModelOrderByRelationAggregateInput) then,
  ) = _CopyWithImpl$Input$ProductModelOrderByRelationAggregateInput;

  factory CopyWith$Input$ProductModelOrderByRelationAggregateInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductModelOrderByRelationAggregateInput;

  TRes call({Enum$SortOrder? $_count});
}

class _CopyWithImpl$Input$ProductModelOrderByRelationAggregateInput<TRes>
    implements CopyWith$Input$ProductModelOrderByRelationAggregateInput<TRes> {
  _CopyWithImpl$Input$ProductModelOrderByRelationAggregateInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelOrderByRelationAggregateInput _instance;

  final TRes Function(Input$ProductModelOrderByRelationAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_count = _undefined}) =>
      _then(Input$ProductModelOrderByRelationAggregateInput._({
        ..._instance._$data,
        if ($_count != _undefined) '_count': ($_count as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$ProductModelOrderByRelationAggregateInput<TRes>
    implements CopyWith$Input$ProductModelOrderByRelationAggregateInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelOrderByRelationAggregateInput(this._res);

  TRes _res;

  call({Enum$SortOrder? $_count}) => _res;
}

class Input$ColorsWhereUniqueInput {
  factory Input$ColorsWhereUniqueInput({int? id}) =>
      Input$ColorsWhereUniqueInput._({
        if (id != null) r'id': id,
      });

  Input$ColorsWhereUniqueInput._(this._$data);

  factory Input$ColorsWhereUniqueInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Input$ColorsWhereUniqueInput._(result$data);
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

  CopyWith$Input$ColorsWhereUniqueInput<Input$ColorsWhereUniqueInput>
      get copyWith => CopyWith$Input$ColorsWhereUniqueInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ColorsWhereUniqueInput) ||
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

abstract class CopyWith$Input$ColorsWhereUniqueInput<TRes> {
  factory CopyWith$Input$ColorsWhereUniqueInput(
    Input$ColorsWhereUniqueInput instance,
    TRes Function(Input$ColorsWhereUniqueInput) then,
  ) = _CopyWithImpl$Input$ColorsWhereUniqueInput;

  factory CopyWith$Input$ColorsWhereUniqueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ColorsWhereUniqueInput;

  TRes call({int? id});
}

class _CopyWithImpl$Input$ColorsWhereUniqueInput<TRes>
    implements CopyWith$Input$ColorsWhereUniqueInput<TRes> {
  _CopyWithImpl$Input$ColorsWhereUniqueInput(
    this._instance,
    this._then,
  );

  final Input$ColorsWhereUniqueInput _instance;

  final TRes Function(Input$ColorsWhereUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Input$ColorsWhereUniqueInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Input$ColorsWhereUniqueInput<TRes>
    implements CopyWith$Input$ColorsWhereUniqueInput<TRes> {
  _CopyWithStubImpl$Input$ColorsWhereUniqueInput(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Input$ProductsOrderByWithRelationInput {
  factory Input$ProductsOrderByWithRelationInput({
    Enum$SortOrder? product_id,
    Enum$SortOrder? reference,
    Enum$SortOrder? name,
    Enum$SortOrder? buyingPrice,
    Enum$SortOrder? sellingPrice,
    Enum$SortOrder? description,
    Enum$SortOrder? picture,
    Enum$SortOrder? family_id,
    Input$ProductFamilyOrderByWithRelationInput? family,
    Input$ProductModelOrderByRelationAggregateInput? ProductModel,
    Input$TransactionProductOrderByRelationAggregateInput? TransactionProduct,
  }) =>
      Input$ProductsOrderByWithRelationInput._({
        if (product_id != null) r'product_id': product_id,
        if (reference != null) r'reference': reference,
        if (name != null) r'name': name,
        if (buyingPrice != null) r'buyingPrice': buyingPrice,
        if (sellingPrice != null) r'sellingPrice': sellingPrice,
        if (description != null) r'description': description,
        if (picture != null) r'picture': picture,
        if (family_id != null) r'family_id': family_id,
        if (family != null) r'family': family,
        if (ProductModel != null) r'ProductModel': ProductModel,
        if (TransactionProduct != null)
          r'TransactionProduct': TransactionProduct,
      });

  Input$ProductsOrderByWithRelationInput._(this._$data);

  factory Input$ProductsOrderByWithRelationInput.fromJson(
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
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input$ProductFamilyOrderByWithRelationInput.fromJson(
              (l$family as Map<String, dynamic>));
    }
    if (data.containsKey('ProductModel')) {
      final l$ProductModel = data['ProductModel'];
      result$data['ProductModel'] = l$ProductModel == null
          ? null
          : Input$ProductModelOrderByRelationAggregateInput.fromJson(
              (l$ProductModel as Map<String, dynamic>));
    }
    if (data.containsKey('TransactionProduct')) {
      final l$TransactionProduct = data['TransactionProduct'];
      result$data['TransactionProduct'] = l$TransactionProduct == null
          ? null
          : Input$TransactionProductOrderByRelationAggregateInput.fromJson(
              (l$TransactionProduct as Map<String, dynamic>));
    }
    return Input$ProductsOrderByWithRelationInput._(result$data);
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
  Input$ProductFamilyOrderByWithRelationInput? get family =>
      (_$data['family'] as Input$ProductFamilyOrderByWithRelationInput?);
  Input$ProductModelOrderByRelationAggregateInput? get ProductModel =>
      (_$data['ProductModel']
          as Input$ProductModelOrderByRelationAggregateInput?);
  Input$TransactionProductOrderByRelationAggregateInput?
      get TransactionProduct => (_$data['TransactionProduct']
          as Input$TransactionProductOrderByRelationAggregateInput?);
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
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    if (_$data.containsKey('ProductModel')) {
      final l$ProductModel = ProductModel;
      result$data['ProductModel'] = l$ProductModel?.toJson();
    }
    if (_$data.containsKey('TransactionProduct')) {
      final l$TransactionProduct = TransactionProduct;
      result$data['TransactionProduct'] = l$TransactionProduct?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductsOrderByWithRelationInput<
          Input$ProductsOrderByWithRelationInput>
      get copyWith => CopyWith$Input$ProductsOrderByWithRelationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsOrderByWithRelationInput) ||
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
    final l$family = family;
    final lOther$family = other.family;
    if (_$data.containsKey('family') != other._$data.containsKey('family')) {
      return false;
    }
    if (l$family != lOther$family) {
      return false;
    }
    final l$ProductModel = ProductModel;
    final lOther$ProductModel = other.ProductModel;
    if (_$data.containsKey('ProductModel') !=
        other._$data.containsKey('ProductModel')) {
      return false;
    }
    if (l$ProductModel != lOther$ProductModel) {
      return false;
    }
    final l$TransactionProduct = TransactionProduct;
    final lOther$TransactionProduct = other.TransactionProduct;
    if (_$data.containsKey('TransactionProduct') !=
        other._$data.containsKey('TransactionProduct')) {
      return false;
    }
    if (l$TransactionProduct != lOther$TransactionProduct) {
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
    final l$family = family;
    final l$ProductModel = ProductModel;
    final l$TransactionProduct = TransactionProduct;
    return Object.hashAll([
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('reference') ? l$reference : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('buyingPrice') ? l$buyingPrice : const {},
      _$data.containsKey('sellingPrice') ? l$sellingPrice : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('picture') ? l$picture : const {},
      _$data.containsKey('family_id') ? l$family_id : const {},
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('ProductModel') ? l$ProductModel : const {},
      _$data.containsKey('TransactionProduct')
          ? l$TransactionProduct
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductsOrderByWithRelationInput<TRes> {
  factory CopyWith$Input$ProductsOrderByWithRelationInput(
    Input$ProductsOrderByWithRelationInput instance,
    TRes Function(Input$ProductsOrderByWithRelationInput) then,
  ) = _CopyWithImpl$Input$ProductsOrderByWithRelationInput;

  factory CopyWith$Input$ProductsOrderByWithRelationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductsOrderByWithRelationInput;

  TRes call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? reference,
    Enum$SortOrder? name,
    Enum$SortOrder? buyingPrice,
    Enum$SortOrder? sellingPrice,
    Enum$SortOrder? description,
    Enum$SortOrder? picture,
    Enum$SortOrder? family_id,
    Input$ProductFamilyOrderByWithRelationInput? family,
    Input$ProductModelOrderByRelationAggregateInput? ProductModel,
    Input$TransactionProductOrderByRelationAggregateInput? TransactionProduct,
  });
  CopyWith$Input$ProductFamilyOrderByWithRelationInput<TRes> get family;
  CopyWith$Input$ProductModelOrderByRelationAggregateInput<TRes>
      get ProductModel;
  CopyWith$Input$TransactionProductOrderByRelationAggregateInput<TRes>
      get TransactionProduct;
}

class _CopyWithImpl$Input$ProductsOrderByWithRelationInput<TRes>
    implements CopyWith$Input$ProductsOrderByWithRelationInput<TRes> {
  _CopyWithImpl$Input$ProductsOrderByWithRelationInput(
    this._instance,
    this._then,
  );

  final Input$ProductsOrderByWithRelationInput _instance;

  final TRes Function(Input$ProductsOrderByWithRelationInput) _then;

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
    Object? family = _undefined,
    Object? ProductModel = _undefined,
    Object? TransactionProduct = _undefined,
  }) =>
      _then(Input$ProductsOrderByWithRelationInput._({
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
        if (family != _undefined)
          'family': (family as Input$ProductFamilyOrderByWithRelationInput?),
        if (ProductModel != _undefined)
          'ProductModel': (ProductModel
              as Input$ProductModelOrderByRelationAggregateInput?),
        if (TransactionProduct != _undefined)
          'TransactionProduct': (TransactionProduct
              as Input$TransactionProductOrderByRelationAggregateInput?),
      }));
  CopyWith$Input$ProductFamilyOrderByWithRelationInput<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith$Input$ProductFamilyOrderByWithRelationInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductFamilyOrderByWithRelationInput(
            local$family, (e) => call(family: e));
  }

  CopyWith$Input$ProductModelOrderByRelationAggregateInput<TRes>
      get ProductModel {
    final local$ProductModel = _instance.ProductModel;
    return local$ProductModel == null
        ? CopyWith$Input$ProductModelOrderByRelationAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductModelOrderByRelationAggregateInput(
            local$ProductModel, (e) => call(ProductModel: e));
  }

  CopyWith$Input$TransactionProductOrderByRelationAggregateInput<TRes>
      get TransactionProduct {
    final local$TransactionProduct = _instance.TransactionProduct;
    return local$TransactionProduct == null
        ? CopyWith$Input$TransactionProductOrderByRelationAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionProductOrderByRelationAggregateInput(
            local$TransactionProduct, (e) => call(TransactionProduct: e));
  }
}

class _CopyWithStubImpl$Input$ProductsOrderByWithRelationInput<TRes>
    implements CopyWith$Input$ProductsOrderByWithRelationInput<TRes> {
  _CopyWithStubImpl$Input$ProductsOrderByWithRelationInput(this._res);

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
    Input$ProductFamilyOrderByWithRelationInput? family,
    Input$ProductModelOrderByRelationAggregateInput? ProductModel,
    Input$TransactionProductOrderByRelationAggregateInput? TransactionProduct,
  }) =>
      _res;
  CopyWith$Input$ProductFamilyOrderByWithRelationInput<TRes> get family =>
      CopyWith$Input$ProductFamilyOrderByWithRelationInput.stub(_res);
  CopyWith$Input$ProductModelOrderByRelationAggregateInput<TRes>
      get ProductModel =>
          CopyWith$Input$ProductModelOrderByRelationAggregateInput.stub(_res);
  CopyWith$Input$TransactionProductOrderByRelationAggregateInput<TRes>
      get TransactionProduct =>
          CopyWith$Input$TransactionProductOrderByRelationAggregateInput.stub(
              _res);
}

class Input$ProductFamilyOrderByWithRelationInput {
  factory Input$ProductFamilyOrderByWithRelationInput({
    Enum$SortOrder? id,
    Enum$SortOrder? name,
    Input$ProductsOrderByRelationAggregateInput? Products,
  }) =>
      Input$ProductFamilyOrderByWithRelationInput._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (Products != null) r'Products': Products,
      });

  Input$ProductFamilyOrderByWithRelationInput._(this._$data);

  factory Input$ProductFamilyOrderByWithRelationInput.fromJson(
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
    if (data.containsKey('Products')) {
      final l$Products = data['Products'];
      result$data['Products'] = l$Products == null
          ? null
          : Input$ProductsOrderByRelationAggregateInput.fromJson(
              (l$Products as Map<String, dynamic>));
    }
    return Input$ProductFamilyOrderByWithRelationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get id => (_$data['id'] as Enum$SortOrder?);
  Enum$SortOrder? get name => (_$data['name'] as Enum$SortOrder?);
  Input$ProductsOrderByRelationAggregateInput? get Products =>
      (_$data['Products'] as Input$ProductsOrderByRelationAggregateInput?);
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
    if (_$data.containsKey('Products')) {
      final l$Products = Products;
      result$data['Products'] = l$Products?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductFamilyOrderByWithRelationInput<
          Input$ProductFamilyOrderByWithRelationInput>
      get copyWith => CopyWith$Input$ProductFamilyOrderByWithRelationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductFamilyOrderByWithRelationInput) ||
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
    final l$Products = Products;
    final lOther$Products = other.Products;
    if (_$data.containsKey('Products') !=
        other._$data.containsKey('Products')) {
      return false;
    }
    if (l$Products != lOther$Products) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$Products = Products;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('Products') ? l$Products : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductFamilyOrderByWithRelationInput<TRes> {
  factory CopyWith$Input$ProductFamilyOrderByWithRelationInput(
    Input$ProductFamilyOrderByWithRelationInput instance,
    TRes Function(Input$ProductFamilyOrderByWithRelationInput) then,
  ) = _CopyWithImpl$Input$ProductFamilyOrderByWithRelationInput;

  factory CopyWith$Input$ProductFamilyOrderByWithRelationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductFamilyOrderByWithRelationInput;

  TRes call({
    Enum$SortOrder? id,
    Enum$SortOrder? name,
    Input$ProductsOrderByRelationAggregateInput? Products,
  });
  CopyWith$Input$ProductsOrderByRelationAggregateInput<TRes> get Products;
}

class _CopyWithImpl$Input$ProductFamilyOrderByWithRelationInput<TRes>
    implements CopyWith$Input$ProductFamilyOrderByWithRelationInput<TRes> {
  _CopyWithImpl$Input$ProductFamilyOrderByWithRelationInput(
    this._instance,
    this._then,
  );

  final Input$ProductFamilyOrderByWithRelationInput _instance;

  final TRes Function(Input$ProductFamilyOrderByWithRelationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? Products = _undefined,
  }) =>
      _then(Input$ProductFamilyOrderByWithRelationInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortOrder?),
        if (name != _undefined) 'name': (name as Enum$SortOrder?),
        if (Products != _undefined)
          'Products':
              (Products as Input$ProductsOrderByRelationAggregateInput?),
      }));
  CopyWith$Input$ProductsOrderByRelationAggregateInput<TRes> get Products {
    final local$Products = _instance.Products;
    return local$Products == null
        ? CopyWith$Input$ProductsOrderByRelationAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductsOrderByRelationAggregateInput(
            local$Products, (e) => call(Products: e));
  }
}

class _CopyWithStubImpl$Input$ProductFamilyOrderByWithRelationInput<TRes>
    implements CopyWith$Input$ProductFamilyOrderByWithRelationInput<TRes> {
  _CopyWithStubImpl$Input$ProductFamilyOrderByWithRelationInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? id,
    Enum$SortOrder? name,
    Input$ProductsOrderByRelationAggregateInput? Products,
  }) =>
      _res;
  CopyWith$Input$ProductsOrderByRelationAggregateInput<TRes> get Products =>
      CopyWith$Input$ProductsOrderByRelationAggregateInput.stub(_res);
}

class Input$ProductsOrderByRelationAggregateInput {
  factory Input$ProductsOrderByRelationAggregateInput(
          {Enum$SortOrder? $_count}) =>
      Input$ProductsOrderByRelationAggregateInput._({
        if ($_count != null) r'_count': $_count,
      });

  Input$ProductsOrderByRelationAggregateInput._(this._$data);

  factory Input$ProductsOrderByRelationAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_count')) {
      final l$$_count = data['_count'];
      result$data['_count'] = l$$_count == null
          ? null
          : fromJson$Enum$SortOrder((l$$_count as String));
    }
    return Input$ProductsOrderByRelationAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get $_count => (_$data['_count'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_count')) {
      final l$$_count = $_count;
      result$data['_count'] =
          l$$_count == null ? null : toJson$Enum$SortOrder(l$$_count);
    }
    return result$data;
  }

  CopyWith$Input$ProductsOrderByRelationAggregateInput<
          Input$ProductsOrderByRelationAggregateInput>
      get copyWith => CopyWith$Input$ProductsOrderByRelationAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsOrderByRelationAggregateInput) ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$$_count = $_count;
    return Object.hashAll(
        [_$data.containsKey('_count') ? l$$_count : const {}]);
  }
}

abstract class CopyWith$Input$ProductsOrderByRelationAggregateInput<TRes> {
  factory CopyWith$Input$ProductsOrderByRelationAggregateInput(
    Input$ProductsOrderByRelationAggregateInput instance,
    TRes Function(Input$ProductsOrderByRelationAggregateInput) then,
  ) = _CopyWithImpl$Input$ProductsOrderByRelationAggregateInput;

  factory CopyWith$Input$ProductsOrderByRelationAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductsOrderByRelationAggregateInput;

  TRes call({Enum$SortOrder? $_count});
}

class _CopyWithImpl$Input$ProductsOrderByRelationAggregateInput<TRes>
    implements CopyWith$Input$ProductsOrderByRelationAggregateInput<TRes> {
  _CopyWithImpl$Input$ProductsOrderByRelationAggregateInput(
    this._instance,
    this._then,
  );

  final Input$ProductsOrderByRelationAggregateInput _instance;

  final TRes Function(Input$ProductsOrderByRelationAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_count = _undefined}) =>
      _then(Input$ProductsOrderByRelationAggregateInput._({
        ..._instance._$data,
        if ($_count != _undefined) '_count': ($_count as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$ProductsOrderByRelationAggregateInput<TRes>
    implements CopyWith$Input$ProductsOrderByRelationAggregateInput<TRes> {
  _CopyWithStubImpl$Input$ProductsOrderByRelationAggregateInput(this._res);

  TRes _res;

  call({Enum$SortOrder? $_count}) => _res;
}

class Input$TransactionProductOrderByRelationAggregateInput {
  factory Input$TransactionProductOrderByRelationAggregateInput(
          {Enum$SortOrder? $_count}) =>
      Input$TransactionProductOrderByRelationAggregateInput._({
        if ($_count != null) r'_count': $_count,
      });

  Input$TransactionProductOrderByRelationAggregateInput._(this._$data);

  factory Input$TransactionProductOrderByRelationAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_count')) {
      final l$$_count = data['_count'];
      result$data['_count'] = l$$_count == null
          ? null
          : fromJson$Enum$SortOrder((l$$_count as String));
    }
    return Input$TransactionProductOrderByRelationAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get $_count => (_$data['_count'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_count')) {
      final l$$_count = $_count;
      result$data['_count'] =
          l$$_count == null ? null : toJson$Enum$SortOrder(l$$_count);
    }
    return result$data;
  }

  CopyWith$Input$TransactionProductOrderByRelationAggregateInput<
          Input$TransactionProductOrderByRelationAggregateInput>
      get copyWith =>
          CopyWith$Input$TransactionProductOrderByRelationAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionProductOrderByRelationAggregateInput) ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$$_count = $_count;
    return Object.hashAll(
        [_$data.containsKey('_count') ? l$$_count : const {}]);
  }
}

abstract class CopyWith$Input$TransactionProductOrderByRelationAggregateInput<
    TRes> {
  factory CopyWith$Input$TransactionProductOrderByRelationAggregateInput(
    Input$TransactionProductOrderByRelationAggregateInput instance,
    TRes Function(Input$TransactionProductOrderByRelationAggregateInput) then,
  ) = _CopyWithImpl$Input$TransactionProductOrderByRelationAggregateInput;

  factory CopyWith$Input$TransactionProductOrderByRelationAggregateInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionProductOrderByRelationAggregateInput;

  TRes call({Enum$SortOrder? $_count});
}

class _CopyWithImpl$Input$TransactionProductOrderByRelationAggregateInput<TRes>
    implements
        CopyWith$Input$TransactionProductOrderByRelationAggregateInput<TRes> {
  _CopyWithImpl$Input$TransactionProductOrderByRelationAggregateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionProductOrderByRelationAggregateInput _instance;

  final TRes Function(Input$TransactionProductOrderByRelationAggregateInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_count = _undefined}) =>
      _then(Input$TransactionProductOrderByRelationAggregateInput._({
        ..._instance._$data,
        if ($_count != _undefined) '_count': ($_count as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$TransactionProductOrderByRelationAggregateInput<
        TRes>
    implements
        CopyWith$Input$TransactionProductOrderByRelationAggregateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionProductOrderByRelationAggregateInput(
      this._res);

  TRes _res;

  call({Enum$SortOrder? $_count}) => _res;
}

class Input$ProductsWhereUniqueInput {
  factory Input$ProductsWhereUniqueInput({int? product_id}) =>
      Input$ProductsWhereUniqueInput._({
        if (product_id != null) r'product_id': product_id,
      });

  Input$ProductsWhereUniqueInput._(this._$data);

  factory Input$ProductsWhereUniqueInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = (l$product_id as int?);
    }
    return Input$ProductsWhereUniqueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get product_id => (_$data['product_id'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] = l$product_id;
    }
    return result$data;
  }

  CopyWith$Input$ProductsWhereUniqueInput<Input$ProductsWhereUniqueInput>
      get copyWith => CopyWith$Input$ProductsWhereUniqueInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsWhereUniqueInput) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$product_id = product_id;
    return Object.hashAll(
        [_$data.containsKey('product_id') ? l$product_id : const {}]);
  }
}

abstract class CopyWith$Input$ProductsWhereUniqueInput<TRes> {
  factory CopyWith$Input$ProductsWhereUniqueInput(
    Input$ProductsWhereUniqueInput instance,
    TRes Function(Input$ProductsWhereUniqueInput) then,
  ) = _CopyWithImpl$Input$ProductsWhereUniqueInput;

  factory CopyWith$Input$ProductsWhereUniqueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductsWhereUniqueInput;

  TRes call({int? product_id});
}

class _CopyWithImpl$Input$ProductsWhereUniqueInput<TRes>
    implements CopyWith$Input$ProductsWhereUniqueInput<TRes> {
  _CopyWithImpl$Input$ProductsWhereUniqueInput(
    this._instance,
    this._then,
  );

  final Input$ProductsWhereUniqueInput _instance;

  final TRes Function(Input$ProductsWhereUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? product_id = _undefined}) =>
      _then(Input$ProductsWhereUniqueInput._({
        ..._instance._$data,
        if (product_id != _undefined) 'product_id': (product_id as int?),
      }));
}

class _CopyWithStubImpl$Input$ProductsWhereUniqueInput<TRes>
    implements CopyWith$Input$ProductsWhereUniqueInput<TRes> {
  _CopyWithStubImpl$Input$ProductsWhereUniqueInput(this._res);

  TRes _res;

  call({int? product_id}) => _res;
}

class Input$ProductModelOrderByWithRelationInput {
  factory Input$ProductModelOrderByWithRelationInput({
    Enum$SortOrder? product_id,
    Enum$SortOrder? color_id,
    Enum$SortOrder? size_id,
    Enum$SortOrder? quantity,
    Input$ProductsOrderByWithRelationInput? product,
    Input$SizesOrderByWithRelationInput? size,
    Input$ColorsOrderByWithRelationInput? color,
  }) =>
      Input$ProductModelOrderByWithRelationInput._({
        if (product_id != null) r'product_id': product_id,
        if (color_id != null) r'color_id': color_id,
        if (size_id != null) r'size_id': size_id,
        if (quantity != null) r'quantity': quantity,
        if (product != null) r'product': product,
        if (size != null) r'size': size,
        if (color != null) r'color': color,
      });

  Input$ProductModelOrderByWithRelationInput._(this._$data);

  factory Input$ProductModelOrderByWithRelationInput.fromJson(
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
    if (data.containsKey('product')) {
      final l$product = data['product'];
      result$data['product'] = l$product == null
          ? null
          : Input$ProductsOrderByWithRelationInput.fromJson(
              (l$product as Map<String, dynamic>));
    }
    if (data.containsKey('size')) {
      final l$size = data['size'];
      result$data['size'] = l$size == null
          ? null
          : Input$SizesOrderByWithRelationInput.fromJson(
              (l$size as Map<String, dynamic>));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input$ColorsOrderByWithRelationInput.fromJson(
              (l$color as Map<String, dynamic>));
    }
    return Input$ProductModelOrderByWithRelationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get color_id => (_$data['color_id'] as Enum$SortOrder?);
  Enum$SortOrder? get size_id => (_$data['size_id'] as Enum$SortOrder?);
  Enum$SortOrder? get quantity => (_$data['quantity'] as Enum$SortOrder?);
  Input$ProductsOrderByWithRelationInput? get product =>
      (_$data['product'] as Input$ProductsOrderByWithRelationInput?);
  Input$SizesOrderByWithRelationInput? get size =>
      (_$data['size'] as Input$SizesOrderByWithRelationInput?);
  Input$ColorsOrderByWithRelationInput? get color =>
      (_$data['color'] as Input$ColorsOrderByWithRelationInput?);
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
    if (_$data.containsKey('product')) {
      final l$product = product;
      result$data['product'] = l$product?.toJson();
    }
    if (_$data.containsKey('size')) {
      final l$size = size;
      result$data['size'] = l$size?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductModelOrderByWithRelationInput<
          Input$ProductModelOrderByWithRelationInput>
      get copyWith => CopyWith$Input$ProductModelOrderByWithRelationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelOrderByWithRelationInput) ||
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
    final l$product = product;
    final lOther$product = other.product;
    if (_$data.containsKey('product') != other._$data.containsKey('product')) {
      return false;
    }
    if (l$product != lOther$product) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (_$data.containsKey('size') != other._$data.containsKey('size')) {
      return false;
    }
    if (l$size != lOther$size) {
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
    final l$product_id = product_id;
    final l$color_id = color_id;
    final l$size_id = size_id;
    final l$quantity = quantity;
    final l$product = product;
    final l$size = size;
    final l$color = color;
    return Object.hashAll([
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('color_id') ? l$color_id : const {},
      _$data.containsKey('size_id') ? l$size_id : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('product') ? l$product : const {},
      _$data.containsKey('size') ? l$size : const {},
      _$data.containsKey('color') ? l$color : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductModelOrderByWithRelationInput<TRes> {
  factory CopyWith$Input$ProductModelOrderByWithRelationInput(
    Input$ProductModelOrderByWithRelationInput instance,
    TRes Function(Input$ProductModelOrderByWithRelationInput) then,
  ) = _CopyWithImpl$Input$ProductModelOrderByWithRelationInput;

  factory CopyWith$Input$ProductModelOrderByWithRelationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductModelOrderByWithRelationInput;

  TRes call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? color_id,
    Enum$SortOrder? size_id,
    Enum$SortOrder? quantity,
    Input$ProductsOrderByWithRelationInput? product,
    Input$SizesOrderByWithRelationInput? size,
    Input$ColorsOrderByWithRelationInput? color,
  });
  CopyWith$Input$ProductsOrderByWithRelationInput<TRes> get product;
  CopyWith$Input$SizesOrderByWithRelationInput<TRes> get size;
  CopyWith$Input$ColorsOrderByWithRelationInput<TRes> get color;
}

class _CopyWithImpl$Input$ProductModelOrderByWithRelationInput<TRes>
    implements CopyWith$Input$ProductModelOrderByWithRelationInput<TRes> {
  _CopyWithImpl$Input$ProductModelOrderByWithRelationInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelOrderByWithRelationInput _instance;

  final TRes Function(Input$ProductModelOrderByWithRelationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? product_id = _undefined,
    Object? color_id = _undefined,
    Object? size_id = _undefined,
    Object? quantity = _undefined,
    Object? product = _undefined,
    Object? size = _undefined,
    Object? color = _undefined,
  }) =>
      _then(Input$ProductModelOrderByWithRelationInput._({
        ..._instance._$data,
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (color_id != _undefined) 'color_id': (color_id as Enum$SortOrder?),
        if (size_id != _undefined) 'size_id': (size_id as Enum$SortOrder?),
        if (quantity != _undefined) 'quantity': (quantity as Enum$SortOrder?),
        if (product != _undefined)
          'product': (product as Input$ProductsOrderByWithRelationInput?),
        if (size != _undefined)
          'size': (size as Input$SizesOrderByWithRelationInput?),
        if (color != _undefined)
          'color': (color as Input$ColorsOrderByWithRelationInput?),
      }));
  CopyWith$Input$ProductsOrderByWithRelationInput<TRes> get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Input$ProductsOrderByWithRelationInput.stub(_then(_instance))
        : CopyWith$Input$ProductsOrderByWithRelationInput(
            local$product, (e) => call(product: e));
  }

  CopyWith$Input$SizesOrderByWithRelationInput<TRes> get size {
    final local$size = _instance.size;
    return local$size == null
        ? CopyWith$Input$SizesOrderByWithRelationInput.stub(_then(_instance))
        : CopyWith$Input$SizesOrderByWithRelationInput(
            local$size, (e) => call(size: e));
  }

  CopyWith$Input$ColorsOrderByWithRelationInput<TRes> get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith$Input$ColorsOrderByWithRelationInput.stub(_then(_instance))
        : CopyWith$Input$ColorsOrderByWithRelationInput(
            local$color, (e) => call(color: e));
  }
}

class _CopyWithStubImpl$Input$ProductModelOrderByWithRelationInput<TRes>
    implements CopyWith$Input$ProductModelOrderByWithRelationInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelOrderByWithRelationInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? product_id,
    Enum$SortOrder? color_id,
    Enum$SortOrder? size_id,
    Enum$SortOrder? quantity,
    Input$ProductsOrderByWithRelationInput? product,
    Input$SizesOrderByWithRelationInput? size,
    Input$ColorsOrderByWithRelationInput? color,
  }) =>
      _res;
  CopyWith$Input$ProductsOrderByWithRelationInput<TRes> get product =>
      CopyWith$Input$ProductsOrderByWithRelationInput.stub(_res);
  CopyWith$Input$SizesOrderByWithRelationInput<TRes> get size =>
      CopyWith$Input$SizesOrderByWithRelationInput.stub(_res);
  CopyWith$Input$ColorsOrderByWithRelationInput<TRes> get color =>
      CopyWith$Input$ColorsOrderByWithRelationInput.stub(_res);
}

class Input$SizesOrderByWithRelationInput {
  factory Input$SizesOrderByWithRelationInput({
    Enum$SortOrder? id,
    Enum$SortOrder? size,
    Input$ProductModelOrderByRelationAggregateInput? ProductModel,
  }) =>
      Input$SizesOrderByWithRelationInput._({
        if (id != null) r'id': id,
        if (size != null) r'size': size,
        if (ProductModel != null) r'ProductModel': ProductModel,
      });

  Input$SizesOrderByWithRelationInput._(this._$data);

  factory Input$SizesOrderByWithRelationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortOrder((l$id as String));
    }
    if (data.containsKey('size')) {
      final l$size = data['size'];
      result$data['size'] =
          l$size == null ? null : fromJson$Enum$SortOrder((l$size as String));
    }
    if (data.containsKey('ProductModel')) {
      final l$ProductModel = data['ProductModel'];
      result$data['ProductModel'] = l$ProductModel == null
          ? null
          : Input$ProductModelOrderByRelationAggregateInput.fromJson(
              (l$ProductModel as Map<String, dynamic>));
    }
    return Input$SizesOrderByWithRelationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get id => (_$data['id'] as Enum$SortOrder?);
  Enum$SortOrder? get size => (_$data['size'] as Enum$SortOrder?);
  Input$ProductModelOrderByRelationAggregateInput? get ProductModel =>
      (_$data['ProductModel']
          as Input$ProductModelOrderByRelationAggregateInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortOrder(l$id);
    }
    if (_$data.containsKey('size')) {
      final l$size = size;
      result$data['size'] =
          l$size == null ? null : toJson$Enum$SortOrder(l$size);
    }
    if (_$data.containsKey('ProductModel')) {
      final l$ProductModel = ProductModel;
      result$data['ProductModel'] = l$ProductModel?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$SizesOrderByWithRelationInput<
          Input$SizesOrderByWithRelationInput>
      get copyWith => CopyWith$Input$SizesOrderByWithRelationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SizesOrderByWithRelationInput) ||
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
    final l$size = size;
    final lOther$size = other.size;
    if (_$data.containsKey('size') != other._$data.containsKey('size')) {
      return false;
    }
    if (l$size != lOther$size) {
      return false;
    }
    final l$ProductModel = ProductModel;
    final lOther$ProductModel = other.ProductModel;
    if (_$data.containsKey('ProductModel') !=
        other._$data.containsKey('ProductModel')) {
      return false;
    }
    if (l$ProductModel != lOther$ProductModel) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$size = size;
    final l$ProductModel = ProductModel;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('size') ? l$size : const {},
      _$data.containsKey('ProductModel') ? l$ProductModel : const {},
    ]);
  }
}

abstract class CopyWith$Input$SizesOrderByWithRelationInput<TRes> {
  factory CopyWith$Input$SizesOrderByWithRelationInput(
    Input$SizesOrderByWithRelationInput instance,
    TRes Function(Input$SizesOrderByWithRelationInput) then,
  ) = _CopyWithImpl$Input$SizesOrderByWithRelationInput;

  factory CopyWith$Input$SizesOrderByWithRelationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SizesOrderByWithRelationInput;

  TRes call({
    Enum$SortOrder? id,
    Enum$SortOrder? size,
    Input$ProductModelOrderByRelationAggregateInput? ProductModel,
  });
  CopyWith$Input$ProductModelOrderByRelationAggregateInput<TRes>
      get ProductModel;
}

class _CopyWithImpl$Input$SizesOrderByWithRelationInput<TRes>
    implements CopyWith$Input$SizesOrderByWithRelationInput<TRes> {
  _CopyWithImpl$Input$SizesOrderByWithRelationInput(
    this._instance,
    this._then,
  );

  final Input$SizesOrderByWithRelationInput _instance;

  final TRes Function(Input$SizesOrderByWithRelationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? size = _undefined,
    Object? ProductModel = _undefined,
  }) =>
      _then(Input$SizesOrderByWithRelationInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortOrder?),
        if (size != _undefined) 'size': (size as Enum$SortOrder?),
        if (ProductModel != _undefined)
          'ProductModel': (ProductModel
              as Input$ProductModelOrderByRelationAggregateInput?),
      }));
  CopyWith$Input$ProductModelOrderByRelationAggregateInput<TRes>
      get ProductModel {
    final local$ProductModel = _instance.ProductModel;
    return local$ProductModel == null
        ? CopyWith$Input$ProductModelOrderByRelationAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductModelOrderByRelationAggregateInput(
            local$ProductModel, (e) => call(ProductModel: e));
  }
}

class _CopyWithStubImpl$Input$SizesOrderByWithRelationInput<TRes>
    implements CopyWith$Input$SizesOrderByWithRelationInput<TRes> {
  _CopyWithStubImpl$Input$SizesOrderByWithRelationInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? id,
    Enum$SortOrder? size,
    Input$ProductModelOrderByRelationAggregateInput? ProductModel,
  }) =>
      _res;
  CopyWith$Input$ProductModelOrderByRelationAggregateInput<TRes>
      get ProductModel =>
          CopyWith$Input$ProductModelOrderByRelationAggregateInput.stub(_res);
}

class Input$ProductModelWhereUniqueInput {
  factory Input$ProductModelWhereUniqueInput(
          {Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput?
              product_id_color_id_size_id}) =>
      Input$ProductModelWhereUniqueInput._({
        if (product_id_color_id_size_id != null)
          r'product_id_color_id_size_id': product_id_color_id_size_id,
      });

  Input$ProductModelWhereUniqueInput._(this._$data);

  factory Input$ProductModelWhereUniqueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('product_id_color_id_size_id')) {
      final l$product_id_color_id_size_id = data['product_id_color_id_size_id'];
      result$data['product_id_color_id_size_id'] =
          l$product_id_color_id_size_id == null
              ? null
              : Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput
                  .fromJson(
                      (l$product_id_color_id_size_id as Map<String, dynamic>));
    }
    return Input$ProductModelWhereUniqueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput?
      get product_id_color_id_size_id => (_$data['product_id_color_id_size_id']
          as Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('product_id_color_id_size_id')) {
      final l$product_id_color_id_size_id = product_id_color_id_size_id;
      result$data['product_id_color_id_size_id'] =
          l$product_id_color_id_size_id?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductModelWhereUniqueInput<
          Input$ProductModelWhereUniqueInput>
      get copyWith => CopyWith$Input$ProductModelWhereUniqueInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelWhereUniqueInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$product_id_color_id_size_id = product_id_color_id_size_id;
    final lOther$product_id_color_id_size_id =
        other.product_id_color_id_size_id;
    if (_$data.containsKey('product_id_color_id_size_id') !=
        other._$data.containsKey('product_id_color_id_size_id')) {
      return false;
    }
    if (l$product_id_color_id_size_id != lOther$product_id_color_id_size_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$product_id_color_id_size_id = product_id_color_id_size_id;
    return Object.hashAll([
      _$data.containsKey('product_id_color_id_size_id')
          ? l$product_id_color_id_size_id
          : const {}
    ]);
  }
}

abstract class CopyWith$Input$ProductModelWhereUniqueInput<TRes> {
  factory CopyWith$Input$ProductModelWhereUniqueInput(
    Input$ProductModelWhereUniqueInput instance,
    TRes Function(Input$ProductModelWhereUniqueInput) then,
  ) = _CopyWithImpl$Input$ProductModelWhereUniqueInput;

  factory CopyWith$Input$ProductModelWhereUniqueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductModelWhereUniqueInput;

  TRes call(
      {Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput?
          product_id_color_id_size_id});
  CopyWith$Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput<TRes>
      get product_id_color_id_size_id;
}

class _CopyWithImpl$Input$ProductModelWhereUniqueInput<TRes>
    implements CopyWith$Input$ProductModelWhereUniqueInput<TRes> {
  _CopyWithImpl$Input$ProductModelWhereUniqueInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelWhereUniqueInput _instance;

  final TRes Function(Input$ProductModelWhereUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? product_id_color_id_size_id = _undefined}) =>
      _then(Input$ProductModelWhereUniqueInput._({
        ..._instance._$data,
        if (product_id_color_id_size_id != _undefined)
          'product_id_color_id_size_id': (product_id_color_id_size_id
              as Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput?),
      }));
  CopyWith$Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput<TRes>
      get product_id_color_id_size_id {
    final local$product_id_color_id_size_id =
        _instance.product_id_color_id_size_id;
    return local$product_id_color_id_size_id == null
        ? CopyWith$Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput
            .stub(_then(_instance))
        : CopyWith$Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput(
            local$product_id_color_id_size_id,
            (e) => call(product_id_color_id_size_id: e));
  }
}

class _CopyWithStubImpl$Input$ProductModelWhereUniqueInput<TRes>
    implements CopyWith$Input$ProductModelWhereUniqueInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelWhereUniqueInput(this._res);

  TRes _res;

  call(
          {Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput?
              product_id_color_id_size_id}) =>
      _res;
  CopyWith$Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput<TRes>
      get product_id_color_id_size_id =>
          CopyWith$Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput
              .stub(_res);
}

class Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput {
  factory Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput({
    required int product_id,
    required int color_id,
    required int size_id,
  }) =>
      Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput._({
        r'product_id': product_id,
        r'color_id': color_id,
        r'size_id': size_id,
      });

  Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput._(this._$data);

  factory Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$product_id = data['product_id'];
    result$data['product_id'] = (l$product_id as int);
    final l$color_id = data['color_id'];
    result$data['color_id'] = (l$color_id as int);
    final l$size_id = data['size_id'];
    result$data['size_id'] = (l$size_id as int);
    return Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  int get product_id => (_$data['product_id'] as int);
  int get color_id => (_$data['color_id'] as int);
  int get size_id => (_$data['size_id'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$product_id = product_id;
    result$data['product_id'] = l$product_id;
    final l$color_id = color_id;
    result$data['color_id'] = l$color_id;
    final l$size_id = size_id;
    result$data['size_id'] = l$size_id;
    return result$data;
  }

  CopyWith$Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput<
          Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput>
      get copyWith =>
          CopyWith$Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$color_id = color_id;
    final lOther$color_id = other.color_id;
    if (l$color_id != lOther$color_id) {
      return false;
    }
    final l$size_id = size_id;
    final lOther$size_id = other.size_id;
    if (l$size_id != lOther$size_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$product_id = product_id;
    final l$color_id = color_id;
    final l$size_id = size_id;
    return Object.hashAll([
      l$product_id,
      l$color_id,
      l$size_id,
    ]);
  }
}

abstract class CopyWith$Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput<
    TRes> {
  factory CopyWith$Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput(
    Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput instance,
    TRes Function(
            Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput)
        then,
  ) = _CopyWithImpl$Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput;

  factory CopyWith$Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput;

  TRes call({
    int? product_id,
    int? color_id,
    int? size_id,
  });
}

class _CopyWithImpl$Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput<
        TRes>
    implements
        CopyWith$Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput<
            TRes> {
  _CopyWithImpl$Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput
      _instance;

  final TRes Function(
      Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? product_id = _undefined,
    Object? color_id = _undefined,
    Object? size_id = _undefined,
  }) =>
      _then(Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput._({
        ..._instance._$data,
        if (product_id != _undefined && product_id != null)
          'product_id': (product_id as int),
        if (color_id != _undefined && color_id != null)
          'color_id': (color_id as int),
        if (size_id != _undefined && size_id != null)
          'size_id': (size_id as int),
      }));
}

class _CopyWithStubImpl$Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput<
        TRes>
    implements
        CopyWith$Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput<
            TRes> {
  _CopyWithStubImpl$Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput(
      this._res);

  TRes _res;

  call({
    int? product_id,
    int? color_id,
    int? size_id,
  }) =>
      _res;
}

class Input$TransactionProductOrderByWithRelationInput {
  factory Input$TransactionProductOrderByWithRelationInput({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? price,
    Enum$SortOrder? product_name,
    Input$ProductsOrderByWithRelationInput? product,
  }) =>
      Input$TransactionProductOrderByWithRelationInput._({
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (product_id != null) r'product_id': product_id,
        if (quantity != null) r'quantity': quantity,
        if (price != null) r'price': price,
        if (product_name != null) r'product_name': product_name,
        if (product != null) r'product': product,
      });

  Input$TransactionProductOrderByWithRelationInput._(this._$data);

  factory Input$TransactionProductOrderByWithRelationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_id as String));
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : fromJson$Enum$SortOrder((l$product_id as String));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : fromJson$Enum$SortOrder((l$quantity as String));
    }
    if (data.containsKey('price')) {
      final l$price = data['price'];
      result$data['price'] =
          l$price == null ? null : fromJson$Enum$SortOrder((l$price as String));
    }
    if (data.containsKey('product_name')) {
      final l$product_name = data['product_name'];
      result$data['product_name'] = l$product_name == null
          ? null
          : fromJson$Enum$SortOrder((l$product_name as String));
    }
    if (data.containsKey('product')) {
      final l$product = data['product'];
      result$data['product'] = l$product == null
          ? null
          : Input$ProductsOrderByWithRelationInput.fromJson(
              (l$product as Map<String, dynamic>));
    }
    return Input$TransactionProductOrderByWithRelationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_id =>
      (_$data['transaction_id'] as Enum$SortOrder?);
  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get quantity => (_$data['quantity'] as Enum$SortOrder?);
  Enum$SortOrder? get price => (_$data['price'] as Enum$SortOrder?);
  Enum$SortOrder? get product_name =>
      (_$data['product_name'] as Enum$SortOrder?);
  Input$ProductsOrderByWithRelationInput? get product =>
      (_$data['product'] as Input$ProductsOrderByWithRelationInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_id')) {
      final l$transaction_id = transaction_id;
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_id);
    }
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] =
          l$product_id == null ? null : toJson$Enum$SortOrder(l$product_id);
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] =
          l$quantity == null ? null : toJson$Enum$SortOrder(l$quantity);
    }
    if (_$data.containsKey('price')) {
      final l$price = price;
      result$data['price'] =
          l$price == null ? null : toJson$Enum$SortOrder(l$price);
    }
    if (_$data.containsKey('product_name')) {
      final l$product_name = product_name;
      result$data['product_name'] =
          l$product_name == null ? null : toJson$Enum$SortOrder(l$product_name);
    }
    if (_$data.containsKey('product')) {
      final l$product = product;
      result$data['product'] = l$product?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionProductOrderByWithRelationInput<
          Input$TransactionProductOrderByWithRelationInput>
      get copyWith => CopyWith$Input$TransactionProductOrderByWithRelationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionProductOrderByWithRelationInput) ||
        runtimeType != other.runtimeType) {
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
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (_$data.containsKey('product_id') !=
        other._$data.containsKey('product_id')) {
      return false;
    }
    if (l$product_id != lOther$product_id) {
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
    final l$price = price;
    final lOther$price = other.price;
    if (_$data.containsKey('price') != other._$data.containsKey('price')) {
      return false;
    }
    if (l$price != lOther$price) {
      return false;
    }
    final l$product_name = product_name;
    final lOther$product_name = other.product_name;
    if (_$data.containsKey('product_name') !=
        other._$data.containsKey('product_name')) {
      return false;
    }
    if (l$product_name != lOther$product_name) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (_$data.containsKey('product') != other._$data.containsKey('product')) {
      return false;
    }
    if (l$product != lOther$product) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_id = transaction_id;
    final l$product_id = product_id;
    final l$quantity = quantity;
    final l$price = price;
    final l$product_name = product_name;
    final l$product = product;
    return Object.hashAll([
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('price') ? l$price : const {},
      _$data.containsKey('product_name') ? l$product_name : const {},
      _$data.containsKey('product') ? l$product : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionProductOrderByWithRelationInput<TRes> {
  factory CopyWith$Input$TransactionProductOrderByWithRelationInput(
    Input$TransactionProductOrderByWithRelationInput instance,
    TRes Function(Input$TransactionProductOrderByWithRelationInput) then,
  ) = _CopyWithImpl$Input$TransactionProductOrderByWithRelationInput;

  factory CopyWith$Input$TransactionProductOrderByWithRelationInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionProductOrderByWithRelationInput;

  TRes call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? price,
    Enum$SortOrder? product_name,
    Input$ProductsOrderByWithRelationInput? product,
  });
  CopyWith$Input$ProductsOrderByWithRelationInput<TRes> get product;
}

class _CopyWithImpl$Input$TransactionProductOrderByWithRelationInput<TRes>
    implements CopyWith$Input$TransactionProductOrderByWithRelationInput<TRes> {
  _CopyWithImpl$Input$TransactionProductOrderByWithRelationInput(
    this._instance,
    this._then,
  );

  final Input$TransactionProductOrderByWithRelationInput _instance;

  final TRes Function(Input$TransactionProductOrderByWithRelationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? product_id = _undefined,
    Object? quantity = _undefined,
    Object? price = _undefined,
    Object? product_name = _undefined,
    Object? product = _undefined,
  }) =>
      _then(Input$TransactionProductOrderByWithRelationInput._({
        ..._instance._$data,
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Enum$SortOrder?),
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (quantity != _undefined) 'quantity': (quantity as Enum$SortOrder?),
        if (price != _undefined) 'price': (price as Enum$SortOrder?),
        if (product_name != _undefined)
          'product_name': (product_name as Enum$SortOrder?),
        if (product != _undefined)
          'product': (product as Input$ProductsOrderByWithRelationInput?),
      }));
  CopyWith$Input$ProductsOrderByWithRelationInput<TRes> get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Input$ProductsOrderByWithRelationInput.stub(_then(_instance))
        : CopyWith$Input$ProductsOrderByWithRelationInput(
            local$product, (e) => call(product: e));
  }
}

class _CopyWithStubImpl$Input$TransactionProductOrderByWithRelationInput<TRes>
    implements CopyWith$Input$TransactionProductOrderByWithRelationInput<TRes> {
  _CopyWithStubImpl$Input$TransactionProductOrderByWithRelationInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? price,
    Enum$SortOrder? product_name,
    Input$ProductsOrderByWithRelationInput? product,
  }) =>
      _res;
  CopyWith$Input$ProductsOrderByWithRelationInput<TRes> get product =>
      CopyWith$Input$ProductsOrderByWithRelationInput.stub(_res);
}

class Input$TransactionProductWhereUniqueInput {
  factory Input$TransactionProductWhereUniqueInput({int? transaction_id}) =>
      Input$TransactionProductWhereUniqueInput._({
        if (transaction_id != null) r'transaction_id': transaction_id,
      });

  Input$TransactionProductWhereUniqueInput._(this._$data);

  factory Input$TransactionProductWhereUniqueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = (l$transaction_id as int?);
    }
    return Input$TransactionProductWhereUniqueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get transaction_id => (_$data['transaction_id'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_id')) {
      final l$transaction_id = transaction_id;
      result$data['transaction_id'] = l$transaction_id;
    }
    return result$data;
  }

  CopyWith$Input$TransactionProductWhereUniqueInput<
          Input$TransactionProductWhereUniqueInput>
      get copyWith => CopyWith$Input$TransactionProductWhereUniqueInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionProductWhereUniqueInput) ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_id = transaction_id;
    return Object.hashAll(
        [_$data.containsKey('transaction_id') ? l$transaction_id : const {}]);
  }
}

abstract class CopyWith$Input$TransactionProductWhereUniqueInput<TRes> {
  factory CopyWith$Input$TransactionProductWhereUniqueInput(
    Input$TransactionProductWhereUniqueInput instance,
    TRes Function(Input$TransactionProductWhereUniqueInput) then,
  ) = _CopyWithImpl$Input$TransactionProductWhereUniqueInput;

  factory CopyWith$Input$TransactionProductWhereUniqueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionProductWhereUniqueInput;

  TRes call({int? transaction_id});
}

class _CopyWithImpl$Input$TransactionProductWhereUniqueInput<TRes>
    implements CopyWith$Input$TransactionProductWhereUniqueInput<TRes> {
  _CopyWithImpl$Input$TransactionProductWhereUniqueInput(
    this._instance,
    this._then,
  );

  final Input$TransactionProductWhereUniqueInput _instance;

  final TRes Function(Input$TransactionProductWhereUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? transaction_id = _undefined}) =>
      _then(Input$TransactionProductWhereUniqueInput._({
        ..._instance._$data,
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as int?),
      }));
}

class _CopyWithStubImpl$Input$TransactionProductWhereUniqueInput<TRes>
    implements CopyWith$Input$TransactionProductWhereUniqueInput<TRes> {
  _CopyWithStubImpl$Input$TransactionProductWhereUniqueInput(this._res);

  TRes _res;

  call({int? transaction_id}) => _res;
}

class Input$ColorsOrderByWithAggregationInput {
  factory Input$ColorsOrderByWithAggregationInput({
    Enum$SortOrder? id,
    Enum$SortOrder? color,
    Input$ColorsCountOrderByAggregateInput? $_count,
    Input$ColorsAvgOrderByAggregateInput? $_avg,
    Input$ColorsMaxOrderByAggregateInput? $_max,
    Input$ColorsMinOrderByAggregateInput? $_min,
    Input$ColorsSumOrderByAggregateInput? $_sum,
  }) =>
      Input$ColorsOrderByWithAggregationInput._({
        if (id != null) r'id': id,
        if (color != null) r'color': color,
        if ($_count != null) r'_count': $_count,
        if ($_avg != null) r'_avg': $_avg,
        if ($_max != null) r'_max': $_max,
        if ($_min != null) r'_min': $_min,
        if ($_sum != null) r'_sum': $_sum,
      });

  Input$ColorsOrderByWithAggregationInput._(this._$data);

  factory Input$ColorsOrderByWithAggregationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortOrder((l$id as String));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] =
          l$color == null ? null : fromJson$Enum$SortOrder((l$color as String));
    }
    if (data.containsKey('_count')) {
      final l$$_count = data['_count'];
      result$data['_count'] = l$$_count == null
          ? null
          : Input$ColorsCountOrderByAggregateInput.fromJson(
              (l$$_count as Map<String, dynamic>));
    }
    if (data.containsKey('_avg')) {
      final l$$_avg = data['_avg'];
      result$data['_avg'] = l$$_avg == null
          ? null
          : Input$ColorsAvgOrderByAggregateInput.fromJson(
              (l$$_avg as Map<String, dynamic>));
    }
    if (data.containsKey('_max')) {
      final l$$_max = data['_max'];
      result$data['_max'] = l$$_max == null
          ? null
          : Input$ColorsMaxOrderByAggregateInput.fromJson(
              (l$$_max as Map<String, dynamic>));
    }
    if (data.containsKey('_min')) {
      final l$$_min = data['_min'];
      result$data['_min'] = l$$_min == null
          ? null
          : Input$ColorsMinOrderByAggregateInput.fromJson(
              (l$$_min as Map<String, dynamic>));
    }
    if (data.containsKey('_sum')) {
      final l$$_sum = data['_sum'];
      result$data['_sum'] = l$$_sum == null
          ? null
          : Input$ColorsSumOrderByAggregateInput.fromJson(
              (l$$_sum as Map<String, dynamic>));
    }
    return Input$ColorsOrderByWithAggregationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get id => (_$data['id'] as Enum$SortOrder?);
  Enum$SortOrder? get color => (_$data['color'] as Enum$SortOrder?);
  Input$ColorsCountOrderByAggregateInput? get $_count =>
      (_$data['_count'] as Input$ColorsCountOrderByAggregateInput?);
  Input$ColorsAvgOrderByAggregateInput? get $_avg =>
      (_$data['_avg'] as Input$ColorsAvgOrderByAggregateInput?);
  Input$ColorsMaxOrderByAggregateInput? get $_max =>
      (_$data['_max'] as Input$ColorsMaxOrderByAggregateInput?);
  Input$ColorsMinOrderByAggregateInput? get $_min =>
      (_$data['_min'] as Input$ColorsMinOrderByAggregateInput?);
  Input$ColorsSumOrderByAggregateInput? get $_sum =>
      (_$data['_sum'] as Input$ColorsSumOrderByAggregateInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortOrder(l$id);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] =
          l$color == null ? null : toJson$Enum$SortOrder(l$color);
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

  CopyWith$Input$ColorsOrderByWithAggregationInput<
          Input$ColorsOrderByWithAggregationInput>
      get copyWith => CopyWith$Input$ColorsOrderByWithAggregationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ColorsOrderByWithAggregationInput) ||
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
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
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
    final l$color = color;
    final l$$_count = $_count;
    final l$$_avg = $_avg;
    final l$$_max = $_max;
    final l$$_min = $_min;
    final l$$_sum = $_sum;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('_count') ? l$$_count : const {},
      _$data.containsKey('_avg') ? l$$_avg : const {},
      _$data.containsKey('_max') ? l$$_max : const {},
      _$data.containsKey('_min') ? l$$_min : const {},
      _$data.containsKey('_sum') ? l$$_sum : const {},
    ]);
  }
}

abstract class CopyWith$Input$ColorsOrderByWithAggregationInput<TRes> {
  factory CopyWith$Input$ColorsOrderByWithAggregationInput(
    Input$ColorsOrderByWithAggregationInput instance,
    TRes Function(Input$ColorsOrderByWithAggregationInput) then,
  ) = _CopyWithImpl$Input$ColorsOrderByWithAggregationInput;

  factory CopyWith$Input$ColorsOrderByWithAggregationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ColorsOrderByWithAggregationInput;

  TRes call({
    Enum$SortOrder? id,
    Enum$SortOrder? color,
    Input$ColorsCountOrderByAggregateInput? $_count,
    Input$ColorsAvgOrderByAggregateInput? $_avg,
    Input$ColorsMaxOrderByAggregateInput? $_max,
    Input$ColorsMinOrderByAggregateInput? $_min,
    Input$ColorsSumOrderByAggregateInput? $_sum,
  });
  CopyWith$Input$ColorsCountOrderByAggregateInput<TRes> get $_count;
  CopyWith$Input$ColorsAvgOrderByAggregateInput<TRes> get $_avg;
  CopyWith$Input$ColorsMaxOrderByAggregateInput<TRes> get $_max;
  CopyWith$Input$ColorsMinOrderByAggregateInput<TRes> get $_min;
}

class _CopyWithImpl$Input$ColorsOrderByWithAggregationInput<TRes>
    implements CopyWith$Input$ColorsOrderByWithAggregationInput<TRes> {
  _CopyWithImpl$Input$ColorsOrderByWithAggregationInput(
    this._instance,
    this._then,
  );

  final Input$ColorsOrderByWithAggregationInput _instance;

  final TRes Function(Input$ColorsOrderByWithAggregationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
    Object? $_count = _undefined,
    Object? $_avg = _undefined,
    Object? $_max = _undefined,
    Object? $_min = _undefined,
    Object? $_sum = _undefined,
  }) =>
      _then(Input$ColorsOrderByWithAggregationInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortOrder?),
        if (color != _undefined) 'color': (color as Enum$SortOrder?),
        if ($_count != _undefined)
          '_count': ($_count as Input$ColorsCountOrderByAggregateInput?),
        if ($_avg != _undefined)
          '_avg': ($_avg as Input$ColorsAvgOrderByAggregateInput?),
        if ($_max != _undefined)
          '_max': ($_max as Input$ColorsMaxOrderByAggregateInput?),
        if ($_min != _undefined)
          '_min': ($_min as Input$ColorsMinOrderByAggregateInput?),
        if ($_sum != _undefined)
          '_sum': ($_sum as Input$ColorsSumOrderByAggregateInput?),
      }));
  CopyWith$Input$ColorsCountOrderByAggregateInput<TRes> get $_count {
    final local$$_count = _instance.$_count;
    return local$$_count == null
        ? CopyWith$Input$ColorsCountOrderByAggregateInput.stub(_then(_instance))
        : CopyWith$Input$ColorsCountOrderByAggregateInput(
            local$$_count, (e) => call($_count: e));
  }

  CopyWith$Input$ColorsAvgOrderByAggregateInput<TRes> get $_avg {
    final local$$_avg = _instance.$_avg;
    return local$$_avg == null
        ? CopyWith$Input$ColorsAvgOrderByAggregateInput.stub(_then(_instance))
        : CopyWith$Input$ColorsAvgOrderByAggregateInput(
            local$$_avg, (e) => call($_avg: e));
  }

  CopyWith$Input$ColorsMaxOrderByAggregateInput<TRes> get $_max {
    final local$$_max = _instance.$_max;
    return local$$_max == null
        ? CopyWith$Input$ColorsMaxOrderByAggregateInput.stub(_then(_instance))
        : CopyWith$Input$ColorsMaxOrderByAggregateInput(
            local$$_max, (e) => call($_max: e));
  }

  CopyWith$Input$ColorsMinOrderByAggregateInput<TRes> get $_min {
    final local$$_min = _instance.$_min;
    return local$$_min == null
        ? CopyWith$Input$ColorsMinOrderByAggregateInput.stub(_then(_instance))
        : CopyWith$Input$ColorsMinOrderByAggregateInput(
            local$$_min, (e) => call($_min: e));
  }
}

class _CopyWithStubImpl$Input$ColorsOrderByWithAggregationInput<TRes>
    implements CopyWith$Input$ColorsOrderByWithAggregationInput<TRes> {
  _CopyWithStubImpl$Input$ColorsOrderByWithAggregationInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? id,
    Enum$SortOrder? color,
    Input$ColorsCountOrderByAggregateInput? $_count,
    Input$ColorsAvgOrderByAggregateInput? $_avg,
    Input$ColorsMaxOrderByAggregateInput? $_max,
    Input$ColorsMinOrderByAggregateInput? $_min,
    Input$ColorsSumOrderByAggregateInput? $_sum,
  }) =>
      _res;
  CopyWith$Input$ColorsCountOrderByAggregateInput<TRes> get $_count =>
      CopyWith$Input$ColorsCountOrderByAggregateInput.stub(_res);
  CopyWith$Input$ColorsAvgOrderByAggregateInput<TRes> get $_avg =>
      CopyWith$Input$ColorsAvgOrderByAggregateInput.stub(_res);
  CopyWith$Input$ColorsMaxOrderByAggregateInput<TRes> get $_max =>
      CopyWith$Input$ColorsMaxOrderByAggregateInput.stub(_res);
  CopyWith$Input$ColorsMinOrderByAggregateInput<TRes> get $_min =>
      CopyWith$Input$ColorsMinOrderByAggregateInput.stub(_res);
}

class Input$ColorsCountOrderByAggregateInput {
  factory Input$ColorsCountOrderByAggregateInput({
    Enum$SortOrder? id,
    Enum$SortOrder? color,
  }) =>
      Input$ColorsCountOrderByAggregateInput._({
        if (id != null) r'id': id,
        if (color != null) r'color': color,
      });

  Input$ColorsCountOrderByAggregateInput._(this._$data);

  factory Input$ColorsCountOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortOrder((l$id as String));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] =
          l$color == null ? null : fromJson$Enum$SortOrder((l$color as String));
    }
    return Input$ColorsCountOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get id => (_$data['id'] as Enum$SortOrder?);
  Enum$SortOrder? get color => (_$data['color'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortOrder(l$id);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] =
          l$color == null ? null : toJson$Enum$SortOrder(l$color);
    }
    return result$data;
  }

  CopyWith$Input$ColorsCountOrderByAggregateInput<
          Input$ColorsCountOrderByAggregateInput>
      get copyWith => CopyWith$Input$ColorsCountOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ColorsCountOrderByAggregateInput) ||
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
    final l$id = id;
    final l$color = color;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('color') ? l$color : const {},
    ]);
  }
}

abstract class CopyWith$Input$ColorsCountOrderByAggregateInput<TRes> {
  factory CopyWith$Input$ColorsCountOrderByAggregateInput(
    Input$ColorsCountOrderByAggregateInput instance,
    TRes Function(Input$ColorsCountOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$ColorsCountOrderByAggregateInput;

  factory CopyWith$Input$ColorsCountOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ColorsCountOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? id,
    Enum$SortOrder? color,
  });
}

class _CopyWithImpl$Input$ColorsCountOrderByAggregateInput<TRes>
    implements CopyWith$Input$ColorsCountOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$ColorsCountOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$ColorsCountOrderByAggregateInput _instance;

  final TRes Function(Input$ColorsCountOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
  }) =>
      _then(Input$ColorsCountOrderByAggregateInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortOrder?),
        if (color != _undefined) 'color': (color as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$ColorsCountOrderByAggregateInput<TRes>
    implements CopyWith$Input$ColorsCountOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$ColorsCountOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? id,
    Enum$SortOrder? color,
  }) =>
      _res;
}

class Input$ColorsAvgOrderByAggregateInput {
  factory Input$ColorsAvgOrderByAggregateInput({Enum$SortOrder? id}) =>
      Input$ColorsAvgOrderByAggregateInput._({
        if (id != null) r'id': id,
      });

  Input$ColorsAvgOrderByAggregateInput._(this._$data);

  factory Input$ColorsAvgOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortOrder((l$id as String));
    }
    return Input$ColorsAvgOrderByAggregateInput._(result$data);
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

  CopyWith$Input$ColorsAvgOrderByAggregateInput<
          Input$ColorsAvgOrderByAggregateInput>
      get copyWith => CopyWith$Input$ColorsAvgOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ColorsAvgOrderByAggregateInput) ||
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

abstract class CopyWith$Input$ColorsAvgOrderByAggregateInput<TRes> {
  factory CopyWith$Input$ColorsAvgOrderByAggregateInput(
    Input$ColorsAvgOrderByAggregateInput instance,
    TRes Function(Input$ColorsAvgOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$ColorsAvgOrderByAggregateInput;

  factory CopyWith$Input$ColorsAvgOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ColorsAvgOrderByAggregateInput;

  TRes call({Enum$SortOrder? id});
}

class _CopyWithImpl$Input$ColorsAvgOrderByAggregateInput<TRes>
    implements CopyWith$Input$ColorsAvgOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$ColorsAvgOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$ColorsAvgOrderByAggregateInput _instance;

  final TRes Function(Input$ColorsAvgOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Input$ColorsAvgOrderByAggregateInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$ColorsAvgOrderByAggregateInput<TRes>
    implements CopyWith$Input$ColorsAvgOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$ColorsAvgOrderByAggregateInput(this._res);

  TRes _res;

  call({Enum$SortOrder? id}) => _res;
}

class Input$ColorsMaxOrderByAggregateInput {
  factory Input$ColorsMaxOrderByAggregateInput({
    Enum$SortOrder? id,
    Enum$SortOrder? color,
  }) =>
      Input$ColorsMaxOrderByAggregateInput._({
        if (id != null) r'id': id,
        if (color != null) r'color': color,
      });

  Input$ColorsMaxOrderByAggregateInput._(this._$data);

  factory Input$ColorsMaxOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortOrder((l$id as String));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] =
          l$color == null ? null : fromJson$Enum$SortOrder((l$color as String));
    }
    return Input$ColorsMaxOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get id => (_$data['id'] as Enum$SortOrder?);
  Enum$SortOrder? get color => (_$data['color'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortOrder(l$id);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] =
          l$color == null ? null : toJson$Enum$SortOrder(l$color);
    }
    return result$data;
  }

  CopyWith$Input$ColorsMaxOrderByAggregateInput<
          Input$ColorsMaxOrderByAggregateInput>
      get copyWith => CopyWith$Input$ColorsMaxOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ColorsMaxOrderByAggregateInput) ||
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
    final l$id = id;
    final l$color = color;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('color') ? l$color : const {},
    ]);
  }
}

abstract class CopyWith$Input$ColorsMaxOrderByAggregateInput<TRes> {
  factory CopyWith$Input$ColorsMaxOrderByAggregateInput(
    Input$ColorsMaxOrderByAggregateInput instance,
    TRes Function(Input$ColorsMaxOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$ColorsMaxOrderByAggregateInput;

  factory CopyWith$Input$ColorsMaxOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ColorsMaxOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? id,
    Enum$SortOrder? color,
  });
}

class _CopyWithImpl$Input$ColorsMaxOrderByAggregateInput<TRes>
    implements CopyWith$Input$ColorsMaxOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$ColorsMaxOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$ColorsMaxOrderByAggregateInput _instance;

  final TRes Function(Input$ColorsMaxOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
  }) =>
      _then(Input$ColorsMaxOrderByAggregateInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortOrder?),
        if (color != _undefined) 'color': (color as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$ColorsMaxOrderByAggregateInput<TRes>
    implements CopyWith$Input$ColorsMaxOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$ColorsMaxOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? id,
    Enum$SortOrder? color,
  }) =>
      _res;
}

class Input$ColorsMinOrderByAggregateInput {
  factory Input$ColorsMinOrderByAggregateInput({
    Enum$SortOrder? id,
    Enum$SortOrder? color,
  }) =>
      Input$ColorsMinOrderByAggregateInput._({
        if (id != null) r'id': id,
        if (color != null) r'color': color,
      });

  Input$ColorsMinOrderByAggregateInput._(this._$data);

  factory Input$ColorsMinOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortOrder((l$id as String));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] =
          l$color == null ? null : fromJson$Enum$SortOrder((l$color as String));
    }
    return Input$ColorsMinOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get id => (_$data['id'] as Enum$SortOrder?);
  Enum$SortOrder? get color => (_$data['color'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortOrder(l$id);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] =
          l$color == null ? null : toJson$Enum$SortOrder(l$color);
    }
    return result$data;
  }

  CopyWith$Input$ColorsMinOrderByAggregateInput<
          Input$ColorsMinOrderByAggregateInput>
      get copyWith => CopyWith$Input$ColorsMinOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ColorsMinOrderByAggregateInput) ||
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
    final l$id = id;
    final l$color = color;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('color') ? l$color : const {},
    ]);
  }
}

abstract class CopyWith$Input$ColorsMinOrderByAggregateInput<TRes> {
  factory CopyWith$Input$ColorsMinOrderByAggregateInput(
    Input$ColorsMinOrderByAggregateInput instance,
    TRes Function(Input$ColorsMinOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$ColorsMinOrderByAggregateInput;

  factory CopyWith$Input$ColorsMinOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ColorsMinOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? id,
    Enum$SortOrder? color,
  });
}

class _CopyWithImpl$Input$ColorsMinOrderByAggregateInput<TRes>
    implements CopyWith$Input$ColorsMinOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$ColorsMinOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$ColorsMinOrderByAggregateInput _instance;

  final TRes Function(Input$ColorsMinOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
  }) =>
      _then(Input$ColorsMinOrderByAggregateInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortOrder?),
        if (color != _undefined) 'color': (color as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$ColorsMinOrderByAggregateInput<TRes>
    implements CopyWith$Input$ColorsMinOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$ColorsMinOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? id,
    Enum$SortOrder? color,
  }) =>
      _res;
}

enum Enum$PayementsScalarFieldEnum {
  payement_id,
  transaction_id,
  payement,
  $unknown
}

String toJson$Enum$PayementsScalarFieldEnum(Enum$PayementsScalarFieldEnum e) {
  switch (e) {
    case Enum$PayementsScalarFieldEnum.payement_id:
      return r'payement_id';
    case Enum$PayementsScalarFieldEnum.transaction_id:
      return r'transaction_id';
    case Enum$PayementsScalarFieldEnum.payement:
      return r'payement';
    case Enum$PayementsScalarFieldEnum.$unknown:
      return r'$unknown';
  }
}

Enum$PayementsScalarFieldEnum fromJson$Enum$PayementsScalarFieldEnum(
    String value) {
  switch (value) {
    case r'payement_id':
      return Enum$PayementsScalarFieldEnum.payement_id;
    case r'transaction_id':
      return Enum$PayementsScalarFieldEnum.transaction_id;
    case r'payement':
      return Enum$PayementsScalarFieldEnum.payement;
    default:
      return Enum$PayementsScalarFieldEnum.$unknown;
  }
}

enum Enum$CityScalarFieldEnum { city_id, city_name, $unknown }

String toJson$Enum$CityScalarFieldEnum(Enum$CityScalarFieldEnum e) {
  switch (e) {
    case Enum$CityScalarFieldEnum.city_id:
      return r'city_id';
    case Enum$CityScalarFieldEnum.city_name:
      return r'city_name';
    case Enum$CityScalarFieldEnum.$unknown:
      return r'$unknown';
  }
}

Enum$CityScalarFieldEnum fromJson$Enum$CityScalarFieldEnum(String value) {
  switch (value) {
    case r'city_id':
      return Enum$CityScalarFieldEnum.city_id;
    case r'city_name':
      return Enum$CityScalarFieldEnum.city_name;
    default:
      return Enum$CityScalarFieldEnum.$unknown;
  }
}

enum Enum$ProductsScalarFieldEnum {
  product_id,
  reference,
  name,
  buyingPrice,
  sellingPrice,
  description,
  picture,
  family_id,
  $unknown
}

String toJson$Enum$ProductsScalarFieldEnum(Enum$ProductsScalarFieldEnum e) {
  switch (e) {
    case Enum$ProductsScalarFieldEnum.product_id:
      return r'product_id';
    case Enum$ProductsScalarFieldEnum.reference:
      return r'reference';
    case Enum$ProductsScalarFieldEnum.name:
      return r'name';
    case Enum$ProductsScalarFieldEnum.buyingPrice:
      return r'buyingPrice';
    case Enum$ProductsScalarFieldEnum.sellingPrice:
      return r'sellingPrice';
    case Enum$ProductsScalarFieldEnum.description:
      return r'description';
    case Enum$ProductsScalarFieldEnum.picture:
      return r'picture';
    case Enum$ProductsScalarFieldEnum.family_id:
      return r'family_id';
    case Enum$ProductsScalarFieldEnum.$unknown:
      return r'$unknown';
  }
}

Enum$ProductsScalarFieldEnum fromJson$Enum$ProductsScalarFieldEnum(
    String value) {
  switch (value) {
    case r'product_id':
      return Enum$ProductsScalarFieldEnum.product_id;
    case r'reference':
      return Enum$ProductsScalarFieldEnum.reference;
    case r'name':
      return Enum$ProductsScalarFieldEnum.name;
    case r'buyingPrice':
      return Enum$ProductsScalarFieldEnum.buyingPrice;
    case r'sellingPrice':
      return Enum$ProductsScalarFieldEnum.sellingPrice;
    case r'description':
      return Enum$ProductsScalarFieldEnum.description;
    case r'picture':
      return Enum$ProductsScalarFieldEnum.picture;
    case r'family_id':
      return Enum$ProductsScalarFieldEnum.family_id;
    default:
      return Enum$ProductsScalarFieldEnum.$unknown;
  }
}

enum Enum$ProductModelScalarFieldEnum {
  product_id,
  color_id,
  size_id,
  quantity,
  $unknown
}

String toJson$Enum$ProductModelScalarFieldEnum(
    Enum$ProductModelScalarFieldEnum e) {
  switch (e) {
    case Enum$ProductModelScalarFieldEnum.product_id:
      return r'product_id';
    case Enum$ProductModelScalarFieldEnum.color_id:
      return r'color_id';
    case Enum$ProductModelScalarFieldEnum.size_id:
      return r'size_id';
    case Enum$ProductModelScalarFieldEnum.quantity:
      return r'quantity';
    case Enum$ProductModelScalarFieldEnum.$unknown:
      return r'$unknown';
  }
}

Enum$ProductModelScalarFieldEnum fromJson$Enum$ProductModelScalarFieldEnum(
    String value) {
  switch (value) {
    case r'product_id':
      return Enum$ProductModelScalarFieldEnum.product_id;
    case r'color_id':
      return Enum$ProductModelScalarFieldEnum.color_id;
    case r'size_id':
      return Enum$ProductModelScalarFieldEnum.size_id;
    case r'quantity':
      return Enum$ProductModelScalarFieldEnum.quantity;
    default:
      return Enum$ProductModelScalarFieldEnum.$unknown;
  }
}

enum Enum$TransactionProductScalarFieldEnum {
  transaction_id,
  product_id,
  quantity,
  price,
  product_name,
  $unknown
}

String toJson$Enum$TransactionProductScalarFieldEnum(
    Enum$TransactionProductScalarFieldEnum e) {
  switch (e) {
    case Enum$TransactionProductScalarFieldEnum.transaction_id:
      return r'transaction_id';
    case Enum$TransactionProductScalarFieldEnum.product_id:
      return r'product_id';
    case Enum$TransactionProductScalarFieldEnum.quantity:
      return r'quantity';
    case Enum$TransactionProductScalarFieldEnum.price:
      return r'price';
    case Enum$TransactionProductScalarFieldEnum.product_name:
      return r'product_name';
    case Enum$TransactionProductScalarFieldEnum.$unknown:
      return r'$unknown';
  }
}

Enum$TransactionProductScalarFieldEnum
    fromJson$Enum$TransactionProductScalarFieldEnum(String value) {
  switch (value) {
    case r'transaction_id':
      return Enum$TransactionProductScalarFieldEnum.transaction_id;
    case r'product_id':
      return Enum$TransactionProductScalarFieldEnum.product_id;
    case r'quantity':
      return Enum$TransactionProductScalarFieldEnum.quantity;
    case r'price':
      return Enum$TransactionProductScalarFieldEnum.price;
    case r'product_name':
      return Enum$TransactionProductScalarFieldEnum.product_name;
    default:
      return Enum$TransactionProductScalarFieldEnum.$unknown;
  }
}

enum Enum$ColorsScalarFieldEnum { id, color, $unknown }

String toJson$Enum$ColorsScalarFieldEnum(Enum$ColorsScalarFieldEnum e) {
  switch (e) {
    case Enum$ColorsScalarFieldEnum.id:
      return r'id';
    case Enum$ColorsScalarFieldEnum.color:
      return r'color';
    case Enum$ColorsScalarFieldEnum.$unknown:
      return r'$unknown';
  }
}

Enum$ColorsScalarFieldEnum fromJson$Enum$ColorsScalarFieldEnum(String value) {
  switch (value) {
    case r'id':
      return Enum$ColorsScalarFieldEnum.id;
    case r'color':
      return Enum$ColorsScalarFieldEnum.color;
    default:
      return Enum$ColorsScalarFieldEnum.$unknown;
  }
}
