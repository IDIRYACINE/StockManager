import 'schema1.graphql.dart';
import 'schema3.graphql.dart';
import 'schema4.graphql.dart';
import 'schema6.graphql.dart';

class Input$SellersWhereUniqueInput {
  factory Input$SellersWhereUniqueInput({int? seller_id}) =>
      Input$SellersWhereUniqueInput._({
        if (seller_id != null) r'seller_id': seller_id,
      });

  Input$SellersWhereUniqueInput._(this._$data);

  factory Input$SellersWhereUniqueInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('seller_id')) {
      final l$seller_id = data['seller_id'];
      result$data['seller_id'] = (l$seller_id as int?);
    }
    return Input$SellersWhereUniqueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get seller_id => (_$data['seller_id'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('seller_id')) {
      final l$seller_id = seller_id;
      result$data['seller_id'] = l$seller_id;
    }
    return result$data;
  }

  CopyWith$Input$SellersWhereUniqueInput<Input$SellersWhereUniqueInput>
      get copyWith => CopyWith$Input$SellersWhereUniqueInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SellersWhereUniqueInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (_$data.containsKey('seller_id') !=
        other._$data.containsKey('seller_id')) {
      return false;
    }
    if (l$seller_id != lOther$seller_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$seller_id = seller_id;
    return Object.hashAll(
        [_$data.containsKey('seller_id') ? l$seller_id : const {}]);
  }
}

abstract class CopyWith$Input$SellersWhereUniqueInput<TRes> {
  factory CopyWith$Input$SellersWhereUniqueInput(
    Input$SellersWhereUniqueInput instance,
    TRes Function(Input$SellersWhereUniqueInput) then,
  ) = _CopyWithImpl$Input$SellersWhereUniqueInput;

  factory CopyWith$Input$SellersWhereUniqueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SellersWhereUniqueInput;

  TRes call({int? seller_id});
}

class _CopyWithImpl$Input$SellersWhereUniqueInput<TRes>
    implements CopyWith$Input$SellersWhereUniqueInput<TRes> {
  _CopyWithImpl$Input$SellersWhereUniqueInput(
    this._instance,
    this._then,
  );

  final Input$SellersWhereUniqueInput _instance;

  final TRes Function(Input$SellersWhereUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? seller_id = _undefined}) =>
      _then(Input$SellersWhereUniqueInput._({
        ..._instance._$data,
        if (seller_id != _undefined) 'seller_id': (seller_id as int?),
      }));
}

class _CopyWithStubImpl$Input$SellersWhereUniqueInput<TRes>
    implements CopyWith$Input$SellersWhereUniqueInput<TRes> {
  _CopyWithStubImpl$Input$SellersWhereUniqueInput(this._res);

  TRes _res;

  call({int? seller_id}) => _res;
}

class Input$SellersOrderByWithAggregationInput {
  factory Input$SellersOrderByWithAggregationInput({
    Enum$SortOrder? seller_id,
    Enum$SortOrder? seller_name,
    Enum$SortOrder? seller_phone,
    Enum$SortOrder? picture,
    Input$SellersCountOrderByAggregateInput? $_count,
    Input$SellersAvgOrderByAggregateInput? $_avg,
    Input$SellersMaxOrderByAggregateInput? $_max,
    Input$SellersMinOrderByAggregateInput? $_min,
    Input$SellersSumOrderByAggregateInput? $_sum,
  }) =>
      Input$SellersOrderByWithAggregationInput._({
        if (seller_id != null) r'seller_id': seller_id,
        if (seller_name != null) r'seller_name': seller_name,
        if (seller_phone != null) r'seller_phone': seller_phone,
        if (picture != null) r'picture': picture,
        if ($_count != null) r'_count': $_count,
        if ($_avg != null) r'_avg': $_avg,
        if ($_max != null) r'_max': $_max,
        if ($_min != null) r'_min': $_min,
        if ($_sum != null) r'_sum': $_sum,
      });

  Input$SellersOrderByWithAggregationInput._(this._$data);

  factory Input$SellersOrderByWithAggregationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('seller_id')) {
      final l$seller_id = data['seller_id'];
      result$data['seller_id'] = l$seller_id == null
          ? null
          : fromJson$Enum$SortOrder((l$seller_id as String));
    }
    if (data.containsKey('seller_name')) {
      final l$seller_name = data['seller_name'];
      result$data['seller_name'] = l$seller_name == null
          ? null
          : fromJson$Enum$SortOrder((l$seller_name as String));
    }
    if (data.containsKey('seller_phone')) {
      final l$seller_phone = data['seller_phone'];
      result$data['seller_phone'] = l$seller_phone == null
          ? null
          : fromJson$Enum$SortOrder((l$seller_phone as String));
    }
    if (data.containsKey('picture')) {
      final l$picture = data['picture'];
      result$data['picture'] = l$picture == null
          ? null
          : fromJson$Enum$SortOrder((l$picture as String));
    }
    if (data.containsKey('_count')) {
      final l$$_count = data['_count'];
      result$data['_count'] = l$$_count == null
          ? null
          : Input$SellersCountOrderByAggregateInput.fromJson(
              (l$$_count as Map<String, dynamic>));
    }
    if (data.containsKey('_avg')) {
      final l$$_avg = data['_avg'];
      result$data['_avg'] = l$$_avg == null
          ? null
          : Input$SellersAvgOrderByAggregateInput.fromJson(
              (l$$_avg as Map<String, dynamic>));
    }
    if (data.containsKey('_max')) {
      final l$$_max = data['_max'];
      result$data['_max'] = l$$_max == null
          ? null
          : Input$SellersMaxOrderByAggregateInput.fromJson(
              (l$$_max as Map<String, dynamic>));
    }
    if (data.containsKey('_min')) {
      final l$$_min = data['_min'];
      result$data['_min'] = l$$_min == null
          ? null
          : Input$SellersMinOrderByAggregateInput.fromJson(
              (l$$_min as Map<String, dynamic>));
    }
    if (data.containsKey('_sum')) {
      final l$$_sum = data['_sum'];
      result$data['_sum'] = l$$_sum == null
          ? null
          : Input$SellersSumOrderByAggregateInput.fromJson(
              (l$$_sum as Map<String, dynamic>));
    }
    return Input$SellersOrderByWithAggregationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get seller_id => (_$data['seller_id'] as Enum$SortOrder?);
  Enum$SortOrder? get seller_name => (_$data['seller_name'] as Enum$SortOrder?);
  Enum$SortOrder? get seller_phone =>
      (_$data['seller_phone'] as Enum$SortOrder?);
  Enum$SortOrder? get picture => (_$data['picture'] as Enum$SortOrder?);
  Input$SellersCountOrderByAggregateInput? get $_count =>
      (_$data['_count'] as Input$SellersCountOrderByAggregateInput?);
  Input$SellersAvgOrderByAggregateInput? get $_avg =>
      (_$data['_avg'] as Input$SellersAvgOrderByAggregateInput?);
  Input$SellersMaxOrderByAggregateInput? get $_max =>
      (_$data['_max'] as Input$SellersMaxOrderByAggregateInput?);
  Input$SellersMinOrderByAggregateInput? get $_min =>
      (_$data['_min'] as Input$SellersMinOrderByAggregateInput?);
  Input$SellersSumOrderByAggregateInput? get $_sum =>
      (_$data['_sum'] as Input$SellersSumOrderByAggregateInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('seller_id')) {
      final l$seller_id = seller_id;
      result$data['seller_id'] =
          l$seller_id == null ? null : toJson$Enum$SortOrder(l$seller_id);
    }
    if (_$data.containsKey('seller_name')) {
      final l$seller_name = seller_name;
      result$data['seller_name'] =
          l$seller_name == null ? null : toJson$Enum$SortOrder(l$seller_name);
    }
    if (_$data.containsKey('seller_phone')) {
      final l$seller_phone = seller_phone;
      result$data['seller_phone'] =
          l$seller_phone == null ? null : toJson$Enum$SortOrder(l$seller_phone);
    }
    if (_$data.containsKey('picture')) {
      final l$picture = picture;
      result$data['picture'] =
          l$picture == null ? null : toJson$Enum$SortOrder(l$picture);
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

  CopyWith$Input$SellersOrderByWithAggregationInput<
          Input$SellersOrderByWithAggregationInput>
      get copyWith => CopyWith$Input$SellersOrderByWithAggregationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SellersOrderByWithAggregationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (_$data.containsKey('seller_id') !=
        other._$data.containsKey('seller_id')) {
      return false;
    }
    if (l$seller_id != lOther$seller_id) {
      return false;
    }
    final l$seller_name = seller_name;
    final lOther$seller_name = other.seller_name;
    if (_$data.containsKey('seller_name') !=
        other._$data.containsKey('seller_name')) {
      return false;
    }
    if (l$seller_name != lOther$seller_name) {
      return false;
    }
    final l$seller_phone = seller_phone;
    final lOther$seller_phone = other.seller_phone;
    if (_$data.containsKey('seller_phone') !=
        other._$data.containsKey('seller_phone')) {
      return false;
    }
    if (l$seller_phone != lOther$seller_phone) {
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
    final l$seller_id = seller_id;
    final l$seller_name = seller_name;
    final l$seller_phone = seller_phone;
    final l$picture = picture;
    final l$$_count = $_count;
    final l$$_avg = $_avg;
    final l$$_max = $_max;
    final l$$_min = $_min;
    final l$$_sum = $_sum;
    return Object.hashAll([
      _$data.containsKey('seller_id') ? l$seller_id : const {},
      _$data.containsKey('seller_name') ? l$seller_name : const {},
      _$data.containsKey('seller_phone') ? l$seller_phone : const {},
      _$data.containsKey('picture') ? l$picture : const {},
      _$data.containsKey('_count') ? l$$_count : const {},
      _$data.containsKey('_avg') ? l$$_avg : const {},
      _$data.containsKey('_max') ? l$$_max : const {},
      _$data.containsKey('_min') ? l$$_min : const {},
      _$data.containsKey('_sum') ? l$$_sum : const {},
    ]);
  }
}

abstract class CopyWith$Input$SellersOrderByWithAggregationInput<TRes> {
  factory CopyWith$Input$SellersOrderByWithAggregationInput(
    Input$SellersOrderByWithAggregationInput instance,
    TRes Function(Input$SellersOrderByWithAggregationInput) then,
  ) = _CopyWithImpl$Input$SellersOrderByWithAggregationInput;

  factory CopyWith$Input$SellersOrderByWithAggregationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SellersOrderByWithAggregationInput;

  TRes call({
    Enum$SortOrder? seller_id,
    Enum$SortOrder? seller_name,
    Enum$SortOrder? seller_phone,
    Enum$SortOrder? picture,
    Input$SellersCountOrderByAggregateInput? $_count,
    Input$SellersAvgOrderByAggregateInput? $_avg,
    Input$SellersMaxOrderByAggregateInput? $_max,
    Input$SellersMinOrderByAggregateInput? $_min,
    Input$SellersSumOrderByAggregateInput? $_sum,
  });
  CopyWith$Input$SellersCountOrderByAggregateInput<TRes> get $_count;
  CopyWith$Input$SellersAvgOrderByAggregateInput<TRes> get $_avg;
  CopyWith$Input$SellersMaxOrderByAggregateInput<TRes> get $_max;
  CopyWith$Input$SellersMinOrderByAggregateInput<TRes> get $_min;
  CopyWith$Input$SellersSumOrderByAggregateInput<TRes> get $_sum;
}

class _CopyWithImpl$Input$SellersOrderByWithAggregationInput<TRes>
    implements CopyWith$Input$SellersOrderByWithAggregationInput<TRes> {
  _CopyWithImpl$Input$SellersOrderByWithAggregationInput(
    this._instance,
    this._then,
  );

  final Input$SellersOrderByWithAggregationInput _instance;

  final TRes Function(Input$SellersOrderByWithAggregationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? seller_id = _undefined,
    Object? seller_name = _undefined,
    Object? seller_phone = _undefined,
    Object? picture = _undefined,
    Object? $_count = _undefined,
    Object? $_avg = _undefined,
    Object? $_max = _undefined,
    Object? $_min = _undefined,
    Object? $_sum = _undefined,
  }) =>
      _then(Input$SellersOrderByWithAggregationInput._({
        ..._instance._$data,
        if (seller_id != _undefined)
          'seller_id': (seller_id as Enum$SortOrder?),
        if (seller_name != _undefined)
          'seller_name': (seller_name as Enum$SortOrder?),
        if (seller_phone != _undefined)
          'seller_phone': (seller_phone as Enum$SortOrder?),
        if (picture != _undefined) 'picture': (picture as Enum$SortOrder?),
        if ($_count != _undefined)
          '_count': ($_count as Input$SellersCountOrderByAggregateInput?),
        if ($_avg != _undefined)
          '_avg': ($_avg as Input$SellersAvgOrderByAggregateInput?),
        if ($_max != _undefined)
          '_max': ($_max as Input$SellersMaxOrderByAggregateInput?),
        if ($_min != _undefined)
          '_min': ($_min as Input$SellersMinOrderByAggregateInput?),
        if ($_sum != _undefined)
          '_sum': ($_sum as Input$SellersSumOrderByAggregateInput?),
      }));
  CopyWith$Input$SellersCountOrderByAggregateInput<TRes> get $_count {
    final local$$_count = _instance.$_count;
    return local$$_count == null
        ? CopyWith$Input$SellersCountOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$SellersCountOrderByAggregateInput(
            local$$_count, (e) => call($_count: e));
  }

  CopyWith$Input$SellersAvgOrderByAggregateInput<TRes> get $_avg {
    final local$$_avg = _instance.$_avg;
    return local$$_avg == null
        ? CopyWith$Input$SellersAvgOrderByAggregateInput.stub(_then(_instance))
        : CopyWith$Input$SellersAvgOrderByAggregateInput(
            local$$_avg, (e) => call($_avg: e));
  }

  CopyWith$Input$SellersMaxOrderByAggregateInput<TRes> get $_max {
    final local$$_max = _instance.$_max;
    return local$$_max == null
        ? CopyWith$Input$SellersMaxOrderByAggregateInput.stub(_then(_instance))
        : CopyWith$Input$SellersMaxOrderByAggregateInput(
            local$$_max, (e) => call($_max: e));
  }

  CopyWith$Input$SellersMinOrderByAggregateInput<TRes> get $_min {
    final local$$_min = _instance.$_min;
    return local$$_min == null
        ? CopyWith$Input$SellersMinOrderByAggregateInput.stub(_then(_instance))
        : CopyWith$Input$SellersMinOrderByAggregateInput(
            local$$_min, (e) => call($_min: e));
  }

  CopyWith$Input$SellersSumOrderByAggregateInput<TRes> get $_sum {
    final local$$_sum = _instance.$_sum;
    return local$$_sum == null
        ? CopyWith$Input$SellersSumOrderByAggregateInput.stub(_then(_instance))
        : CopyWith$Input$SellersSumOrderByAggregateInput(
            local$$_sum, (e) => call($_sum: e));
  }
}

class _CopyWithStubImpl$Input$SellersOrderByWithAggregationInput<TRes>
    implements CopyWith$Input$SellersOrderByWithAggregationInput<TRes> {
  _CopyWithStubImpl$Input$SellersOrderByWithAggregationInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? seller_id,
    Enum$SortOrder? seller_name,
    Enum$SortOrder? seller_phone,
    Enum$SortOrder? picture,
    Input$SellersCountOrderByAggregateInput? $_count,
    Input$SellersAvgOrderByAggregateInput? $_avg,
    Input$SellersMaxOrderByAggregateInput? $_max,
    Input$SellersMinOrderByAggregateInput? $_min,
    Input$SellersSumOrderByAggregateInput? $_sum,
  }) =>
      _res;
  CopyWith$Input$SellersCountOrderByAggregateInput<TRes> get $_count =>
      CopyWith$Input$SellersCountOrderByAggregateInput.stub(_res);
  CopyWith$Input$SellersAvgOrderByAggregateInput<TRes> get $_avg =>
      CopyWith$Input$SellersAvgOrderByAggregateInput.stub(_res);
  CopyWith$Input$SellersMaxOrderByAggregateInput<TRes> get $_max =>
      CopyWith$Input$SellersMaxOrderByAggregateInput.stub(_res);
  CopyWith$Input$SellersMinOrderByAggregateInput<TRes> get $_min =>
      CopyWith$Input$SellersMinOrderByAggregateInput.stub(_res);
  CopyWith$Input$SellersSumOrderByAggregateInput<TRes> get $_sum =>
      CopyWith$Input$SellersSumOrderByAggregateInput.stub(_res);
}

class Input$SellersCountOrderByAggregateInput {
  factory Input$SellersCountOrderByAggregateInput({
    Enum$SortOrder? seller_id,
    Enum$SortOrder? seller_name,
    Enum$SortOrder? seller_phone,
    Enum$SortOrder? picture,
  }) =>
      Input$SellersCountOrderByAggregateInput._({
        if (seller_id != null) r'seller_id': seller_id,
        if (seller_name != null) r'seller_name': seller_name,
        if (seller_phone != null) r'seller_phone': seller_phone,
        if (picture != null) r'picture': picture,
      });

  Input$SellersCountOrderByAggregateInput._(this._$data);

  factory Input$SellersCountOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('seller_id')) {
      final l$seller_id = data['seller_id'];
      result$data['seller_id'] = l$seller_id == null
          ? null
          : fromJson$Enum$SortOrder((l$seller_id as String));
    }
    if (data.containsKey('seller_name')) {
      final l$seller_name = data['seller_name'];
      result$data['seller_name'] = l$seller_name == null
          ? null
          : fromJson$Enum$SortOrder((l$seller_name as String));
    }
    if (data.containsKey('seller_phone')) {
      final l$seller_phone = data['seller_phone'];
      result$data['seller_phone'] = l$seller_phone == null
          ? null
          : fromJson$Enum$SortOrder((l$seller_phone as String));
    }
    if (data.containsKey('picture')) {
      final l$picture = data['picture'];
      result$data['picture'] = l$picture == null
          ? null
          : fromJson$Enum$SortOrder((l$picture as String));
    }
    return Input$SellersCountOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get seller_id => (_$data['seller_id'] as Enum$SortOrder?);
  Enum$SortOrder? get seller_name => (_$data['seller_name'] as Enum$SortOrder?);
  Enum$SortOrder? get seller_phone =>
      (_$data['seller_phone'] as Enum$SortOrder?);
  Enum$SortOrder? get picture => (_$data['picture'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('seller_id')) {
      final l$seller_id = seller_id;
      result$data['seller_id'] =
          l$seller_id == null ? null : toJson$Enum$SortOrder(l$seller_id);
    }
    if (_$data.containsKey('seller_name')) {
      final l$seller_name = seller_name;
      result$data['seller_name'] =
          l$seller_name == null ? null : toJson$Enum$SortOrder(l$seller_name);
    }
    if (_$data.containsKey('seller_phone')) {
      final l$seller_phone = seller_phone;
      result$data['seller_phone'] =
          l$seller_phone == null ? null : toJson$Enum$SortOrder(l$seller_phone);
    }
    if (_$data.containsKey('picture')) {
      final l$picture = picture;
      result$data['picture'] =
          l$picture == null ? null : toJson$Enum$SortOrder(l$picture);
    }
    return result$data;
  }

  CopyWith$Input$SellersCountOrderByAggregateInput<
          Input$SellersCountOrderByAggregateInput>
      get copyWith => CopyWith$Input$SellersCountOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SellersCountOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (_$data.containsKey('seller_id') !=
        other._$data.containsKey('seller_id')) {
      return false;
    }
    if (l$seller_id != lOther$seller_id) {
      return false;
    }
    final l$seller_name = seller_name;
    final lOther$seller_name = other.seller_name;
    if (_$data.containsKey('seller_name') !=
        other._$data.containsKey('seller_name')) {
      return false;
    }
    if (l$seller_name != lOther$seller_name) {
      return false;
    }
    final l$seller_phone = seller_phone;
    final lOther$seller_phone = other.seller_phone;
    if (_$data.containsKey('seller_phone') !=
        other._$data.containsKey('seller_phone')) {
      return false;
    }
    if (l$seller_phone != lOther$seller_phone) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$seller_id = seller_id;
    final l$seller_name = seller_name;
    final l$seller_phone = seller_phone;
    final l$picture = picture;
    return Object.hashAll([
      _$data.containsKey('seller_id') ? l$seller_id : const {},
      _$data.containsKey('seller_name') ? l$seller_name : const {},
      _$data.containsKey('seller_phone') ? l$seller_phone : const {},
      _$data.containsKey('picture') ? l$picture : const {},
    ]);
  }
}

abstract class CopyWith$Input$SellersCountOrderByAggregateInput<TRes> {
  factory CopyWith$Input$SellersCountOrderByAggregateInput(
    Input$SellersCountOrderByAggregateInput instance,
    TRes Function(Input$SellersCountOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$SellersCountOrderByAggregateInput;

  factory CopyWith$Input$SellersCountOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SellersCountOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? seller_id,
    Enum$SortOrder? seller_name,
    Enum$SortOrder? seller_phone,
    Enum$SortOrder? picture,
  });
}

class _CopyWithImpl$Input$SellersCountOrderByAggregateInput<TRes>
    implements CopyWith$Input$SellersCountOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$SellersCountOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$SellersCountOrderByAggregateInput _instance;

  final TRes Function(Input$SellersCountOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? seller_id = _undefined,
    Object? seller_name = _undefined,
    Object? seller_phone = _undefined,
    Object? picture = _undefined,
  }) =>
      _then(Input$SellersCountOrderByAggregateInput._({
        ..._instance._$data,
        if (seller_id != _undefined)
          'seller_id': (seller_id as Enum$SortOrder?),
        if (seller_name != _undefined)
          'seller_name': (seller_name as Enum$SortOrder?),
        if (seller_phone != _undefined)
          'seller_phone': (seller_phone as Enum$SortOrder?),
        if (picture != _undefined) 'picture': (picture as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$SellersCountOrderByAggregateInput<TRes>
    implements CopyWith$Input$SellersCountOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$SellersCountOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? seller_id,
    Enum$SortOrder? seller_name,
    Enum$SortOrder? seller_phone,
    Enum$SortOrder? picture,
  }) =>
      _res;
}

class Input$SellersAvgOrderByAggregateInput {
  factory Input$SellersAvgOrderByAggregateInput({Enum$SortOrder? seller_id}) =>
      Input$SellersAvgOrderByAggregateInput._({
        if (seller_id != null) r'seller_id': seller_id,
      });

  Input$SellersAvgOrderByAggregateInput._(this._$data);

  factory Input$SellersAvgOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('seller_id')) {
      final l$seller_id = data['seller_id'];
      result$data['seller_id'] = l$seller_id == null
          ? null
          : fromJson$Enum$SortOrder((l$seller_id as String));
    }
    return Input$SellersAvgOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get seller_id => (_$data['seller_id'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('seller_id')) {
      final l$seller_id = seller_id;
      result$data['seller_id'] =
          l$seller_id == null ? null : toJson$Enum$SortOrder(l$seller_id);
    }
    return result$data;
  }

  CopyWith$Input$SellersAvgOrderByAggregateInput<
          Input$SellersAvgOrderByAggregateInput>
      get copyWith => CopyWith$Input$SellersAvgOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SellersAvgOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (_$data.containsKey('seller_id') !=
        other._$data.containsKey('seller_id')) {
      return false;
    }
    if (l$seller_id != lOther$seller_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$seller_id = seller_id;
    return Object.hashAll(
        [_$data.containsKey('seller_id') ? l$seller_id : const {}]);
  }
}

abstract class CopyWith$Input$SellersAvgOrderByAggregateInput<TRes> {
  factory CopyWith$Input$SellersAvgOrderByAggregateInput(
    Input$SellersAvgOrderByAggregateInput instance,
    TRes Function(Input$SellersAvgOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$SellersAvgOrderByAggregateInput;

  factory CopyWith$Input$SellersAvgOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SellersAvgOrderByAggregateInput;

  TRes call({Enum$SortOrder? seller_id});
}

class _CopyWithImpl$Input$SellersAvgOrderByAggregateInput<TRes>
    implements CopyWith$Input$SellersAvgOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$SellersAvgOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$SellersAvgOrderByAggregateInput _instance;

  final TRes Function(Input$SellersAvgOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? seller_id = _undefined}) =>
      _then(Input$SellersAvgOrderByAggregateInput._({
        ..._instance._$data,
        if (seller_id != _undefined)
          'seller_id': (seller_id as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$SellersAvgOrderByAggregateInput<TRes>
    implements CopyWith$Input$SellersAvgOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$SellersAvgOrderByAggregateInput(this._res);

  TRes _res;

  call({Enum$SortOrder? seller_id}) => _res;
}

class Input$SellersMaxOrderByAggregateInput {
  factory Input$SellersMaxOrderByAggregateInput({
    Enum$SortOrder? seller_id,
    Enum$SortOrder? seller_name,
    Enum$SortOrder? seller_phone,
    Enum$SortOrder? picture,
  }) =>
      Input$SellersMaxOrderByAggregateInput._({
        if (seller_id != null) r'seller_id': seller_id,
        if (seller_name != null) r'seller_name': seller_name,
        if (seller_phone != null) r'seller_phone': seller_phone,
        if (picture != null) r'picture': picture,
      });

  Input$SellersMaxOrderByAggregateInput._(this._$data);

  factory Input$SellersMaxOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('seller_id')) {
      final l$seller_id = data['seller_id'];
      result$data['seller_id'] = l$seller_id == null
          ? null
          : fromJson$Enum$SortOrder((l$seller_id as String));
    }
    if (data.containsKey('seller_name')) {
      final l$seller_name = data['seller_name'];
      result$data['seller_name'] = l$seller_name == null
          ? null
          : fromJson$Enum$SortOrder((l$seller_name as String));
    }
    if (data.containsKey('seller_phone')) {
      final l$seller_phone = data['seller_phone'];
      result$data['seller_phone'] = l$seller_phone == null
          ? null
          : fromJson$Enum$SortOrder((l$seller_phone as String));
    }
    if (data.containsKey('picture')) {
      final l$picture = data['picture'];
      result$data['picture'] = l$picture == null
          ? null
          : fromJson$Enum$SortOrder((l$picture as String));
    }
    return Input$SellersMaxOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get seller_id => (_$data['seller_id'] as Enum$SortOrder?);
  Enum$SortOrder? get seller_name => (_$data['seller_name'] as Enum$SortOrder?);
  Enum$SortOrder? get seller_phone =>
      (_$data['seller_phone'] as Enum$SortOrder?);
  Enum$SortOrder? get picture => (_$data['picture'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('seller_id')) {
      final l$seller_id = seller_id;
      result$data['seller_id'] =
          l$seller_id == null ? null : toJson$Enum$SortOrder(l$seller_id);
    }
    if (_$data.containsKey('seller_name')) {
      final l$seller_name = seller_name;
      result$data['seller_name'] =
          l$seller_name == null ? null : toJson$Enum$SortOrder(l$seller_name);
    }
    if (_$data.containsKey('seller_phone')) {
      final l$seller_phone = seller_phone;
      result$data['seller_phone'] =
          l$seller_phone == null ? null : toJson$Enum$SortOrder(l$seller_phone);
    }
    if (_$data.containsKey('picture')) {
      final l$picture = picture;
      result$data['picture'] =
          l$picture == null ? null : toJson$Enum$SortOrder(l$picture);
    }
    return result$data;
  }

  CopyWith$Input$SellersMaxOrderByAggregateInput<
          Input$SellersMaxOrderByAggregateInput>
      get copyWith => CopyWith$Input$SellersMaxOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SellersMaxOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (_$data.containsKey('seller_id') !=
        other._$data.containsKey('seller_id')) {
      return false;
    }
    if (l$seller_id != lOther$seller_id) {
      return false;
    }
    final l$seller_name = seller_name;
    final lOther$seller_name = other.seller_name;
    if (_$data.containsKey('seller_name') !=
        other._$data.containsKey('seller_name')) {
      return false;
    }
    if (l$seller_name != lOther$seller_name) {
      return false;
    }
    final l$seller_phone = seller_phone;
    final lOther$seller_phone = other.seller_phone;
    if (_$data.containsKey('seller_phone') !=
        other._$data.containsKey('seller_phone')) {
      return false;
    }
    if (l$seller_phone != lOther$seller_phone) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$seller_id = seller_id;
    final l$seller_name = seller_name;
    final l$seller_phone = seller_phone;
    final l$picture = picture;
    return Object.hashAll([
      _$data.containsKey('seller_id') ? l$seller_id : const {},
      _$data.containsKey('seller_name') ? l$seller_name : const {},
      _$data.containsKey('seller_phone') ? l$seller_phone : const {},
      _$data.containsKey('picture') ? l$picture : const {},
    ]);
  }
}

abstract class CopyWith$Input$SellersMaxOrderByAggregateInput<TRes> {
  factory CopyWith$Input$SellersMaxOrderByAggregateInput(
    Input$SellersMaxOrderByAggregateInput instance,
    TRes Function(Input$SellersMaxOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$SellersMaxOrderByAggregateInput;

  factory CopyWith$Input$SellersMaxOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SellersMaxOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? seller_id,
    Enum$SortOrder? seller_name,
    Enum$SortOrder? seller_phone,
    Enum$SortOrder? picture,
  });
}

class _CopyWithImpl$Input$SellersMaxOrderByAggregateInput<TRes>
    implements CopyWith$Input$SellersMaxOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$SellersMaxOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$SellersMaxOrderByAggregateInput _instance;

  final TRes Function(Input$SellersMaxOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? seller_id = _undefined,
    Object? seller_name = _undefined,
    Object? seller_phone = _undefined,
    Object? picture = _undefined,
  }) =>
      _then(Input$SellersMaxOrderByAggregateInput._({
        ..._instance._$data,
        if (seller_id != _undefined)
          'seller_id': (seller_id as Enum$SortOrder?),
        if (seller_name != _undefined)
          'seller_name': (seller_name as Enum$SortOrder?),
        if (seller_phone != _undefined)
          'seller_phone': (seller_phone as Enum$SortOrder?),
        if (picture != _undefined) 'picture': (picture as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$SellersMaxOrderByAggregateInput<TRes>
    implements CopyWith$Input$SellersMaxOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$SellersMaxOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? seller_id,
    Enum$SortOrder? seller_name,
    Enum$SortOrder? seller_phone,
    Enum$SortOrder? picture,
  }) =>
      _res;
}

class Input$SellersMinOrderByAggregateInput {
  factory Input$SellersMinOrderByAggregateInput({
    Enum$SortOrder? seller_id,
    Enum$SortOrder? seller_name,
    Enum$SortOrder? seller_phone,
    Enum$SortOrder? picture,
  }) =>
      Input$SellersMinOrderByAggregateInput._({
        if (seller_id != null) r'seller_id': seller_id,
        if (seller_name != null) r'seller_name': seller_name,
        if (seller_phone != null) r'seller_phone': seller_phone,
        if (picture != null) r'picture': picture,
      });

  Input$SellersMinOrderByAggregateInput._(this._$data);

  factory Input$SellersMinOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('seller_id')) {
      final l$seller_id = data['seller_id'];
      result$data['seller_id'] = l$seller_id == null
          ? null
          : fromJson$Enum$SortOrder((l$seller_id as String));
    }
    if (data.containsKey('seller_name')) {
      final l$seller_name = data['seller_name'];
      result$data['seller_name'] = l$seller_name == null
          ? null
          : fromJson$Enum$SortOrder((l$seller_name as String));
    }
    if (data.containsKey('seller_phone')) {
      final l$seller_phone = data['seller_phone'];
      result$data['seller_phone'] = l$seller_phone == null
          ? null
          : fromJson$Enum$SortOrder((l$seller_phone as String));
    }
    if (data.containsKey('picture')) {
      final l$picture = data['picture'];
      result$data['picture'] = l$picture == null
          ? null
          : fromJson$Enum$SortOrder((l$picture as String));
    }
    return Input$SellersMinOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get seller_id => (_$data['seller_id'] as Enum$SortOrder?);
  Enum$SortOrder? get seller_name => (_$data['seller_name'] as Enum$SortOrder?);
  Enum$SortOrder? get seller_phone =>
      (_$data['seller_phone'] as Enum$SortOrder?);
  Enum$SortOrder? get picture => (_$data['picture'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('seller_id')) {
      final l$seller_id = seller_id;
      result$data['seller_id'] =
          l$seller_id == null ? null : toJson$Enum$SortOrder(l$seller_id);
    }
    if (_$data.containsKey('seller_name')) {
      final l$seller_name = seller_name;
      result$data['seller_name'] =
          l$seller_name == null ? null : toJson$Enum$SortOrder(l$seller_name);
    }
    if (_$data.containsKey('seller_phone')) {
      final l$seller_phone = seller_phone;
      result$data['seller_phone'] =
          l$seller_phone == null ? null : toJson$Enum$SortOrder(l$seller_phone);
    }
    if (_$data.containsKey('picture')) {
      final l$picture = picture;
      result$data['picture'] =
          l$picture == null ? null : toJson$Enum$SortOrder(l$picture);
    }
    return result$data;
  }

  CopyWith$Input$SellersMinOrderByAggregateInput<
          Input$SellersMinOrderByAggregateInput>
      get copyWith => CopyWith$Input$SellersMinOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SellersMinOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (_$data.containsKey('seller_id') !=
        other._$data.containsKey('seller_id')) {
      return false;
    }
    if (l$seller_id != lOther$seller_id) {
      return false;
    }
    final l$seller_name = seller_name;
    final lOther$seller_name = other.seller_name;
    if (_$data.containsKey('seller_name') !=
        other._$data.containsKey('seller_name')) {
      return false;
    }
    if (l$seller_name != lOther$seller_name) {
      return false;
    }
    final l$seller_phone = seller_phone;
    final lOther$seller_phone = other.seller_phone;
    if (_$data.containsKey('seller_phone') !=
        other._$data.containsKey('seller_phone')) {
      return false;
    }
    if (l$seller_phone != lOther$seller_phone) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$seller_id = seller_id;
    final l$seller_name = seller_name;
    final l$seller_phone = seller_phone;
    final l$picture = picture;
    return Object.hashAll([
      _$data.containsKey('seller_id') ? l$seller_id : const {},
      _$data.containsKey('seller_name') ? l$seller_name : const {},
      _$data.containsKey('seller_phone') ? l$seller_phone : const {},
      _$data.containsKey('picture') ? l$picture : const {},
    ]);
  }
}

abstract class CopyWith$Input$SellersMinOrderByAggregateInput<TRes> {
  factory CopyWith$Input$SellersMinOrderByAggregateInput(
    Input$SellersMinOrderByAggregateInput instance,
    TRes Function(Input$SellersMinOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$SellersMinOrderByAggregateInput;

  factory CopyWith$Input$SellersMinOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SellersMinOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? seller_id,
    Enum$SortOrder? seller_name,
    Enum$SortOrder? seller_phone,
    Enum$SortOrder? picture,
  });
}

class _CopyWithImpl$Input$SellersMinOrderByAggregateInput<TRes>
    implements CopyWith$Input$SellersMinOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$SellersMinOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$SellersMinOrderByAggregateInput _instance;

  final TRes Function(Input$SellersMinOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? seller_id = _undefined,
    Object? seller_name = _undefined,
    Object? seller_phone = _undefined,
    Object? picture = _undefined,
  }) =>
      _then(Input$SellersMinOrderByAggregateInput._({
        ..._instance._$data,
        if (seller_id != _undefined)
          'seller_id': (seller_id as Enum$SortOrder?),
        if (seller_name != _undefined)
          'seller_name': (seller_name as Enum$SortOrder?),
        if (seller_phone != _undefined)
          'seller_phone': (seller_phone as Enum$SortOrder?),
        if (picture != _undefined) 'picture': (picture as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$SellersMinOrderByAggregateInput<TRes>
    implements CopyWith$Input$SellersMinOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$SellersMinOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? seller_id,
    Enum$SortOrder? seller_name,
    Enum$SortOrder? seller_phone,
    Enum$SortOrder? picture,
  }) =>
      _res;
}

class Input$SellersSumOrderByAggregateInput {
  factory Input$SellersSumOrderByAggregateInput({Enum$SortOrder? seller_id}) =>
      Input$SellersSumOrderByAggregateInput._({
        if (seller_id != null) r'seller_id': seller_id,
      });

  Input$SellersSumOrderByAggregateInput._(this._$data);

  factory Input$SellersSumOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('seller_id')) {
      final l$seller_id = data['seller_id'];
      result$data['seller_id'] = l$seller_id == null
          ? null
          : fromJson$Enum$SortOrder((l$seller_id as String));
    }
    return Input$SellersSumOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get seller_id => (_$data['seller_id'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('seller_id')) {
      final l$seller_id = seller_id;
      result$data['seller_id'] =
          l$seller_id == null ? null : toJson$Enum$SortOrder(l$seller_id);
    }
    return result$data;
  }

  CopyWith$Input$SellersSumOrderByAggregateInput<
          Input$SellersSumOrderByAggregateInput>
      get copyWith => CopyWith$Input$SellersSumOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SellersSumOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (_$data.containsKey('seller_id') !=
        other._$data.containsKey('seller_id')) {
      return false;
    }
    if (l$seller_id != lOther$seller_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$seller_id = seller_id;
    return Object.hashAll(
        [_$data.containsKey('seller_id') ? l$seller_id : const {}]);
  }
}

abstract class CopyWith$Input$SellersSumOrderByAggregateInput<TRes> {
  factory CopyWith$Input$SellersSumOrderByAggregateInput(
    Input$SellersSumOrderByAggregateInput instance,
    TRes Function(Input$SellersSumOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$SellersSumOrderByAggregateInput;

  factory CopyWith$Input$SellersSumOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SellersSumOrderByAggregateInput;

  TRes call({Enum$SortOrder? seller_id});
}

class _CopyWithImpl$Input$SellersSumOrderByAggregateInput<TRes>
    implements CopyWith$Input$SellersSumOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$SellersSumOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$SellersSumOrderByAggregateInput _instance;

  final TRes Function(Input$SellersSumOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? seller_id = _undefined}) =>
      _then(Input$SellersSumOrderByAggregateInput._({
        ..._instance._$data,
        if (seller_id != _undefined)
          'seller_id': (seller_id as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$SellersSumOrderByAggregateInput<TRes>
    implements CopyWith$Input$SellersSumOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$SellersSumOrderByAggregateInput(this._res);

  TRes _res;

  call({Enum$SortOrder? seller_id}) => _res;
}

class Input$SellersScalarWhereWithAggregatesInput {
  factory Input$SellersScalarWhereWithAggregatesInput({
    List<Input$SellersScalarWhereWithAggregatesInput>? AND,
    List<Input$SellersScalarWhereWithAggregatesInput>? OR,
    List<Input$SellersScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? seller_id,
    Input$StringWithAggregatesFilter? seller_name,
    Input$StringWithAggregatesFilter? seller_phone,
    Input$StringWithAggregatesFilter? picture,
  }) =>
      Input$SellersScalarWhereWithAggregatesInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (seller_id != null) r'seller_id': seller_id,
        if (seller_name != null) r'seller_name': seller_name,
        if (seller_phone != null) r'seller_phone': seller_phone,
        if (picture != null) r'picture': picture,
      });

  Input$SellersScalarWhereWithAggregatesInput._(this._$data);

  factory Input$SellersScalarWhereWithAggregatesInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) => Input$SellersScalarWhereWithAggregatesInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) => Input$SellersScalarWhereWithAggregatesInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) => Input$SellersScalarWhereWithAggregatesInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('seller_id')) {
      final l$seller_id = data['seller_id'];
      result$data['seller_id'] = l$seller_id == null
          ? null
          : Input$IntWithAggregatesFilter.fromJson(
              (l$seller_id as Map<String, dynamic>));
    }
    if (data.containsKey('seller_name')) {
      final l$seller_name = data['seller_name'];
      result$data['seller_name'] = l$seller_name == null
          ? null
          : Input$StringWithAggregatesFilter.fromJson(
              (l$seller_name as Map<String, dynamic>));
    }
    if (data.containsKey('seller_phone')) {
      final l$seller_phone = data['seller_phone'];
      result$data['seller_phone'] = l$seller_phone == null
          ? null
          : Input$StringWithAggregatesFilter.fromJson(
              (l$seller_phone as Map<String, dynamic>));
    }
    if (data.containsKey('picture')) {
      final l$picture = data['picture'];
      result$data['picture'] = l$picture == null
          ? null
          : Input$StringWithAggregatesFilter.fromJson(
              (l$picture as Map<String, dynamic>));
    }
    return Input$SellersScalarWhereWithAggregatesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$SellersScalarWhereWithAggregatesInput>? get AND =>
      (_$data['AND'] as List<Input$SellersScalarWhereWithAggregatesInput>?);
  List<Input$SellersScalarWhereWithAggregatesInput>? get OR =>
      (_$data['OR'] as List<Input$SellersScalarWhereWithAggregatesInput>?);
  List<Input$SellersScalarWhereWithAggregatesInput>? get NOT =>
      (_$data['NOT'] as List<Input$SellersScalarWhereWithAggregatesInput>?);
  Input$IntWithAggregatesFilter? get seller_id =>
      (_$data['seller_id'] as Input$IntWithAggregatesFilter?);
  Input$StringWithAggregatesFilter? get seller_name =>
      (_$data['seller_name'] as Input$StringWithAggregatesFilter?);
  Input$StringWithAggregatesFilter? get seller_phone =>
      (_$data['seller_phone'] as Input$StringWithAggregatesFilter?);
  Input$StringWithAggregatesFilter? get picture =>
      (_$data['picture'] as Input$StringWithAggregatesFilter?);
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
    if (_$data.containsKey('seller_id')) {
      final l$seller_id = seller_id;
      result$data['seller_id'] = l$seller_id?.toJson();
    }
    if (_$data.containsKey('seller_name')) {
      final l$seller_name = seller_name;
      result$data['seller_name'] = l$seller_name?.toJson();
    }
    if (_$data.containsKey('seller_phone')) {
      final l$seller_phone = seller_phone;
      result$data['seller_phone'] = l$seller_phone?.toJson();
    }
    if (_$data.containsKey('picture')) {
      final l$picture = picture;
      result$data['picture'] = l$picture?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$SellersScalarWhereWithAggregatesInput<
          Input$SellersScalarWhereWithAggregatesInput>
      get copyWith => CopyWith$Input$SellersScalarWhereWithAggregatesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SellersScalarWhereWithAggregatesInput) ||
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
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (_$data.containsKey('seller_id') !=
        other._$data.containsKey('seller_id')) {
      return false;
    }
    if (l$seller_id != lOther$seller_id) {
      return false;
    }
    final l$seller_name = seller_name;
    final lOther$seller_name = other.seller_name;
    if (_$data.containsKey('seller_name') !=
        other._$data.containsKey('seller_name')) {
      return false;
    }
    if (l$seller_name != lOther$seller_name) {
      return false;
    }
    final l$seller_phone = seller_phone;
    final lOther$seller_phone = other.seller_phone;
    if (_$data.containsKey('seller_phone') !=
        other._$data.containsKey('seller_phone')) {
      return false;
    }
    if (l$seller_phone != lOther$seller_phone) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$AND = AND;
    final l$OR = OR;
    final l$NOT = NOT;
    final l$seller_id = seller_id;
    final l$seller_name = seller_name;
    final l$seller_phone = seller_phone;
    final l$picture = picture;
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
      _$data.containsKey('seller_id') ? l$seller_id : const {},
      _$data.containsKey('seller_name') ? l$seller_name : const {},
      _$data.containsKey('seller_phone') ? l$seller_phone : const {},
      _$data.containsKey('picture') ? l$picture : const {},
    ]);
  }
}

abstract class CopyWith$Input$SellersScalarWhereWithAggregatesInput<TRes> {
  factory CopyWith$Input$SellersScalarWhereWithAggregatesInput(
    Input$SellersScalarWhereWithAggregatesInput instance,
    TRes Function(Input$SellersScalarWhereWithAggregatesInput) then,
  ) = _CopyWithImpl$Input$SellersScalarWhereWithAggregatesInput;

  factory CopyWith$Input$SellersScalarWhereWithAggregatesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SellersScalarWhereWithAggregatesInput;

  TRes call({
    List<Input$SellersScalarWhereWithAggregatesInput>? AND,
    List<Input$SellersScalarWhereWithAggregatesInput>? OR,
    List<Input$SellersScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? seller_id,
    Input$StringWithAggregatesFilter? seller_name,
    Input$StringWithAggregatesFilter? seller_phone,
    Input$StringWithAggregatesFilter? picture,
  });
  TRes AND(
      Iterable<Input$SellersScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$SellersScalarWhereWithAggregatesInput<
                      Input$SellersScalarWhereWithAggregatesInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$SellersScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$SellersScalarWhereWithAggregatesInput<
                      Input$SellersScalarWhereWithAggregatesInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$SellersScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$SellersScalarWhereWithAggregatesInput<
                      Input$SellersScalarWhereWithAggregatesInput>>?)
          _fn);
}

class _CopyWithImpl$Input$SellersScalarWhereWithAggregatesInput<TRes>
    implements CopyWith$Input$SellersScalarWhereWithAggregatesInput<TRes> {
  _CopyWithImpl$Input$SellersScalarWhereWithAggregatesInput(
    this._instance,
    this._then,
  );

  final Input$SellersScalarWhereWithAggregatesInput _instance;

  final TRes Function(Input$SellersScalarWhereWithAggregatesInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? seller_id = _undefined,
    Object? seller_name = _undefined,
    Object? seller_phone = _undefined,
    Object? picture = _undefined,
  }) =>
      _then(Input$SellersScalarWhereWithAggregatesInput._({
        ..._instance._$data,
        if (AND != _undefined)
          'AND': (AND as List<Input$SellersScalarWhereWithAggregatesInput>?),
        if (OR != _undefined)
          'OR': (OR as List<Input$SellersScalarWhereWithAggregatesInput>?),
        if (NOT != _undefined)
          'NOT': (NOT as List<Input$SellersScalarWhereWithAggregatesInput>?),
        if (seller_id != _undefined)
          'seller_id': (seller_id as Input$IntWithAggregatesFilter?),
        if (seller_name != _undefined)
          'seller_name': (seller_name as Input$StringWithAggregatesFilter?),
        if (seller_phone != _undefined)
          'seller_phone': (seller_phone as Input$StringWithAggregatesFilter?),
        if (picture != _undefined)
          'picture': (picture as Input$StringWithAggregatesFilter?),
      }));
  TRes AND(
          Iterable<Input$SellersScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$SellersScalarWhereWithAggregatesInput<
                          Input$SellersScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND
              ?.map((e) => CopyWith$Input$SellersScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes OR(
          Iterable<Input$SellersScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$SellersScalarWhereWithAggregatesInput<
                          Input$SellersScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR
              ?.map((e) => CopyWith$Input$SellersScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes NOT(
          Iterable<Input$SellersScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$SellersScalarWhereWithAggregatesInput<
                          Input$SellersScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT
              ?.map((e) => CopyWith$Input$SellersScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$SellersScalarWhereWithAggregatesInput<TRes>
    implements CopyWith$Input$SellersScalarWhereWithAggregatesInput<TRes> {
  _CopyWithStubImpl$Input$SellersScalarWhereWithAggregatesInput(this._res);

  TRes _res;

  call({
    List<Input$SellersScalarWhereWithAggregatesInput>? AND,
    List<Input$SellersScalarWhereWithAggregatesInput>? OR,
    List<Input$SellersScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? seller_id,
    Input$StringWithAggregatesFilter? seller_name,
    Input$StringWithAggregatesFilter? seller_phone,
    Input$StringWithAggregatesFilter? picture,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
}

class Input$SizesWhereUniqueInput {
  factory Input$SizesWhereUniqueInput({int? id}) =>
      Input$SizesWhereUniqueInput._({
        if (id != null) r'id': id,
      });

  Input$SizesWhereUniqueInput._(this._$data);

  factory Input$SizesWhereUniqueInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Input$SizesWhereUniqueInput._(result$data);
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

  CopyWith$Input$SizesWhereUniqueInput<Input$SizesWhereUniqueInput>
      get copyWith => CopyWith$Input$SizesWhereUniqueInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SizesWhereUniqueInput) ||
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

abstract class CopyWith$Input$SizesWhereUniqueInput<TRes> {
  factory CopyWith$Input$SizesWhereUniqueInput(
    Input$SizesWhereUniqueInput instance,
    TRes Function(Input$SizesWhereUniqueInput) then,
  ) = _CopyWithImpl$Input$SizesWhereUniqueInput;

  factory CopyWith$Input$SizesWhereUniqueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SizesWhereUniqueInput;

  TRes call({int? id});
}

class _CopyWithImpl$Input$SizesWhereUniqueInput<TRes>
    implements CopyWith$Input$SizesWhereUniqueInput<TRes> {
  _CopyWithImpl$Input$SizesWhereUniqueInput(
    this._instance,
    this._then,
  );

  final Input$SizesWhereUniqueInput _instance;

  final TRes Function(Input$SizesWhereUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Input$SizesWhereUniqueInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Input$SizesWhereUniqueInput<TRes>
    implements CopyWith$Input$SizesWhereUniqueInput<TRes> {
  _CopyWithStubImpl$Input$SizesWhereUniqueInput(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Input$SizesOrderByWithAggregationInput {
  factory Input$SizesOrderByWithAggregationInput({
    Enum$SortOrder? id,
    Enum$SortOrder? size,
    Input$SizesCountOrderByAggregateInput? $_count,
    Input$SizesAvgOrderByAggregateInput? $_avg,
    Input$SizesMaxOrderByAggregateInput? $_max,
    Input$SizesMinOrderByAggregateInput? $_min,
    Input$SizesSumOrderByAggregateInput? $_sum,
  }) =>
      Input$SizesOrderByWithAggregationInput._({
        if (id != null) r'id': id,
        if (size != null) r'size': size,
        if ($_count != null) r'_count': $_count,
        if ($_avg != null) r'_avg': $_avg,
        if ($_max != null) r'_max': $_max,
        if ($_min != null) r'_min': $_min,
        if ($_sum != null) r'_sum': $_sum,
      });

  Input$SizesOrderByWithAggregationInput._(this._$data);

  factory Input$SizesOrderByWithAggregationInput.fromJson(
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
    if (data.containsKey('_count')) {
      final l$$_count = data['_count'];
      result$data['_count'] = l$$_count == null
          ? null
          : Input$SizesCountOrderByAggregateInput.fromJson(
              (l$$_count as Map<String, dynamic>));
    }
    if (data.containsKey('_avg')) {
      final l$$_avg = data['_avg'];
      result$data['_avg'] = l$$_avg == null
          ? null
          : Input$SizesAvgOrderByAggregateInput.fromJson(
              (l$$_avg as Map<String, dynamic>));
    }
    if (data.containsKey('_max')) {
      final l$$_max = data['_max'];
      result$data['_max'] = l$$_max == null
          ? null
          : Input$SizesMaxOrderByAggregateInput.fromJson(
              (l$$_max as Map<String, dynamic>));
    }
    if (data.containsKey('_min')) {
      final l$$_min = data['_min'];
      result$data['_min'] = l$$_min == null
          ? null
          : Input$SizesMinOrderByAggregateInput.fromJson(
              (l$$_min as Map<String, dynamic>));
    }
    if (data.containsKey('_sum')) {
      final l$$_sum = data['_sum'];
      result$data['_sum'] = l$$_sum == null
          ? null
          : Input$SizesSumOrderByAggregateInput.fromJson(
              (l$$_sum as Map<String, dynamic>));
    }
    return Input$SizesOrderByWithAggregationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get id => (_$data['id'] as Enum$SortOrder?);
  Enum$SortOrder? get size => (_$data['size'] as Enum$SortOrder?);
  Input$SizesCountOrderByAggregateInput? get $_count =>
      (_$data['_count'] as Input$SizesCountOrderByAggregateInput?);
  Input$SizesAvgOrderByAggregateInput? get $_avg =>
      (_$data['_avg'] as Input$SizesAvgOrderByAggregateInput?);
  Input$SizesMaxOrderByAggregateInput? get $_max =>
      (_$data['_max'] as Input$SizesMaxOrderByAggregateInput?);
  Input$SizesMinOrderByAggregateInput? get $_min =>
      (_$data['_min'] as Input$SizesMinOrderByAggregateInput?);
  Input$SizesSumOrderByAggregateInput? get $_sum =>
      (_$data['_sum'] as Input$SizesSumOrderByAggregateInput?);
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

  CopyWith$Input$SizesOrderByWithAggregationInput<
          Input$SizesOrderByWithAggregationInput>
      get copyWith => CopyWith$Input$SizesOrderByWithAggregationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SizesOrderByWithAggregationInput) ||
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
    final l$size = size;
    final l$$_count = $_count;
    final l$$_avg = $_avg;
    final l$$_max = $_max;
    final l$$_min = $_min;
    final l$$_sum = $_sum;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('size') ? l$size : const {},
      _$data.containsKey('_count') ? l$$_count : const {},
      _$data.containsKey('_avg') ? l$$_avg : const {},
      _$data.containsKey('_max') ? l$$_max : const {},
      _$data.containsKey('_min') ? l$$_min : const {},
      _$data.containsKey('_sum') ? l$$_sum : const {},
    ]);
  }
}

abstract class CopyWith$Input$SizesOrderByWithAggregationInput<TRes> {
  factory CopyWith$Input$SizesOrderByWithAggregationInput(
    Input$SizesOrderByWithAggregationInput instance,
    TRes Function(Input$SizesOrderByWithAggregationInput) then,
  ) = _CopyWithImpl$Input$SizesOrderByWithAggregationInput;

  factory CopyWith$Input$SizesOrderByWithAggregationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SizesOrderByWithAggregationInput;

  TRes call({
    Enum$SortOrder? id,
    Enum$SortOrder? size,
    Input$SizesCountOrderByAggregateInput? $_count,
    Input$SizesAvgOrderByAggregateInput? $_avg,
    Input$SizesMaxOrderByAggregateInput? $_max,
    Input$SizesMinOrderByAggregateInput? $_min,
    Input$SizesSumOrderByAggregateInput? $_sum,
  });
  CopyWith$Input$SizesCountOrderByAggregateInput<TRes> get $_count;
  CopyWith$Input$SizesAvgOrderByAggregateInput<TRes> get $_avg;
  CopyWith$Input$SizesMaxOrderByAggregateInput<TRes> get $_max;
  CopyWith$Input$SizesMinOrderByAggregateInput<TRes> get $_min;
  CopyWith$Input$SizesSumOrderByAggregateInput<TRes> get $_sum;
}

class _CopyWithImpl$Input$SizesOrderByWithAggregationInput<TRes>
    implements CopyWith$Input$SizesOrderByWithAggregationInput<TRes> {
  _CopyWithImpl$Input$SizesOrderByWithAggregationInput(
    this._instance,
    this._then,
  );

  final Input$SizesOrderByWithAggregationInput _instance;

  final TRes Function(Input$SizesOrderByWithAggregationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? size = _undefined,
    Object? $_count = _undefined,
    Object? $_avg = _undefined,
    Object? $_max = _undefined,
    Object? $_min = _undefined,
    Object? $_sum = _undefined,
  }) =>
      _then(Input$SizesOrderByWithAggregationInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortOrder?),
        if (size != _undefined) 'size': (size as Enum$SortOrder?),
        if ($_count != _undefined)
          '_count': ($_count as Input$SizesCountOrderByAggregateInput?),
        if ($_avg != _undefined)
          '_avg': ($_avg as Input$SizesAvgOrderByAggregateInput?),
        if ($_max != _undefined)
          '_max': ($_max as Input$SizesMaxOrderByAggregateInput?),
        if ($_min != _undefined)
          '_min': ($_min as Input$SizesMinOrderByAggregateInput?),
        if ($_sum != _undefined)
          '_sum': ($_sum as Input$SizesSumOrderByAggregateInput?),
      }));
  CopyWith$Input$SizesCountOrderByAggregateInput<TRes> get $_count {
    final local$$_count = _instance.$_count;
    return local$$_count == null
        ? CopyWith$Input$SizesCountOrderByAggregateInput.stub(_then(_instance))
        : CopyWith$Input$SizesCountOrderByAggregateInput(
            local$$_count, (e) => call($_count: e));
  }

  CopyWith$Input$SizesAvgOrderByAggregateInput<TRes> get $_avg {
    final local$$_avg = _instance.$_avg;
    return local$$_avg == null
        ? CopyWith$Input$SizesAvgOrderByAggregateInput.stub(_then(_instance))
        : CopyWith$Input$SizesAvgOrderByAggregateInput(
            local$$_avg, (e) => call($_avg: e));
  }

  CopyWith$Input$SizesMaxOrderByAggregateInput<TRes> get $_max {
    final local$$_max = _instance.$_max;
    return local$$_max == null
        ? CopyWith$Input$SizesMaxOrderByAggregateInput.stub(_then(_instance))
        : CopyWith$Input$SizesMaxOrderByAggregateInput(
            local$$_max, (e) => call($_max: e));
  }

  CopyWith$Input$SizesMinOrderByAggregateInput<TRes> get $_min {
    final local$$_min = _instance.$_min;
    return local$$_min == null
        ? CopyWith$Input$SizesMinOrderByAggregateInput.stub(_then(_instance))
        : CopyWith$Input$SizesMinOrderByAggregateInput(
            local$$_min, (e) => call($_min: e));
  }

  CopyWith$Input$SizesSumOrderByAggregateInput<TRes> get $_sum {
    final local$$_sum = _instance.$_sum;
    return local$$_sum == null
        ? CopyWith$Input$SizesSumOrderByAggregateInput.stub(_then(_instance))
        : CopyWith$Input$SizesSumOrderByAggregateInput(
            local$$_sum, (e) => call($_sum: e));
  }
}

class _CopyWithStubImpl$Input$SizesOrderByWithAggregationInput<TRes>
    implements CopyWith$Input$SizesOrderByWithAggregationInput<TRes> {
  _CopyWithStubImpl$Input$SizesOrderByWithAggregationInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? id,
    Enum$SortOrder? size,
    Input$SizesCountOrderByAggregateInput? $_count,
    Input$SizesAvgOrderByAggregateInput? $_avg,
    Input$SizesMaxOrderByAggregateInput? $_max,
    Input$SizesMinOrderByAggregateInput? $_min,
    Input$SizesSumOrderByAggregateInput? $_sum,
  }) =>
      _res;
  CopyWith$Input$SizesCountOrderByAggregateInput<TRes> get $_count =>
      CopyWith$Input$SizesCountOrderByAggregateInput.stub(_res);
  CopyWith$Input$SizesAvgOrderByAggregateInput<TRes> get $_avg =>
      CopyWith$Input$SizesAvgOrderByAggregateInput.stub(_res);
  CopyWith$Input$SizesMaxOrderByAggregateInput<TRes> get $_max =>
      CopyWith$Input$SizesMaxOrderByAggregateInput.stub(_res);
  CopyWith$Input$SizesMinOrderByAggregateInput<TRes> get $_min =>
      CopyWith$Input$SizesMinOrderByAggregateInput.stub(_res);
  CopyWith$Input$SizesSumOrderByAggregateInput<TRes> get $_sum =>
      CopyWith$Input$SizesSumOrderByAggregateInput.stub(_res);
}

class Input$SizesCountOrderByAggregateInput {
  factory Input$SizesCountOrderByAggregateInput({
    Enum$SortOrder? id,
    Enum$SortOrder? size,
  }) =>
      Input$SizesCountOrderByAggregateInput._({
        if (id != null) r'id': id,
        if (size != null) r'size': size,
      });

  Input$SizesCountOrderByAggregateInput._(this._$data);

  factory Input$SizesCountOrderByAggregateInput.fromJson(
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
    return Input$SizesCountOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get id => (_$data['id'] as Enum$SortOrder?);
  Enum$SortOrder? get size => (_$data['size'] as Enum$SortOrder?);
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
    return result$data;
  }

  CopyWith$Input$SizesCountOrderByAggregateInput<
          Input$SizesCountOrderByAggregateInput>
      get copyWith => CopyWith$Input$SizesCountOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SizesCountOrderByAggregateInput) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$size = size;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('size') ? l$size : const {},
    ]);
  }
}

abstract class CopyWith$Input$SizesCountOrderByAggregateInput<TRes> {
  factory CopyWith$Input$SizesCountOrderByAggregateInput(
    Input$SizesCountOrderByAggregateInput instance,
    TRes Function(Input$SizesCountOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$SizesCountOrderByAggregateInput;

  factory CopyWith$Input$SizesCountOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SizesCountOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? id,
    Enum$SortOrder? size,
  });
}

class _CopyWithImpl$Input$SizesCountOrderByAggregateInput<TRes>
    implements CopyWith$Input$SizesCountOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$SizesCountOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$SizesCountOrderByAggregateInput _instance;

  final TRes Function(Input$SizesCountOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? size = _undefined,
  }) =>
      _then(Input$SizesCountOrderByAggregateInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortOrder?),
        if (size != _undefined) 'size': (size as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$SizesCountOrderByAggregateInput<TRes>
    implements CopyWith$Input$SizesCountOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$SizesCountOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? id,
    Enum$SortOrder? size,
  }) =>
      _res;
}

class Input$SizesAvgOrderByAggregateInput {
  factory Input$SizesAvgOrderByAggregateInput({Enum$SortOrder? id}) =>
      Input$SizesAvgOrderByAggregateInput._({
        if (id != null) r'id': id,
      });

  Input$SizesAvgOrderByAggregateInput._(this._$data);

  factory Input$SizesAvgOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortOrder((l$id as String));
    }
    return Input$SizesAvgOrderByAggregateInput._(result$data);
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

  CopyWith$Input$SizesAvgOrderByAggregateInput<
          Input$SizesAvgOrderByAggregateInput>
      get copyWith => CopyWith$Input$SizesAvgOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SizesAvgOrderByAggregateInput) ||
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

abstract class CopyWith$Input$SizesAvgOrderByAggregateInput<TRes> {
  factory CopyWith$Input$SizesAvgOrderByAggregateInput(
    Input$SizesAvgOrderByAggregateInput instance,
    TRes Function(Input$SizesAvgOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$SizesAvgOrderByAggregateInput;

  factory CopyWith$Input$SizesAvgOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SizesAvgOrderByAggregateInput;

  TRes call({Enum$SortOrder? id});
}

class _CopyWithImpl$Input$SizesAvgOrderByAggregateInput<TRes>
    implements CopyWith$Input$SizesAvgOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$SizesAvgOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$SizesAvgOrderByAggregateInput _instance;

  final TRes Function(Input$SizesAvgOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Input$SizesAvgOrderByAggregateInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$SizesAvgOrderByAggregateInput<TRes>
    implements CopyWith$Input$SizesAvgOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$SizesAvgOrderByAggregateInput(this._res);

  TRes _res;

  call({Enum$SortOrder? id}) => _res;
}

class Input$SizesMaxOrderByAggregateInput {
  factory Input$SizesMaxOrderByAggregateInput({
    Enum$SortOrder? id,
    Enum$SortOrder? size,
  }) =>
      Input$SizesMaxOrderByAggregateInput._({
        if (id != null) r'id': id,
        if (size != null) r'size': size,
      });

  Input$SizesMaxOrderByAggregateInput._(this._$data);

  factory Input$SizesMaxOrderByAggregateInput.fromJson(
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
    return Input$SizesMaxOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get id => (_$data['id'] as Enum$SortOrder?);
  Enum$SortOrder? get size => (_$data['size'] as Enum$SortOrder?);
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
    return result$data;
  }

  CopyWith$Input$SizesMaxOrderByAggregateInput<
          Input$SizesMaxOrderByAggregateInput>
      get copyWith => CopyWith$Input$SizesMaxOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SizesMaxOrderByAggregateInput) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$size = size;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('size') ? l$size : const {},
    ]);
  }
}

abstract class CopyWith$Input$SizesMaxOrderByAggregateInput<TRes> {
  factory CopyWith$Input$SizesMaxOrderByAggregateInput(
    Input$SizesMaxOrderByAggregateInput instance,
    TRes Function(Input$SizesMaxOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$SizesMaxOrderByAggregateInput;

  factory CopyWith$Input$SizesMaxOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SizesMaxOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? id,
    Enum$SortOrder? size,
  });
}

class _CopyWithImpl$Input$SizesMaxOrderByAggregateInput<TRes>
    implements CopyWith$Input$SizesMaxOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$SizesMaxOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$SizesMaxOrderByAggregateInput _instance;

  final TRes Function(Input$SizesMaxOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? size = _undefined,
  }) =>
      _then(Input$SizesMaxOrderByAggregateInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortOrder?),
        if (size != _undefined) 'size': (size as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$SizesMaxOrderByAggregateInput<TRes>
    implements CopyWith$Input$SizesMaxOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$SizesMaxOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? id,
    Enum$SortOrder? size,
  }) =>
      _res;
}

class Input$SizesMinOrderByAggregateInput {
  factory Input$SizesMinOrderByAggregateInput({
    Enum$SortOrder? id,
    Enum$SortOrder? size,
  }) =>
      Input$SizesMinOrderByAggregateInput._({
        if (id != null) r'id': id,
        if (size != null) r'size': size,
      });

  Input$SizesMinOrderByAggregateInput._(this._$data);

  factory Input$SizesMinOrderByAggregateInput.fromJson(
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
    return Input$SizesMinOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get id => (_$data['id'] as Enum$SortOrder?);
  Enum$SortOrder? get size => (_$data['size'] as Enum$SortOrder?);
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
    return result$data;
  }

  CopyWith$Input$SizesMinOrderByAggregateInput<
          Input$SizesMinOrderByAggregateInput>
      get copyWith => CopyWith$Input$SizesMinOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SizesMinOrderByAggregateInput) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$size = size;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('size') ? l$size : const {},
    ]);
  }
}

abstract class CopyWith$Input$SizesMinOrderByAggregateInput<TRes> {
  factory CopyWith$Input$SizesMinOrderByAggregateInput(
    Input$SizesMinOrderByAggregateInput instance,
    TRes Function(Input$SizesMinOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$SizesMinOrderByAggregateInput;

  factory CopyWith$Input$SizesMinOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SizesMinOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? id,
    Enum$SortOrder? size,
  });
}

class _CopyWithImpl$Input$SizesMinOrderByAggregateInput<TRes>
    implements CopyWith$Input$SizesMinOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$SizesMinOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$SizesMinOrderByAggregateInput _instance;

  final TRes Function(Input$SizesMinOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? size = _undefined,
  }) =>
      _then(Input$SizesMinOrderByAggregateInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortOrder?),
        if (size != _undefined) 'size': (size as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$SizesMinOrderByAggregateInput<TRes>
    implements CopyWith$Input$SizesMinOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$SizesMinOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? id,
    Enum$SortOrder? size,
  }) =>
      _res;
}

class Input$SizesSumOrderByAggregateInput {
  factory Input$SizesSumOrderByAggregateInput({Enum$SortOrder? id}) =>
      Input$SizesSumOrderByAggregateInput._({
        if (id != null) r'id': id,
      });

  Input$SizesSumOrderByAggregateInput._(this._$data);

  factory Input$SizesSumOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortOrder((l$id as String));
    }
    return Input$SizesSumOrderByAggregateInput._(result$data);
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

  CopyWith$Input$SizesSumOrderByAggregateInput<
          Input$SizesSumOrderByAggregateInput>
      get copyWith => CopyWith$Input$SizesSumOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SizesSumOrderByAggregateInput) ||
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

abstract class CopyWith$Input$SizesSumOrderByAggregateInput<TRes> {
  factory CopyWith$Input$SizesSumOrderByAggregateInput(
    Input$SizesSumOrderByAggregateInput instance,
    TRes Function(Input$SizesSumOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$SizesSumOrderByAggregateInput;

  factory CopyWith$Input$SizesSumOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SizesSumOrderByAggregateInput;

  TRes call({Enum$SortOrder? id});
}

class _CopyWithImpl$Input$SizesSumOrderByAggregateInput<TRes>
    implements CopyWith$Input$SizesSumOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$SizesSumOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$SizesSumOrderByAggregateInput _instance;

  final TRes Function(Input$SizesSumOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Input$SizesSumOrderByAggregateInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$SizesSumOrderByAggregateInput<TRes>
    implements CopyWith$Input$SizesSumOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$SizesSumOrderByAggregateInput(this._res);

  TRes _res;

  call({Enum$SortOrder? id}) => _res;
}

class Input$SizesScalarWhereWithAggregatesInput {
  factory Input$SizesScalarWhereWithAggregatesInput({
    List<Input$SizesScalarWhereWithAggregatesInput>? AND,
    List<Input$SizesScalarWhereWithAggregatesInput>? OR,
    List<Input$SizesScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? id,
    Input$StringWithAggregatesFilter? size,
  }) =>
      Input$SizesScalarWhereWithAggregatesInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (id != null) r'id': id,
        if (size != null) r'size': size,
      });

  Input$SizesScalarWhereWithAggregatesInput._(this._$data);

  factory Input$SizesScalarWhereWithAggregatesInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) => Input$SizesScalarWhereWithAggregatesInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) => Input$SizesScalarWhereWithAggregatesInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) => Input$SizesScalarWhereWithAggregatesInput.fromJson(
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
    if (data.containsKey('size')) {
      final l$size = data['size'];
      result$data['size'] = l$size == null
          ? null
          : Input$StringWithAggregatesFilter.fromJson(
              (l$size as Map<String, dynamic>));
    }
    return Input$SizesScalarWhereWithAggregatesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$SizesScalarWhereWithAggregatesInput>? get AND =>
      (_$data['AND'] as List<Input$SizesScalarWhereWithAggregatesInput>?);
  List<Input$SizesScalarWhereWithAggregatesInput>? get OR =>
      (_$data['OR'] as List<Input$SizesScalarWhereWithAggregatesInput>?);
  List<Input$SizesScalarWhereWithAggregatesInput>? get NOT =>
      (_$data['NOT'] as List<Input$SizesScalarWhereWithAggregatesInput>?);
  Input$IntWithAggregatesFilter? get id =>
      (_$data['id'] as Input$IntWithAggregatesFilter?);
  Input$StringWithAggregatesFilter? get size =>
      (_$data['size'] as Input$StringWithAggregatesFilter?);
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
    return result$data;
  }

  CopyWith$Input$SizesScalarWhereWithAggregatesInput<
          Input$SizesScalarWhereWithAggregatesInput>
      get copyWith => CopyWith$Input$SizesScalarWhereWithAggregatesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SizesScalarWhereWithAggregatesInput) ||
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
    final l$size = size;
    final lOther$size = other.size;
    if (_$data.containsKey('size') != other._$data.containsKey('size')) {
      return false;
    }
    if (l$size != lOther$size) {
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
    ]);
  }
}

abstract class CopyWith$Input$SizesScalarWhereWithAggregatesInput<TRes> {
  factory CopyWith$Input$SizesScalarWhereWithAggregatesInput(
    Input$SizesScalarWhereWithAggregatesInput instance,
    TRes Function(Input$SizesScalarWhereWithAggregatesInput) then,
  ) = _CopyWithImpl$Input$SizesScalarWhereWithAggregatesInput;

  factory CopyWith$Input$SizesScalarWhereWithAggregatesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SizesScalarWhereWithAggregatesInput;

  TRes call({
    List<Input$SizesScalarWhereWithAggregatesInput>? AND,
    List<Input$SizesScalarWhereWithAggregatesInput>? OR,
    List<Input$SizesScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? id,
    Input$StringWithAggregatesFilter? size,
  });
  TRes AND(
      Iterable<Input$SizesScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$SizesScalarWhereWithAggregatesInput<
                      Input$SizesScalarWhereWithAggregatesInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$SizesScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$SizesScalarWhereWithAggregatesInput<
                      Input$SizesScalarWhereWithAggregatesInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$SizesScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$SizesScalarWhereWithAggregatesInput<
                      Input$SizesScalarWhereWithAggregatesInput>>?)
          _fn);
}

class _CopyWithImpl$Input$SizesScalarWhereWithAggregatesInput<TRes>
    implements CopyWith$Input$SizesScalarWhereWithAggregatesInput<TRes> {
  _CopyWithImpl$Input$SizesScalarWhereWithAggregatesInput(
    this._instance,
    this._then,
  );

  final Input$SizesScalarWhereWithAggregatesInput _instance;

  final TRes Function(Input$SizesScalarWhereWithAggregatesInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? id = _undefined,
    Object? size = _undefined,
  }) =>
      _then(Input$SizesScalarWhereWithAggregatesInput._({
        ..._instance._$data,
        if (AND != _undefined)
          'AND': (AND as List<Input$SizesScalarWhereWithAggregatesInput>?),
        if (OR != _undefined)
          'OR': (OR as List<Input$SizesScalarWhereWithAggregatesInput>?),
        if (NOT != _undefined)
          'NOT': (NOT as List<Input$SizesScalarWhereWithAggregatesInput>?),
        if (id != _undefined) 'id': (id as Input$IntWithAggregatesFilter?),
        if (size != _undefined)
          'size': (size as Input$StringWithAggregatesFilter?),
      }));
  TRes AND(
          Iterable<Input$SizesScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$SizesScalarWhereWithAggregatesInput<
                          Input$SizesScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND
              ?.map((e) => CopyWith$Input$SizesScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes OR(
          Iterable<Input$SizesScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$SizesScalarWhereWithAggregatesInput<
                          Input$SizesScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR
              ?.map((e) => CopyWith$Input$SizesScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes NOT(
          Iterable<Input$SizesScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$SizesScalarWhereWithAggregatesInput<
                          Input$SizesScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT
              ?.map((e) => CopyWith$Input$SizesScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$SizesScalarWhereWithAggregatesInput<TRes>
    implements CopyWith$Input$SizesScalarWhereWithAggregatesInput<TRes> {
  _CopyWithStubImpl$Input$SizesScalarWhereWithAggregatesInput(this._res);

  TRes _res;

  call({
    List<Input$SizesScalarWhereWithAggregatesInput>? AND,
    List<Input$SizesScalarWhereWithAggregatesInput>? OR,
    List<Input$SizesScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? id,
    Input$StringWithAggregatesFilter? size,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
}

class Input$TransactionProductOrderByWithAggregationInput {
  factory Input$TransactionProductOrderByWithAggregationInput({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? price,
    Enum$SortOrder? product_name,
    Input$TransactionProductCountOrderByAggregateInput? $_count,
    Input$TransactionProductAvgOrderByAggregateInput? $_avg,
    Input$TransactionProductMaxOrderByAggregateInput? $_max,
    Input$TransactionProductMinOrderByAggregateInput? $_min,
    Input$TransactionProductSumOrderByAggregateInput? $_sum,
  }) =>
      Input$TransactionProductOrderByWithAggregationInput._({
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (product_id != null) r'product_id': product_id,
        if (quantity != null) r'quantity': quantity,
        if (price != null) r'price': price,
        if (product_name != null) r'product_name': product_name,
        if ($_count != null) r'_count': $_count,
        if ($_avg != null) r'_avg': $_avg,
        if ($_max != null) r'_max': $_max,
        if ($_min != null) r'_min': $_min,
        if ($_sum != null) r'_sum': $_sum,
      });

  Input$TransactionProductOrderByWithAggregationInput._(this._$data);

  factory Input$TransactionProductOrderByWithAggregationInput.fromJson(
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
    if (data.containsKey('_count')) {
      final l$$_count = data['_count'];
      result$data['_count'] = l$$_count == null
          ? null
          : Input$TransactionProductCountOrderByAggregateInput.fromJson(
              (l$$_count as Map<String, dynamic>));
    }
    if (data.containsKey('_avg')) {
      final l$$_avg = data['_avg'];
      result$data['_avg'] = l$$_avg == null
          ? null
          : Input$TransactionProductAvgOrderByAggregateInput.fromJson(
              (l$$_avg as Map<String, dynamic>));
    }
    if (data.containsKey('_max')) {
      final l$$_max = data['_max'];
      result$data['_max'] = l$$_max == null
          ? null
          : Input$TransactionProductMaxOrderByAggregateInput.fromJson(
              (l$$_max as Map<String, dynamic>));
    }
    if (data.containsKey('_min')) {
      final l$$_min = data['_min'];
      result$data['_min'] = l$$_min == null
          ? null
          : Input$TransactionProductMinOrderByAggregateInput.fromJson(
              (l$$_min as Map<String, dynamic>));
    }
    if (data.containsKey('_sum')) {
      final l$$_sum = data['_sum'];
      result$data['_sum'] = l$$_sum == null
          ? null
          : Input$TransactionProductSumOrderByAggregateInput.fromJson(
              (l$$_sum as Map<String, dynamic>));
    }
    return Input$TransactionProductOrderByWithAggregationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_id =>
      (_$data['transaction_id'] as Enum$SortOrder?);
  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get quantity => (_$data['quantity'] as Enum$SortOrder?);
  Enum$SortOrder? get price => (_$data['price'] as Enum$SortOrder?);
  Enum$SortOrder? get product_name =>
      (_$data['product_name'] as Enum$SortOrder?);
  Input$TransactionProductCountOrderByAggregateInput? get $_count =>
      (_$data['_count'] as Input$TransactionProductCountOrderByAggregateInput?);
  Input$TransactionProductAvgOrderByAggregateInput? get $_avg =>
      (_$data['_avg'] as Input$TransactionProductAvgOrderByAggregateInput?);
  Input$TransactionProductMaxOrderByAggregateInput? get $_max =>
      (_$data['_max'] as Input$TransactionProductMaxOrderByAggregateInput?);
  Input$TransactionProductMinOrderByAggregateInput? get $_min =>
      (_$data['_min'] as Input$TransactionProductMinOrderByAggregateInput?);
  Input$TransactionProductSumOrderByAggregateInput? get $_sum =>
      (_$data['_sum'] as Input$TransactionProductSumOrderByAggregateInput?);
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

  CopyWith$Input$TransactionProductOrderByWithAggregationInput<
          Input$TransactionProductOrderByWithAggregationInput>
      get copyWith =>
          CopyWith$Input$TransactionProductOrderByWithAggregationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionProductOrderByWithAggregationInput) ||
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
    final l$transaction_id = transaction_id;
    final l$product_id = product_id;
    final l$quantity = quantity;
    final l$price = price;
    final l$product_name = product_name;
    final l$$_count = $_count;
    final l$$_avg = $_avg;
    final l$$_max = $_max;
    final l$$_min = $_min;
    final l$$_sum = $_sum;
    return Object.hashAll([
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('price') ? l$price : const {},
      _$data.containsKey('product_name') ? l$product_name : const {},
      _$data.containsKey('_count') ? l$$_count : const {},
      _$data.containsKey('_avg') ? l$$_avg : const {},
      _$data.containsKey('_max') ? l$$_max : const {},
      _$data.containsKey('_min') ? l$$_min : const {},
      _$data.containsKey('_sum') ? l$$_sum : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionProductOrderByWithAggregationInput<
    TRes> {
  factory CopyWith$Input$TransactionProductOrderByWithAggregationInput(
    Input$TransactionProductOrderByWithAggregationInput instance,
    TRes Function(Input$TransactionProductOrderByWithAggregationInput) then,
  ) = _CopyWithImpl$Input$TransactionProductOrderByWithAggregationInput;

  factory CopyWith$Input$TransactionProductOrderByWithAggregationInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionProductOrderByWithAggregationInput;

  TRes call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? price,
    Enum$SortOrder? product_name,
    Input$TransactionProductCountOrderByAggregateInput? $_count,
    Input$TransactionProductAvgOrderByAggregateInput? $_avg,
    Input$TransactionProductMaxOrderByAggregateInput? $_max,
    Input$TransactionProductMinOrderByAggregateInput? $_min,
    Input$TransactionProductSumOrderByAggregateInput? $_sum,
  });
  CopyWith$Input$TransactionProductCountOrderByAggregateInput<TRes> get $_count;
  CopyWith$Input$TransactionProductAvgOrderByAggregateInput<TRes> get $_avg;
  CopyWith$Input$TransactionProductMaxOrderByAggregateInput<TRes> get $_max;
  CopyWith$Input$TransactionProductMinOrderByAggregateInput<TRes> get $_min;
  CopyWith$Input$TransactionProductSumOrderByAggregateInput<TRes> get $_sum;
}

class _CopyWithImpl$Input$TransactionProductOrderByWithAggregationInput<TRes>
    implements
        CopyWith$Input$TransactionProductOrderByWithAggregationInput<TRes> {
  _CopyWithImpl$Input$TransactionProductOrderByWithAggregationInput(
    this._instance,
    this._then,
  );

  final Input$TransactionProductOrderByWithAggregationInput _instance;

  final TRes Function(Input$TransactionProductOrderByWithAggregationInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? product_id = _undefined,
    Object? quantity = _undefined,
    Object? price = _undefined,
    Object? product_name = _undefined,
    Object? $_count = _undefined,
    Object? $_avg = _undefined,
    Object? $_max = _undefined,
    Object? $_min = _undefined,
    Object? $_sum = _undefined,
  }) =>
      _then(Input$TransactionProductOrderByWithAggregationInput._({
        ..._instance._$data,
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Enum$SortOrder?),
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (quantity != _undefined) 'quantity': (quantity as Enum$SortOrder?),
        if (price != _undefined) 'price': (price as Enum$SortOrder?),
        if (product_name != _undefined)
          'product_name': (product_name as Enum$SortOrder?),
        if ($_count != _undefined)
          '_count':
              ($_count as Input$TransactionProductCountOrderByAggregateInput?),
        if ($_avg != _undefined)
          '_avg': ($_avg as Input$TransactionProductAvgOrderByAggregateInput?),
        if ($_max != _undefined)
          '_max': ($_max as Input$TransactionProductMaxOrderByAggregateInput?),
        if ($_min != _undefined)
          '_min': ($_min as Input$TransactionProductMinOrderByAggregateInput?),
        if ($_sum != _undefined)
          '_sum': ($_sum as Input$TransactionProductSumOrderByAggregateInput?),
      }));
  CopyWith$Input$TransactionProductCountOrderByAggregateInput<TRes>
      get $_count {
    final local$$_count = _instance.$_count;
    return local$$_count == null
        ? CopyWith$Input$TransactionProductCountOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionProductCountOrderByAggregateInput(
            local$$_count, (e) => call($_count: e));
  }

  CopyWith$Input$TransactionProductAvgOrderByAggregateInput<TRes> get $_avg {
    final local$$_avg = _instance.$_avg;
    return local$$_avg == null
        ? CopyWith$Input$TransactionProductAvgOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionProductAvgOrderByAggregateInput(
            local$$_avg, (e) => call($_avg: e));
  }

  CopyWith$Input$TransactionProductMaxOrderByAggregateInput<TRes> get $_max {
    final local$$_max = _instance.$_max;
    return local$$_max == null
        ? CopyWith$Input$TransactionProductMaxOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionProductMaxOrderByAggregateInput(
            local$$_max, (e) => call($_max: e));
  }

  CopyWith$Input$TransactionProductMinOrderByAggregateInput<TRes> get $_min {
    final local$$_min = _instance.$_min;
    return local$$_min == null
        ? CopyWith$Input$TransactionProductMinOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionProductMinOrderByAggregateInput(
            local$$_min, (e) => call($_min: e));
  }

  CopyWith$Input$TransactionProductSumOrderByAggregateInput<TRes> get $_sum {
    final local$$_sum = _instance.$_sum;
    return local$$_sum == null
        ? CopyWith$Input$TransactionProductSumOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionProductSumOrderByAggregateInput(
            local$$_sum, (e) => call($_sum: e));
  }
}

class _CopyWithStubImpl$Input$TransactionProductOrderByWithAggregationInput<
        TRes>
    implements
        CopyWith$Input$TransactionProductOrderByWithAggregationInput<TRes> {
  _CopyWithStubImpl$Input$TransactionProductOrderByWithAggregationInput(
      this._res);

  TRes _res;

  call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? price,
    Enum$SortOrder? product_name,
    Input$TransactionProductCountOrderByAggregateInput? $_count,
    Input$TransactionProductAvgOrderByAggregateInput? $_avg,
    Input$TransactionProductMaxOrderByAggregateInput? $_max,
    Input$TransactionProductMinOrderByAggregateInput? $_min,
    Input$TransactionProductSumOrderByAggregateInput? $_sum,
  }) =>
      _res;
  CopyWith$Input$TransactionProductCountOrderByAggregateInput<TRes>
      get $_count =>
          CopyWith$Input$TransactionProductCountOrderByAggregateInput.stub(
              _res);
  CopyWith$Input$TransactionProductAvgOrderByAggregateInput<TRes> get $_avg =>
      CopyWith$Input$TransactionProductAvgOrderByAggregateInput.stub(_res);
  CopyWith$Input$TransactionProductMaxOrderByAggregateInput<TRes> get $_max =>
      CopyWith$Input$TransactionProductMaxOrderByAggregateInput.stub(_res);
  CopyWith$Input$TransactionProductMinOrderByAggregateInput<TRes> get $_min =>
      CopyWith$Input$TransactionProductMinOrderByAggregateInput.stub(_res);
  CopyWith$Input$TransactionProductSumOrderByAggregateInput<TRes> get $_sum =>
      CopyWith$Input$TransactionProductSumOrderByAggregateInput.stub(_res);
}

class Input$TransactionProductCountOrderByAggregateInput {
  factory Input$TransactionProductCountOrderByAggregateInput({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? price,
    Enum$SortOrder? product_name,
  }) =>
      Input$TransactionProductCountOrderByAggregateInput._({
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (product_id != null) r'product_id': product_id,
        if (quantity != null) r'quantity': quantity,
        if (price != null) r'price': price,
        if (product_name != null) r'product_name': product_name,
      });

  Input$TransactionProductCountOrderByAggregateInput._(this._$data);

  factory Input$TransactionProductCountOrderByAggregateInput.fromJson(
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
    return Input$TransactionProductCountOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_id =>
      (_$data['transaction_id'] as Enum$SortOrder?);
  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get quantity => (_$data['quantity'] as Enum$SortOrder?);
  Enum$SortOrder? get price => (_$data['price'] as Enum$SortOrder?);
  Enum$SortOrder? get product_name =>
      (_$data['product_name'] as Enum$SortOrder?);
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
    return result$data;
  }

  CopyWith$Input$TransactionProductCountOrderByAggregateInput<
          Input$TransactionProductCountOrderByAggregateInput>
      get copyWith =>
          CopyWith$Input$TransactionProductCountOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionProductCountOrderByAggregateInput) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_id = transaction_id;
    final l$product_id = product_id;
    final l$quantity = quantity;
    final l$price = price;
    final l$product_name = product_name;
    return Object.hashAll([
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('price') ? l$price : const {},
      _$data.containsKey('product_name') ? l$product_name : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionProductCountOrderByAggregateInput<
    TRes> {
  factory CopyWith$Input$TransactionProductCountOrderByAggregateInput(
    Input$TransactionProductCountOrderByAggregateInput instance,
    TRes Function(Input$TransactionProductCountOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$TransactionProductCountOrderByAggregateInput;

  factory CopyWith$Input$TransactionProductCountOrderByAggregateInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionProductCountOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? price,
    Enum$SortOrder? product_name,
  });
}

class _CopyWithImpl$Input$TransactionProductCountOrderByAggregateInput<TRes>
    implements
        CopyWith$Input$TransactionProductCountOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$TransactionProductCountOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionProductCountOrderByAggregateInput _instance;

  final TRes Function(Input$TransactionProductCountOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? product_id = _undefined,
    Object? quantity = _undefined,
    Object? price = _undefined,
    Object? product_name = _undefined,
  }) =>
      _then(Input$TransactionProductCountOrderByAggregateInput._({
        ..._instance._$data,
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Enum$SortOrder?),
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (quantity != _undefined) 'quantity': (quantity as Enum$SortOrder?),
        if (price != _undefined) 'price': (price as Enum$SortOrder?),
        if (product_name != _undefined)
          'product_name': (product_name as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$TransactionProductCountOrderByAggregateInput<TRes>
    implements
        CopyWith$Input$TransactionProductCountOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionProductCountOrderByAggregateInput(
      this._res);

  TRes _res;

  call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? price,
    Enum$SortOrder? product_name,
  }) =>
      _res;
}

class Input$TransactionProductAvgOrderByAggregateInput {
  factory Input$TransactionProductAvgOrderByAggregateInput({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? price,
  }) =>
      Input$TransactionProductAvgOrderByAggregateInput._({
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (product_id != null) r'product_id': product_id,
        if (quantity != null) r'quantity': quantity,
        if (price != null) r'price': price,
      });

  Input$TransactionProductAvgOrderByAggregateInput._(this._$data);

  factory Input$TransactionProductAvgOrderByAggregateInput.fromJson(
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
    return Input$TransactionProductAvgOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_id =>
      (_$data['transaction_id'] as Enum$SortOrder?);
  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get quantity => (_$data['quantity'] as Enum$SortOrder?);
  Enum$SortOrder? get price => (_$data['price'] as Enum$SortOrder?);
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
    return result$data;
  }

  CopyWith$Input$TransactionProductAvgOrderByAggregateInput<
          Input$TransactionProductAvgOrderByAggregateInput>
      get copyWith => CopyWith$Input$TransactionProductAvgOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionProductAvgOrderByAggregateInput) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_id = transaction_id;
    final l$product_id = product_id;
    final l$quantity = quantity;
    final l$price = price;
    return Object.hashAll([
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('price') ? l$price : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionProductAvgOrderByAggregateInput<TRes> {
  factory CopyWith$Input$TransactionProductAvgOrderByAggregateInput(
    Input$TransactionProductAvgOrderByAggregateInput instance,
    TRes Function(Input$TransactionProductAvgOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$TransactionProductAvgOrderByAggregateInput;

  factory CopyWith$Input$TransactionProductAvgOrderByAggregateInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionProductAvgOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? price,
  });
}

class _CopyWithImpl$Input$TransactionProductAvgOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionProductAvgOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$TransactionProductAvgOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionProductAvgOrderByAggregateInput _instance;

  final TRes Function(Input$TransactionProductAvgOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? product_id = _undefined,
    Object? quantity = _undefined,
    Object? price = _undefined,
  }) =>
      _then(Input$TransactionProductAvgOrderByAggregateInput._({
        ..._instance._$data,
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Enum$SortOrder?),
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (quantity != _undefined) 'quantity': (quantity as Enum$SortOrder?),
        if (price != _undefined) 'price': (price as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$TransactionProductAvgOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionProductAvgOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionProductAvgOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? price,
  }) =>
      _res;
}

class Input$TransactionProductMaxOrderByAggregateInput {
  factory Input$TransactionProductMaxOrderByAggregateInput({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? price,
    Enum$SortOrder? product_name,
  }) =>
      Input$TransactionProductMaxOrderByAggregateInput._({
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (product_id != null) r'product_id': product_id,
        if (quantity != null) r'quantity': quantity,
        if (price != null) r'price': price,
        if (product_name != null) r'product_name': product_name,
      });

  Input$TransactionProductMaxOrderByAggregateInput._(this._$data);

  factory Input$TransactionProductMaxOrderByAggregateInput.fromJson(
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
    return Input$TransactionProductMaxOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_id =>
      (_$data['transaction_id'] as Enum$SortOrder?);
  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get quantity => (_$data['quantity'] as Enum$SortOrder?);
  Enum$SortOrder? get price => (_$data['price'] as Enum$SortOrder?);
  Enum$SortOrder? get product_name =>
      (_$data['product_name'] as Enum$SortOrder?);
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
    return result$data;
  }

  CopyWith$Input$TransactionProductMaxOrderByAggregateInput<
          Input$TransactionProductMaxOrderByAggregateInput>
      get copyWith => CopyWith$Input$TransactionProductMaxOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionProductMaxOrderByAggregateInput) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_id = transaction_id;
    final l$product_id = product_id;
    final l$quantity = quantity;
    final l$price = price;
    final l$product_name = product_name;
    return Object.hashAll([
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('price') ? l$price : const {},
      _$data.containsKey('product_name') ? l$product_name : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionProductMaxOrderByAggregateInput<TRes> {
  factory CopyWith$Input$TransactionProductMaxOrderByAggregateInput(
    Input$TransactionProductMaxOrderByAggregateInput instance,
    TRes Function(Input$TransactionProductMaxOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$TransactionProductMaxOrderByAggregateInput;

  factory CopyWith$Input$TransactionProductMaxOrderByAggregateInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionProductMaxOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? price,
    Enum$SortOrder? product_name,
  });
}

class _CopyWithImpl$Input$TransactionProductMaxOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionProductMaxOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$TransactionProductMaxOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionProductMaxOrderByAggregateInput _instance;

  final TRes Function(Input$TransactionProductMaxOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? product_id = _undefined,
    Object? quantity = _undefined,
    Object? price = _undefined,
    Object? product_name = _undefined,
  }) =>
      _then(Input$TransactionProductMaxOrderByAggregateInput._({
        ..._instance._$data,
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Enum$SortOrder?),
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (quantity != _undefined) 'quantity': (quantity as Enum$SortOrder?),
        if (price != _undefined) 'price': (price as Enum$SortOrder?),
        if (product_name != _undefined)
          'product_name': (product_name as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$TransactionProductMaxOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionProductMaxOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionProductMaxOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? price,
    Enum$SortOrder? product_name,
  }) =>
      _res;
}

class Input$TransactionProductMinOrderByAggregateInput {
  factory Input$TransactionProductMinOrderByAggregateInput({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? price,
    Enum$SortOrder? product_name,
  }) =>
      Input$TransactionProductMinOrderByAggregateInput._({
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (product_id != null) r'product_id': product_id,
        if (quantity != null) r'quantity': quantity,
        if (price != null) r'price': price,
        if (product_name != null) r'product_name': product_name,
      });

  Input$TransactionProductMinOrderByAggregateInput._(this._$data);

  factory Input$TransactionProductMinOrderByAggregateInput.fromJson(
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
    return Input$TransactionProductMinOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_id =>
      (_$data['transaction_id'] as Enum$SortOrder?);
  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get quantity => (_$data['quantity'] as Enum$SortOrder?);
  Enum$SortOrder? get price => (_$data['price'] as Enum$SortOrder?);
  Enum$SortOrder? get product_name =>
      (_$data['product_name'] as Enum$SortOrder?);
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
    return result$data;
  }

  CopyWith$Input$TransactionProductMinOrderByAggregateInput<
          Input$TransactionProductMinOrderByAggregateInput>
      get copyWith => CopyWith$Input$TransactionProductMinOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionProductMinOrderByAggregateInput) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_id = transaction_id;
    final l$product_id = product_id;
    final l$quantity = quantity;
    final l$price = price;
    final l$product_name = product_name;
    return Object.hashAll([
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('price') ? l$price : const {},
      _$data.containsKey('product_name') ? l$product_name : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionProductMinOrderByAggregateInput<TRes> {
  factory CopyWith$Input$TransactionProductMinOrderByAggregateInput(
    Input$TransactionProductMinOrderByAggregateInput instance,
    TRes Function(Input$TransactionProductMinOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$TransactionProductMinOrderByAggregateInput;

  factory CopyWith$Input$TransactionProductMinOrderByAggregateInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionProductMinOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? price,
    Enum$SortOrder? product_name,
  });
}

class _CopyWithImpl$Input$TransactionProductMinOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionProductMinOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$TransactionProductMinOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionProductMinOrderByAggregateInput _instance;

  final TRes Function(Input$TransactionProductMinOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? product_id = _undefined,
    Object? quantity = _undefined,
    Object? price = _undefined,
    Object? product_name = _undefined,
  }) =>
      _then(Input$TransactionProductMinOrderByAggregateInput._({
        ..._instance._$data,
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Enum$SortOrder?),
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (quantity != _undefined) 'quantity': (quantity as Enum$SortOrder?),
        if (price != _undefined) 'price': (price as Enum$SortOrder?),
        if (product_name != _undefined)
          'product_name': (product_name as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$TransactionProductMinOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionProductMinOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionProductMinOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? price,
    Enum$SortOrder? product_name,
  }) =>
      _res;
}

class Input$TransactionProductSumOrderByAggregateInput {
  factory Input$TransactionProductSumOrderByAggregateInput({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? price,
  }) =>
      Input$TransactionProductSumOrderByAggregateInput._({
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (product_id != null) r'product_id': product_id,
        if (quantity != null) r'quantity': quantity,
        if (price != null) r'price': price,
      });

  Input$TransactionProductSumOrderByAggregateInput._(this._$data);

  factory Input$TransactionProductSumOrderByAggregateInput.fromJson(
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
    return Input$TransactionProductSumOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_id =>
      (_$data['transaction_id'] as Enum$SortOrder?);
  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get quantity => (_$data['quantity'] as Enum$SortOrder?);
  Enum$SortOrder? get price => (_$data['price'] as Enum$SortOrder?);
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
    return result$data;
  }

  CopyWith$Input$TransactionProductSumOrderByAggregateInput<
          Input$TransactionProductSumOrderByAggregateInput>
      get copyWith => CopyWith$Input$TransactionProductSumOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionProductSumOrderByAggregateInput) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_id = transaction_id;
    final l$product_id = product_id;
    final l$quantity = quantity;
    final l$price = price;
    return Object.hashAll([
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('price') ? l$price : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionProductSumOrderByAggregateInput<TRes> {
  factory CopyWith$Input$TransactionProductSumOrderByAggregateInput(
    Input$TransactionProductSumOrderByAggregateInput instance,
    TRes Function(Input$TransactionProductSumOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$TransactionProductSumOrderByAggregateInput;

  factory CopyWith$Input$TransactionProductSumOrderByAggregateInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionProductSumOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? price,
  });
}

class _CopyWithImpl$Input$TransactionProductSumOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionProductSumOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$TransactionProductSumOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionProductSumOrderByAggregateInput _instance;

  final TRes Function(Input$TransactionProductSumOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? product_id = _undefined,
    Object? quantity = _undefined,
    Object? price = _undefined,
  }) =>
      _then(Input$TransactionProductSumOrderByAggregateInput._({
        ..._instance._$data,
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Enum$SortOrder?),
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (quantity != _undefined) 'quantity': (quantity as Enum$SortOrder?),
        if (price != _undefined) 'price': (price as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$TransactionProductSumOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionProductSumOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionProductSumOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? price,
  }) =>
      _res;
}

class Input$TransactionProductScalarWhereWithAggregatesInput {
  factory Input$TransactionProductScalarWhereWithAggregatesInput({
    List<Input$TransactionProductScalarWhereWithAggregatesInput>? AND,
    List<Input$TransactionProductScalarWhereWithAggregatesInput>? OR,
    List<Input$TransactionProductScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? transaction_id,
    Input$IntWithAggregatesFilter? product_id,
    Input$IntWithAggregatesFilter? quantity,
    Input$FloatWithAggregatesFilter? price,
    Input$StringWithAggregatesFilter? product_name,
  }) =>
      Input$TransactionProductScalarWhereWithAggregatesInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (product_id != null) r'product_id': product_id,
        if (quantity != null) r'quantity': quantity,
        if (price != null) r'price': price,
        if (product_name != null) r'product_name': product_name,
      });

  Input$TransactionProductScalarWhereWithAggregatesInput._(this._$data);

  factory Input$TransactionProductScalarWhereWithAggregatesInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionProductScalarWhereWithAggregatesInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionProductScalarWhereWithAggregatesInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionProductScalarWhereWithAggregatesInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : Input$IntWithAggregatesFilter.fromJson(
              (l$transaction_id as Map<String, dynamic>));
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : Input$IntWithAggregatesFilter.fromJson(
              (l$product_id as Map<String, dynamic>));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : Input$IntWithAggregatesFilter.fromJson(
              (l$quantity as Map<String, dynamic>));
    }
    if (data.containsKey('price')) {
      final l$price = data['price'];
      result$data['price'] = l$price == null
          ? null
          : Input$FloatWithAggregatesFilter.fromJson(
              (l$price as Map<String, dynamic>));
    }
    if (data.containsKey('product_name')) {
      final l$product_name = data['product_name'];
      result$data['product_name'] = l$product_name == null
          ? null
          : Input$StringWithAggregatesFilter.fromJson(
              (l$product_name as Map<String, dynamic>));
    }
    return Input$TransactionProductScalarWhereWithAggregatesInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TransactionProductScalarWhereWithAggregatesInput>? get AND =>
      (_$data['AND']
          as List<Input$TransactionProductScalarWhereWithAggregatesInput>?);
  List<Input$TransactionProductScalarWhereWithAggregatesInput>? get OR =>
      (_$data['OR']
          as List<Input$TransactionProductScalarWhereWithAggregatesInput>?);
  List<Input$TransactionProductScalarWhereWithAggregatesInput>? get NOT =>
      (_$data['NOT']
          as List<Input$TransactionProductScalarWhereWithAggregatesInput>?);
  Input$IntWithAggregatesFilter? get transaction_id =>
      (_$data['transaction_id'] as Input$IntWithAggregatesFilter?);
  Input$IntWithAggregatesFilter? get product_id =>
      (_$data['product_id'] as Input$IntWithAggregatesFilter?);
  Input$IntWithAggregatesFilter? get quantity =>
      (_$data['quantity'] as Input$IntWithAggregatesFilter?);
  Input$FloatWithAggregatesFilter? get price =>
      (_$data['price'] as Input$FloatWithAggregatesFilter?);
  Input$StringWithAggregatesFilter? get product_name =>
      (_$data['product_name'] as Input$StringWithAggregatesFilter?);
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
    return result$data;
  }

  CopyWith$Input$TransactionProductScalarWhereWithAggregatesInput<
          Input$TransactionProductScalarWhereWithAggregatesInput>
      get copyWith =>
          CopyWith$Input$TransactionProductScalarWhereWithAggregatesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionProductScalarWhereWithAggregatesInput) ||
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
    ]);
  }
}

abstract class CopyWith$Input$TransactionProductScalarWhereWithAggregatesInput<
    TRes> {
  factory CopyWith$Input$TransactionProductScalarWhereWithAggregatesInput(
    Input$TransactionProductScalarWhereWithAggregatesInput instance,
    TRes Function(Input$TransactionProductScalarWhereWithAggregatesInput) then,
  ) = _CopyWithImpl$Input$TransactionProductScalarWhereWithAggregatesInput;

  factory CopyWith$Input$TransactionProductScalarWhereWithAggregatesInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionProductScalarWhereWithAggregatesInput;

  TRes call({
    List<Input$TransactionProductScalarWhereWithAggregatesInput>? AND,
    List<Input$TransactionProductScalarWhereWithAggregatesInput>? OR,
    List<Input$TransactionProductScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? transaction_id,
    Input$IntWithAggregatesFilter? product_id,
    Input$IntWithAggregatesFilter? quantity,
    Input$FloatWithAggregatesFilter? price,
    Input$StringWithAggregatesFilter? product_name,
  });
  TRes AND(
      Iterable<Input$TransactionProductScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionProductScalarWhereWithAggregatesInput<
                      Input$TransactionProductScalarWhereWithAggregatesInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$TransactionProductScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionProductScalarWhereWithAggregatesInput<
                      Input$TransactionProductScalarWhereWithAggregatesInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$TransactionProductScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionProductScalarWhereWithAggregatesInput<
                      Input$TransactionProductScalarWhereWithAggregatesInput>>?)
          _fn);
}

class _CopyWithImpl$Input$TransactionProductScalarWhereWithAggregatesInput<TRes>
    implements
        CopyWith$Input$TransactionProductScalarWhereWithAggregatesInput<TRes> {
  _CopyWithImpl$Input$TransactionProductScalarWhereWithAggregatesInput(
    this._instance,
    this._then,
  );

  final Input$TransactionProductScalarWhereWithAggregatesInput _instance;

  final TRes Function(Input$TransactionProductScalarWhereWithAggregatesInput)
      _then;

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
  }) =>
      _then(Input$TransactionProductScalarWhereWithAggregatesInput._({
        ..._instance._$data,
        if (AND != _undefined)
          'AND': (AND
              as List<Input$TransactionProductScalarWhereWithAggregatesInput>?),
        if (OR != _undefined)
          'OR': (OR
              as List<Input$TransactionProductScalarWhereWithAggregatesInput>?),
        if (NOT != _undefined)
          'NOT': (NOT
              as List<Input$TransactionProductScalarWhereWithAggregatesInput>?),
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Input$IntWithAggregatesFilter?),
        if (product_id != _undefined)
          'product_id': (product_id as Input$IntWithAggregatesFilter?),
        if (quantity != _undefined)
          'quantity': (quantity as Input$IntWithAggregatesFilter?),
        if (price != _undefined)
          'price': (price as Input$FloatWithAggregatesFilter?),
        if (product_name != _undefined)
          'product_name': (product_name as Input$StringWithAggregatesFilter?),
      }));
  TRes AND(
          Iterable<Input$TransactionProductScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionProductScalarWhereWithAggregatesInput<
                          Input$TransactionProductScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND?.map((e) =>
              CopyWith$Input$TransactionProductScalarWhereWithAggregatesInput(
                e,
                (i) => i,
              )))?.toList());
  TRes OR(
          Iterable<Input$TransactionProductScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionProductScalarWhereWithAggregatesInput<
                          Input$TransactionProductScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR?.map((e) =>
              CopyWith$Input$TransactionProductScalarWhereWithAggregatesInput(
                e,
                (i) => i,
              )))?.toList());
  TRes NOT(
          Iterable<Input$TransactionProductScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionProductScalarWhereWithAggregatesInput<
                          Input$TransactionProductScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT?.map((e) =>
              CopyWith$Input$TransactionProductScalarWhereWithAggregatesInput(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Input$TransactionProductScalarWhereWithAggregatesInput<
        TRes>
    implements
        CopyWith$Input$TransactionProductScalarWhereWithAggregatesInput<TRes> {
  _CopyWithStubImpl$Input$TransactionProductScalarWhereWithAggregatesInput(
      this._res);

  TRes _res;

  call({
    List<Input$TransactionProductScalarWhereWithAggregatesInput>? AND,
    List<Input$TransactionProductScalarWhereWithAggregatesInput>? OR,
    List<Input$TransactionProductScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? transaction_id,
    Input$IntWithAggregatesFilter? product_id,
    Input$IntWithAggregatesFilter? quantity,
    Input$FloatWithAggregatesFilter? price,
    Input$StringWithAggregatesFilter? product_name,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
}

class Input$TransactionStatusWhereUniqueInput {
  factory Input$TransactionStatusWhereUniqueInput(
          {int? transaction_status_id}) =>
      Input$TransactionStatusWhereUniqueInput._({
        if (transaction_status_id != null)
          r'transaction_status_id': transaction_status_id,
      });

  Input$TransactionStatusWhereUniqueInput._(this._$data);

  factory Input$TransactionStatusWhereUniqueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_status_id')) {
      final l$transaction_status_id = data['transaction_status_id'];
      result$data['transaction_status_id'] = (l$transaction_status_id as int?);
    }
    return Input$TransactionStatusWhereUniqueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get transaction_status_id => (_$data['transaction_status_id'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_status_id')) {
      final l$transaction_status_id = transaction_status_id;
      result$data['transaction_status_id'] = l$transaction_status_id;
    }
    return result$data;
  }

  CopyWith$Input$TransactionStatusWhereUniqueInput<
          Input$TransactionStatusWhereUniqueInput>
      get copyWith => CopyWith$Input$TransactionStatusWhereUniqueInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionStatusWhereUniqueInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_status_id = transaction_status_id;
    final lOther$transaction_status_id = other.transaction_status_id;
    if (_$data.containsKey('transaction_status_id') !=
        other._$data.containsKey('transaction_status_id')) {
      return false;
    }
    if (l$transaction_status_id != lOther$transaction_status_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_status_id = transaction_status_id;
    return Object.hashAll([
      _$data.containsKey('transaction_status_id')
          ? l$transaction_status_id
          : const {}
    ]);
  }
}

abstract class CopyWith$Input$TransactionStatusWhereUniqueInput<TRes> {
  factory CopyWith$Input$TransactionStatusWhereUniqueInput(
    Input$TransactionStatusWhereUniqueInput instance,
    TRes Function(Input$TransactionStatusWhereUniqueInput) then,
  ) = _CopyWithImpl$Input$TransactionStatusWhereUniqueInput;

  factory CopyWith$Input$TransactionStatusWhereUniqueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionStatusWhereUniqueInput;

  TRes call({int? transaction_status_id});
}

class _CopyWithImpl$Input$TransactionStatusWhereUniqueInput<TRes>
    implements CopyWith$Input$TransactionStatusWhereUniqueInput<TRes> {
  _CopyWithImpl$Input$TransactionStatusWhereUniqueInput(
    this._instance,
    this._then,
  );

  final Input$TransactionStatusWhereUniqueInput _instance;

  final TRes Function(Input$TransactionStatusWhereUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? transaction_status_id = _undefined}) =>
      _then(Input$TransactionStatusWhereUniqueInput._({
        ..._instance._$data,
        if (transaction_status_id != _undefined)
          'transaction_status_id': (transaction_status_id as int?),
      }));
}

class _CopyWithStubImpl$Input$TransactionStatusWhereUniqueInput<TRes>
    implements CopyWith$Input$TransactionStatusWhereUniqueInput<TRes> {
  _CopyWithStubImpl$Input$TransactionStatusWhereUniqueInput(this._res);

  TRes _res;

  call({int? transaction_status_id}) => _res;
}

class Input$TransactionStatusOrderByWithAggregationInput {
  factory Input$TransactionStatusOrderByWithAggregationInput({
    Enum$SortOrder? transaction_status_id,
    Enum$SortOrder? name,
    Enum$SortOrder? description,
    Input$TransactionStatusCountOrderByAggregateInput? $_count,
    Input$TransactionStatusAvgOrderByAggregateInput? $_avg,
    Input$TransactionStatusMaxOrderByAggregateInput? $_max,
    Input$TransactionStatusMinOrderByAggregateInput? $_min,
    Input$TransactionStatusSumOrderByAggregateInput? $_sum,
  }) =>
      Input$TransactionStatusOrderByWithAggregationInput._({
        if (transaction_status_id != null)
          r'transaction_status_id': transaction_status_id,
        if (name != null) r'name': name,
        if (description != null) r'description': description,
        if ($_count != null) r'_count': $_count,
        if ($_avg != null) r'_avg': $_avg,
        if ($_max != null) r'_max': $_max,
        if ($_min != null) r'_min': $_min,
        if ($_sum != null) r'_sum': $_sum,
      });

  Input$TransactionStatusOrderByWithAggregationInput._(this._$data);

  factory Input$TransactionStatusOrderByWithAggregationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_status_id')) {
      final l$transaction_status_id = data['transaction_status_id'];
      result$data['transaction_status_id'] = l$transaction_status_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_status_id as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson$Enum$SortOrder((l$name as String));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : fromJson$Enum$SortOrder((l$description as String));
    }
    if (data.containsKey('_count')) {
      final l$$_count = data['_count'];
      result$data['_count'] = l$$_count == null
          ? null
          : Input$TransactionStatusCountOrderByAggregateInput.fromJson(
              (l$$_count as Map<String, dynamic>));
    }
    if (data.containsKey('_avg')) {
      final l$$_avg = data['_avg'];
      result$data['_avg'] = l$$_avg == null
          ? null
          : Input$TransactionStatusAvgOrderByAggregateInput.fromJson(
              (l$$_avg as Map<String, dynamic>));
    }
    if (data.containsKey('_max')) {
      final l$$_max = data['_max'];
      result$data['_max'] = l$$_max == null
          ? null
          : Input$TransactionStatusMaxOrderByAggregateInput.fromJson(
              (l$$_max as Map<String, dynamic>));
    }
    if (data.containsKey('_min')) {
      final l$$_min = data['_min'];
      result$data['_min'] = l$$_min == null
          ? null
          : Input$TransactionStatusMinOrderByAggregateInput.fromJson(
              (l$$_min as Map<String, dynamic>));
    }
    if (data.containsKey('_sum')) {
      final l$$_sum = data['_sum'];
      result$data['_sum'] = l$$_sum == null
          ? null
          : Input$TransactionStatusSumOrderByAggregateInput.fromJson(
              (l$$_sum as Map<String, dynamic>));
    }
    return Input$TransactionStatusOrderByWithAggregationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_status_id =>
      (_$data['transaction_status_id'] as Enum$SortOrder?);
  Enum$SortOrder? get name => (_$data['name'] as Enum$SortOrder?);
  Enum$SortOrder? get description => (_$data['description'] as Enum$SortOrder?);
  Input$TransactionStatusCountOrderByAggregateInput? get $_count =>
      (_$data['_count'] as Input$TransactionStatusCountOrderByAggregateInput?);
  Input$TransactionStatusAvgOrderByAggregateInput? get $_avg =>
      (_$data['_avg'] as Input$TransactionStatusAvgOrderByAggregateInput?);
  Input$TransactionStatusMaxOrderByAggregateInput? get $_max =>
      (_$data['_max'] as Input$TransactionStatusMaxOrderByAggregateInput?);
  Input$TransactionStatusMinOrderByAggregateInput? get $_min =>
      (_$data['_min'] as Input$TransactionStatusMinOrderByAggregateInput?);
  Input$TransactionStatusSumOrderByAggregateInput? get $_sum =>
      (_$data['_sum'] as Input$TransactionStatusSumOrderByAggregateInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_status_id')) {
      final l$transaction_status_id = transaction_status_id;
      result$data['transaction_status_id'] = l$transaction_status_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_status_id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$SortOrder(l$name);
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] =
          l$description == null ? null : toJson$Enum$SortOrder(l$description);
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

  CopyWith$Input$TransactionStatusOrderByWithAggregationInput<
          Input$TransactionStatusOrderByWithAggregationInput>
      get copyWith =>
          CopyWith$Input$TransactionStatusOrderByWithAggregationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionStatusOrderByWithAggregationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_status_id = transaction_status_id;
    final lOther$transaction_status_id = other.transaction_status_id;
    if (_$data.containsKey('transaction_status_id') !=
        other._$data.containsKey('transaction_status_id')) {
      return false;
    }
    if (l$transaction_status_id != lOther$transaction_status_id) {
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
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
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
    final l$transaction_status_id = transaction_status_id;
    final l$name = name;
    final l$description = description;
    final l$$_count = $_count;
    final l$$_avg = $_avg;
    final l$$_max = $_max;
    final l$$_min = $_min;
    final l$$_sum = $_sum;
    return Object.hashAll([
      _$data.containsKey('transaction_status_id')
          ? l$transaction_status_id
          : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('_count') ? l$$_count : const {},
      _$data.containsKey('_avg') ? l$$_avg : const {},
      _$data.containsKey('_max') ? l$$_max : const {},
      _$data.containsKey('_min') ? l$$_min : const {},
      _$data.containsKey('_sum') ? l$$_sum : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionStatusOrderByWithAggregationInput<
    TRes> {
  factory CopyWith$Input$TransactionStatusOrderByWithAggregationInput(
    Input$TransactionStatusOrderByWithAggregationInput instance,
    TRes Function(Input$TransactionStatusOrderByWithAggregationInput) then,
  ) = _CopyWithImpl$Input$TransactionStatusOrderByWithAggregationInput;

  factory CopyWith$Input$TransactionStatusOrderByWithAggregationInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionStatusOrderByWithAggregationInput;

  TRes call({
    Enum$SortOrder? transaction_status_id,
    Enum$SortOrder? name,
    Enum$SortOrder? description,
    Input$TransactionStatusCountOrderByAggregateInput? $_count,
    Input$TransactionStatusAvgOrderByAggregateInput? $_avg,
    Input$TransactionStatusMaxOrderByAggregateInput? $_max,
    Input$TransactionStatusMinOrderByAggregateInput? $_min,
    Input$TransactionStatusSumOrderByAggregateInput? $_sum,
  });
  CopyWith$Input$TransactionStatusCountOrderByAggregateInput<TRes> get $_count;
  CopyWith$Input$TransactionStatusAvgOrderByAggregateInput<TRes> get $_avg;
  CopyWith$Input$TransactionStatusMaxOrderByAggregateInput<TRes> get $_max;
  CopyWith$Input$TransactionStatusMinOrderByAggregateInput<TRes> get $_min;
  CopyWith$Input$TransactionStatusSumOrderByAggregateInput<TRes> get $_sum;
}

class _CopyWithImpl$Input$TransactionStatusOrderByWithAggregationInput<TRes>
    implements
        CopyWith$Input$TransactionStatusOrderByWithAggregationInput<TRes> {
  _CopyWithImpl$Input$TransactionStatusOrderByWithAggregationInput(
    this._instance,
    this._then,
  );

  final Input$TransactionStatusOrderByWithAggregationInput _instance;

  final TRes Function(Input$TransactionStatusOrderByWithAggregationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_status_id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? $_count = _undefined,
    Object? $_avg = _undefined,
    Object? $_max = _undefined,
    Object? $_min = _undefined,
    Object? $_sum = _undefined,
  }) =>
      _then(Input$TransactionStatusOrderByWithAggregationInput._({
        ..._instance._$data,
        if (transaction_status_id != _undefined)
          'transaction_status_id': (transaction_status_id as Enum$SortOrder?),
        if (name != _undefined) 'name': (name as Enum$SortOrder?),
        if (description != _undefined)
          'description': (description as Enum$SortOrder?),
        if ($_count != _undefined)
          '_count':
              ($_count as Input$TransactionStatusCountOrderByAggregateInput?),
        if ($_avg != _undefined)
          '_avg': ($_avg as Input$TransactionStatusAvgOrderByAggregateInput?),
        if ($_max != _undefined)
          '_max': ($_max as Input$TransactionStatusMaxOrderByAggregateInput?),
        if ($_min != _undefined)
          '_min': ($_min as Input$TransactionStatusMinOrderByAggregateInput?),
        if ($_sum != _undefined)
          '_sum': ($_sum as Input$TransactionStatusSumOrderByAggregateInput?),
      }));
  CopyWith$Input$TransactionStatusCountOrderByAggregateInput<TRes> get $_count {
    final local$$_count = _instance.$_count;
    return local$$_count == null
        ? CopyWith$Input$TransactionStatusCountOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionStatusCountOrderByAggregateInput(
            local$$_count, (e) => call($_count: e));
  }

  CopyWith$Input$TransactionStatusAvgOrderByAggregateInput<TRes> get $_avg {
    final local$$_avg = _instance.$_avg;
    return local$$_avg == null
        ? CopyWith$Input$TransactionStatusAvgOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionStatusAvgOrderByAggregateInput(
            local$$_avg, (e) => call($_avg: e));
  }

  CopyWith$Input$TransactionStatusMaxOrderByAggregateInput<TRes> get $_max {
    final local$$_max = _instance.$_max;
    return local$$_max == null
        ? CopyWith$Input$TransactionStatusMaxOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionStatusMaxOrderByAggregateInput(
            local$$_max, (e) => call($_max: e));
  }

  CopyWith$Input$TransactionStatusMinOrderByAggregateInput<TRes> get $_min {
    final local$$_min = _instance.$_min;
    return local$$_min == null
        ? CopyWith$Input$TransactionStatusMinOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionStatusMinOrderByAggregateInput(
            local$$_min, (e) => call($_min: e));
  }

  CopyWith$Input$TransactionStatusSumOrderByAggregateInput<TRes> get $_sum {
    final local$$_sum = _instance.$_sum;
    return local$$_sum == null
        ? CopyWith$Input$TransactionStatusSumOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionStatusSumOrderByAggregateInput(
            local$$_sum, (e) => call($_sum: e));
  }
}

class _CopyWithStubImpl$Input$TransactionStatusOrderByWithAggregationInput<TRes>
    implements
        CopyWith$Input$TransactionStatusOrderByWithAggregationInput<TRes> {
  _CopyWithStubImpl$Input$TransactionStatusOrderByWithAggregationInput(
      this._res);

  TRes _res;

  call({
    Enum$SortOrder? transaction_status_id,
    Enum$SortOrder? name,
    Enum$SortOrder? description,
    Input$TransactionStatusCountOrderByAggregateInput? $_count,
    Input$TransactionStatusAvgOrderByAggregateInput? $_avg,
    Input$TransactionStatusMaxOrderByAggregateInput? $_max,
    Input$TransactionStatusMinOrderByAggregateInput? $_min,
    Input$TransactionStatusSumOrderByAggregateInput? $_sum,
  }) =>
      _res;
  CopyWith$Input$TransactionStatusCountOrderByAggregateInput<TRes>
      get $_count =>
          CopyWith$Input$TransactionStatusCountOrderByAggregateInput.stub(_res);
  CopyWith$Input$TransactionStatusAvgOrderByAggregateInput<TRes> get $_avg =>
      CopyWith$Input$TransactionStatusAvgOrderByAggregateInput.stub(_res);
  CopyWith$Input$TransactionStatusMaxOrderByAggregateInput<TRes> get $_max =>
      CopyWith$Input$TransactionStatusMaxOrderByAggregateInput.stub(_res);
  CopyWith$Input$TransactionStatusMinOrderByAggregateInput<TRes> get $_min =>
      CopyWith$Input$TransactionStatusMinOrderByAggregateInput.stub(_res);
  CopyWith$Input$TransactionStatusSumOrderByAggregateInput<TRes> get $_sum =>
      CopyWith$Input$TransactionStatusSumOrderByAggregateInput.stub(_res);
}

class Input$TransactionStatusCountOrderByAggregateInput {
  factory Input$TransactionStatusCountOrderByAggregateInput({
    Enum$SortOrder? transaction_status_id,
    Enum$SortOrder? name,
    Enum$SortOrder? description,
  }) =>
      Input$TransactionStatusCountOrderByAggregateInput._({
        if (transaction_status_id != null)
          r'transaction_status_id': transaction_status_id,
        if (name != null) r'name': name,
        if (description != null) r'description': description,
      });

  Input$TransactionStatusCountOrderByAggregateInput._(this._$data);

  factory Input$TransactionStatusCountOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_status_id')) {
      final l$transaction_status_id = data['transaction_status_id'];
      result$data['transaction_status_id'] = l$transaction_status_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_status_id as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson$Enum$SortOrder((l$name as String));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : fromJson$Enum$SortOrder((l$description as String));
    }
    return Input$TransactionStatusCountOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_status_id =>
      (_$data['transaction_status_id'] as Enum$SortOrder?);
  Enum$SortOrder? get name => (_$data['name'] as Enum$SortOrder?);
  Enum$SortOrder? get description => (_$data['description'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_status_id')) {
      final l$transaction_status_id = transaction_status_id;
      result$data['transaction_status_id'] = l$transaction_status_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_status_id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$SortOrder(l$name);
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] =
          l$description == null ? null : toJson$Enum$SortOrder(l$description);
    }
    return result$data;
  }

  CopyWith$Input$TransactionStatusCountOrderByAggregateInput<
          Input$TransactionStatusCountOrderByAggregateInput>
      get copyWith =>
          CopyWith$Input$TransactionStatusCountOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionStatusCountOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_status_id = transaction_status_id;
    final lOther$transaction_status_id = other.transaction_status_id;
    if (_$data.containsKey('transaction_status_id') !=
        other._$data.containsKey('transaction_status_id')) {
      return false;
    }
    if (l$transaction_status_id != lOther$transaction_status_id) {
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
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_status_id = transaction_status_id;
    final l$name = name;
    final l$description = description;
    return Object.hashAll([
      _$data.containsKey('transaction_status_id')
          ? l$transaction_status_id
          : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('description') ? l$description : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionStatusCountOrderByAggregateInput<
    TRes> {
  factory CopyWith$Input$TransactionStatusCountOrderByAggregateInput(
    Input$TransactionStatusCountOrderByAggregateInput instance,
    TRes Function(Input$TransactionStatusCountOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$TransactionStatusCountOrderByAggregateInput;

  factory CopyWith$Input$TransactionStatusCountOrderByAggregateInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionStatusCountOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? transaction_status_id,
    Enum$SortOrder? name,
    Enum$SortOrder? description,
  });
}

class _CopyWithImpl$Input$TransactionStatusCountOrderByAggregateInput<TRes>
    implements
        CopyWith$Input$TransactionStatusCountOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$TransactionStatusCountOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionStatusCountOrderByAggregateInput _instance;

  final TRes Function(Input$TransactionStatusCountOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_status_id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
  }) =>
      _then(Input$TransactionStatusCountOrderByAggregateInput._({
        ..._instance._$data,
        if (transaction_status_id != _undefined)
          'transaction_status_id': (transaction_status_id as Enum$SortOrder?),
        if (name != _undefined) 'name': (name as Enum$SortOrder?),
        if (description != _undefined)
          'description': (description as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$TransactionStatusCountOrderByAggregateInput<TRes>
    implements
        CopyWith$Input$TransactionStatusCountOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionStatusCountOrderByAggregateInput(
      this._res);

  TRes _res;

  call({
    Enum$SortOrder? transaction_status_id,
    Enum$SortOrder? name,
    Enum$SortOrder? description,
  }) =>
      _res;
}

class Input$TransactionStatusAvgOrderByAggregateInput {
  factory Input$TransactionStatusAvgOrderByAggregateInput(
          {Enum$SortOrder? transaction_status_id}) =>
      Input$TransactionStatusAvgOrderByAggregateInput._({
        if (transaction_status_id != null)
          r'transaction_status_id': transaction_status_id,
      });

  Input$TransactionStatusAvgOrderByAggregateInput._(this._$data);

  factory Input$TransactionStatusAvgOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_status_id')) {
      final l$transaction_status_id = data['transaction_status_id'];
      result$data['transaction_status_id'] = l$transaction_status_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_status_id as String));
    }
    return Input$TransactionStatusAvgOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_status_id =>
      (_$data['transaction_status_id'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_status_id')) {
      final l$transaction_status_id = transaction_status_id;
      result$data['transaction_status_id'] = l$transaction_status_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_status_id);
    }
    return result$data;
  }

  CopyWith$Input$TransactionStatusAvgOrderByAggregateInput<
          Input$TransactionStatusAvgOrderByAggregateInput>
      get copyWith => CopyWith$Input$TransactionStatusAvgOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionStatusAvgOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_status_id = transaction_status_id;
    final lOther$transaction_status_id = other.transaction_status_id;
    if (_$data.containsKey('transaction_status_id') !=
        other._$data.containsKey('transaction_status_id')) {
      return false;
    }
    if (l$transaction_status_id != lOther$transaction_status_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_status_id = transaction_status_id;
    return Object.hashAll([
      _$data.containsKey('transaction_status_id')
          ? l$transaction_status_id
          : const {}
    ]);
  }
}

abstract class CopyWith$Input$TransactionStatusAvgOrderByAggregateInput<TRes> {
  factory CopyWith$Input$TransactionStatusAvgOrderByAggregateInput(
    Input$TransactionStatusAvgOrderByAggregateInput instance,
    TRes Function(Input$TransactionStatusAvgOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$TransactionStatusAvgOrderByAggregateInput;

  factory CopyWith$Input$TransactionStatusAvgOrderByAggregateInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionStatusAvgOrderByAggregateInput;

  TRes call({Enum$SortOrder? transaction_status_id});
}

class _CopyWithImpl$Input$TransactionStatusAvgOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionStatusAvgOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$TransactionStatusAvgOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionStatusAvgOrderByAggregateInput _instance;

  final TRes Function(Input$TransactionStatusAvgOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? transaction_status_id = _undefined}) =>
      _then(Input$TransactionStatusAvgOrderByAggregateInput._({
        ..._instance._$data,
        if (transaction_status_id != _undefined)
          'transaction_status_id': (transaction_status_id as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$TransactionStatusAvgOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionStatusAvgOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionStatusAvgOrderByAggregateInput(this._res);

  TRes _res;

  call({Enum$SortOrder? transaction_status_id}) => _res;
}

class Input$TransactionStatusMaxOrderByAggregateInput {
  factory Input$TransactionStatusMaxOrderByAggregateInput({
    Enum$SortOrder? transaction_status_id,
    Enum$SortOrder? name,
    Enum$SortOrder? description,
  }) =>
      Input$TransactionStatusMaxOrderByAggregateInput._({
        if (transaction_status_id != null)
          r'transaction_status_id': transaction_status_id,
        if (name != null) r'name': name,
        if (description != null) r'description': description,
      });

  Input$TransactionStatusMaxOrderByAggregateInput._(this._$data);

  factory Input$TransactionStatusMaxOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_status_id')) {
      final l$transaction_status_id = data['transaction_status_id'];
      result$data['transaction_status_id'] = l$transaction_status_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_status_id as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson$Enum$SortOrder((l$name as String));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : fromJson$Enum$SortOrder((l$description as String));
    }
    return Input$TransactionStatusMaxOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_status_id =>
      (_$data['transaction_status_id'] as Enum$SortOrder?);
  Enum$SortOrder? get name => (_$data['name'] as Enum$SortOrder?);
  Enum$SortOrder? get description => (_$data['description'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_status_id')) {
      final l$transaction_status_id = transaction_status_id;
      result$data['transaction_status_id'] = l$transaction_status_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_status_id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$SortOrder(l$name);
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] =
          l$description == null ? null : toJson$Enum$SortOrder(l$description);
    }
    return result$data;
  }

  CopyWith$Input$TransactionStatusMaxOrderByAggregateInput<
          Input$TransactionStatusMaxOrderByAggregateInput>
      get copyWith => CopyWith$Input$TransactionStatusMaxOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionStatusMaxOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_status_id = transaction_status_id;
    final lOther$transaction_status_id = other.transaction_status_id;
    if (_$data.containsKey('transaction_status_id') !=
        other._$data.containsKey('transaction_status_id')) {
      return false;
    }
    if (l$transaction_status_id != lOther$transaction_status_id) {
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
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_status_id = transaction_status_id;
    final l$name = name;
    final l$description = description;
    return Object.hashAll([
      _$data.containsKey('transaction_status_id')
          ? l$transaction_status_id
          : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('description') ? l$description : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionStatusMaxOrderByAggregateInput<TRes> {
  factory CopyWith$Input$TransactionStatusMaxOrderByAggregateInput(
    Input$TransactionStatusMaxOrderByAggregateInput instance,
    TRes Function(Input$TransactionStatusMaxOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$TransactionStatusMaxOrderByAggregateInput;

  factory CopyWith$Input$TransactionStatusMaxOrderByAggregateInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionStatusMaxOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? transaction_status_id,
    Enum$SortOrder? name,
    Enum$SortOrder? description,
  });
}

class _CopyWithImpl$Input$TransactionStatusMaxOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionStatusMaxOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$TransactionStatusMaxOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionStatusMaxOrderByAggregateInput _instance;

  final TRes Function(Input$TransactionStatusMaxOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_status_id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
  }) =>
      _then(Input$TransactionStatusMaxOrderByAggregateInput._({
        ..._instance._$data,
        if (transaction_status_id != _undefined)
          'transaction_status_id': (transaction_status_id as Enum$SortOrder?),
        if (name != _undefined) 'name': (name as Enum$SortOrder?),
        if (description != _undefined)
          'description': (description as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$TransactionStatusMaxOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionStatusMaxOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionStatusMaxOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? transaction_status_id,
    Enum$SortOrder? name,
    Enum$SortOrder? description,
  }) =>
      _res;
}

class Input$TransactionStatusMinOrderByAggregateInput {
  factory Input$TransactionStatusMinOrderByAggregateInput({
    Enum$SortOrder? transaction_status_id,
    Enum$SortOrder? name,
    Enum$SortOrder? description,
  }) =>
      Input$TransactionStatusMinOrderByAggregateInput._({
        if (transaction_status_id != null)
          r'transaction_status_id': transaction_status_id,
        if (name != null) r'name': name,
        if (description != null) r'description': description,
      });

  Input$TransactionStatusMinOrderByAggregateInput._(this._$data);

  factory Input$TransactionStatusMinOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_status_id')) {
      final l$transaction_status_id = data['transaction_status_id'];
      result$data['transaction_status_id'] = l$transaction_status_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_status_id as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson$Enum$SortOrder((l$name as String));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : fromJson$Enum$SortOrder((l$description as String));
    }
    return Input$TransactionStatusMinOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_status_id =>
      (_$data['transaction_status_id'] as Enum$SortOrder?);
  Enum$SortOrder? get name => (_$data['name'] as Enum$SortOrder?);
  Enum$SortOrder? get description => (_$data['description'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_status_id')) {
      final l$transaction_status_id = transaction_status_id;
      result$data['transaction_status_id'] = l$transaction_status_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_status_id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$SortOrder(l$name);
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] =
          l$description == null ? null : toJson$Enum$SortOrder(l$description);
    }
    return result$data;
  }

  CopyWith$Input$TransactionStatusMinOrderByAggregateInput<
          Input$TransactionStatusMinOrderByAggregateInput>
      get copyWith => CopyWith$Input$TransactionStatusMinOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionStatusMinOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_status_id = transaction_status_id;
    final lOther$transaction_status_id = other.transaction_status_id;
    if (_$data.containsKey('transaction_status_id') !=
        other._$data.containsKey('transaction_status_id')) {
      return false;
    }
    if (l$transaction_status_id != lOther$transaction_status_id) {
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
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_status_id = transaction_status_id;
    final l$name = name;
    final l$description = description;
    return Object.hashAll([
      _$data.containsKey('transaction_status_id')
          ? l$transaction_status_id
          : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('description') ? l$description : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionStatusMinOrderByAggregateInput<TRes> {
  factory CopyWith$Input$TransactionStatusMinOrderByAggregateInput(
    Input$TransactionStatusMinOrderByAggregateInput instance,
    TRes Function(Input$TransactionStatusMinOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$TransactionStatusMinOrderByAggregateInput;

  factory CopyWith$Input$TransactionStatusMinOrderByAggregateInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionStatusMinOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? transaction_status_id,
    Enum$SortOrder? name,
    Enum$SortOrder? description,
  });
}

class _CopyWithImpl$Input$TransactionStatusMinOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionStatusMinOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$TransactionStatusMinOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionStatusMinOrderByAggregateInput _instance;

  final TRes Function(Input$TransactionStatusMinOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_status_id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
  }) =>
      _then(Input$TransactionStatusMinOrderByAggregateInput._({
        ..._instance._$data,
        if (transaction_status_id != _undefined)
          'transaction_status_id': (transaction_status_id as Enum$SortOrder?),
        if (name != _undefined) 'name': (name as Enum$SortOrder?),
        if (description != _undefined)
          'description': (description as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$TransactionStatusMinOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionStatusMinOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionStatusMinOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? transaction_status_id,
    Enum$SortOrder? name,
    Enum$SortOrder? description,
  }) =>
      _res;
}

class Input$TransactionStatusSumOrderByAggregateInput {
  factory Input$TransactionStatusSumOrderByAggregateInput(
          {Enum$SortOrder? transaction_status_id}) =>
      Input$TransactionStatusSumOrderByAggregateInput._({
        if (transaction_status_id != null)
          r'transaction_status_id': transaction_status_id,
      });

  Input$TransactionStatusSumOrderByAggregateInput._(this._$data);

  factory Input$TransactionStatusSumOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_status_id')) {
      final l$transaction_status_id = data['transaction_status_id'];
      result$data['transaction_status_id'] = l$transaction_status_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_status_id as String));
    }
    return Input$TransactionStatusSumOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_status_id =>
      (_$data['transaction_status_id'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_status_id')) {
      final l$transaction_status_id = transaction_status_id;
      result$data['transaction_status_id'] = l$transaction_status_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_status_id);
    }
    return result$data;
  }

  CopyWith$Input$TransactionStatusSumOrderByAggregateInput<
          Input$TransactionStatusSumOrderByAggregateInput>
      get copyWith => CopyWith$Input$TransactionStatusSumOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionStatusSumOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_status_id = transaction_status_id;
    final lOther$transaction_status_id = other.transaction_status_id;
    if (_$data.containsKey('transaction_status_id') !=
        other._$data.containsKey('transaction_status_id')) {
      return false;
    }
    if (l$transaction_status_id != lOther$transaction_status_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_status_id = transaction_status_id;
    return Object.hashAll([
      _$data.containsKey('transaction_status_id')
          ? l$transaction_status_id
          : const {}
    ]);
  }
}

abstract class CopyWith$Input$TransactionStatusSumOrderByAggregateInput<TRes> {
  factory CopyWith$Input$TransactionStatusSumOrderByAggregateInput(
    Input$TransactionStatusSumOrderByAggregateInput instance,
    TRes Function(Input$TransactionStatusSumOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$TransactionStatusSumOrderByAggregateInput;

  factory CopyWith$Input$TransactionStatusSumOrderByAggregateInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionStatusSumOrderByAggregateInput;

  TRes call({Enum$SortOrder? transaction_status_id});
}

class _CopyWithImpl$Input$TransactionStatusSumOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionStatusSumOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$TransactionStatusSumOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionStatusSumOrderByAggregateInput _instance;

  final TRes Function(Input$TransactionStatusSumOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? transaction_status_id = _undefined}) =>
      _then(Input$TransactionStatusSumOrderByAggregateInput._({
        ..._instance._$data,
        if (transaction_status_id != _undefined)
          'transaction_status_id': (transaction_status_id as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$TransactionStatusSumOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionStatusSumOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionStatusSumOrderByAggregateInput(this._res);

  TRes _res;

  call({Enum$SortOrder? transaction_status_id}) => _res;
}

class Input$TransactionStatusScalarWhereWithAggregatesInput {
  factory Input$TransactionStatusScalarWhereWithAggregatesInput({
    List<Input$TransactionStatusScalarWhereWithAggregatesInput>? AND,
    List<Input$TransactionStatusScalarWhereWithAggregatesInput>? OR,
    List<Input$TransactionStatusScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? transaction_status_id,
    Input$StringWithAggregatesFilter? name,
    Input$StringWithAggregatesFilter? description,
  }) =>
      Input$TransactionStatusScalarWhereWithAggregatesInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (transaction_status_id != null)
          r'transaction_status_id': transaction_status_id,
        if (name != null) r'name': name,
        if (description != null) r'description': description,
      });

  Input$TransactionStatusScalarWhereWithAggregatesInput._(this._$data);

  factory Input$TransactionStatusScalarWhereWithAggregatesInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionStatusScalarWhereWithAggregatesInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionStatusScalarWhereWithAggregatesInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionStatusScalarWhereWithAggregatesInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('transaction_status_id')) {
      final l$transaction_status_id = data['transaction_status_id'];
      result$data['transaction_status_id'] = l$transaction_status_id == null
          ? null
          : Input$IntWithAggregatesFilter.fromJson(
              (l$transaction_status_id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringWithAggregatesFilter.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : Input$StringWithAggregatesFilter.fromJson(
              (l$description as Map<String, dynamic>));
    }
    return Input$TransactionStatusScalarWhereWithAggregatesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TransactionStatusScalarWhereWithAggregatesInput>? get AND =>
      (_$data['AND']
          as List<Input$TransactionStatusScalarWhereWithAggregatesInput>?);
  List<Input$TransactionStatusScalarWhereWithAggregatesInput>? get OR =>
      (_$data['OR']
          as List<Input$TransactionStatusScalarWhereWithAggregatesInput>?);
  List<Input$TransactionStatusScalarWhereWithAggregatesInput>? get NOT =>
      (_$data['NOT']
          as List<Input$TransactionStatusScalarWhereWithAggregatesInput>?);
  Input$IntWithAggregatesFilter? get transaction_status_id =>
      (_$data['transaction_status_id'] as Input$IntWithAggregatesFilter?);
  Input$StringWithAggregatesFilter? get name =>
      (_$data['name'] as Input$StringWithAggregatesFilter?);
  Input$StringWithAggregatesFilter? get description =>
      (_$data['description'] as Input$StringWithAggregatesFilter?);
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
    if (_$data.containsKey('transaction_status_id')) {
      final l$transaction_status_id = transaction_status_id;
      result$data['transaction_status_id'] = l$transaction_status_id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionStatusScalarWhereWithAggregatesInput<
          Input$TransactionStatusScalarWhereWithAggregatesInput>
      get copyWith =>
          CopyWith$Input$TransactionStatusScalarWhereWithAggregatesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionStatusScalarWhereWithAggregatesInput) ||
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
    final l$transaction_status_id = transaction_status_id;
    final lOther$transaction_status_id = other.transaction_status_id;
    if (_$data.containsKey('transaction_status_id') !=
        other._$data.containsKey('transaction_status_id')) {
      return false;
    }
    if (l$transaction_status_id != lOther$transaction_status_id) {
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
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$AND = AND;
    final l$OR = OR;
    final l$NOT = NOT;
    final l$transaction_status_id = transaction_status_id;
    final l$name = name;
    final l$description = description;
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
      _$data.containsKey('transaction_status_id')
          ? l$transaction_status_id
          : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('description') ? l$description : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionStatusScalarWhereWithAggregatesInput<
    TRes> {
  factory CopyWith$Input$TransactionStatusScalarWhereWithAggregatesInput(
    Input$TransactionStatusScalarWhereWithAggregatesInput instance,
    TRes Function(Input$TransactionStatusScalarWhereWithAggregatesInput) then,
  ) = _CopyWithImpl$Input$TransactionStatusScalarWhereWithAggregatesInput;

  factory CopyWith$Input$TransactionStatusScalarWhereWithAggregatesInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionStatusScalarWhereWithAggregatesInput;

  TRes call({
    List<Input$TransactionStatusScalarWhereWithAggregatesInput>? AND,
    List<Input$TransactionStatusScalarWhereWithAggregatesInput>? OR,
    List<Input$TransactionStatusScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? transaction_status_id,
    Input$StringWithAggregatesFilter? name,
    Input$StringWithAggregatesFilter? description,
  });
  TRes AND(
      Iterable<Input$TransactionStatusScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionStatusScalarWhereWithAggregatesInput<
                      Input$TransactionStatusScalarWhereWithAggregatesInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$TransactionStatusScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionStatusScalarWhereWithAggregatesInput<
                      Input$TransactionStatusScalarWhereWithAggregatesInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$TransactionStatusScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionStatusScalarWhereWithAggregatesInput<
                      Input$TransactionStatusScalarWhereWithAggregatesInput>>?)
          _fn);
}

class _CopyWithImpl$Input$TransactionStatusScalarWhereWithAggregatesInput<TRes>
    implements
        CopyWith$Input$TransactionStatusScalarWhereWithAggregatesInput<TRes> {
  _CopyWithImpl$Input$TransactionStatusScalarWhereWithAggregatesInput(
    this._instance,
    this._then,
  );

  final Input$TransactionStatusScalarWhereWithAggregatesInput _instance;

  final TRes Function(Input$TransactionStatusScalarWhereWithAggregatesInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? transaction_status_id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
  }) =>
      _then(Input$TransactionStatusScalarWhereWithAggregatesInput._({
        ..._instance._$data,
        if (AND != _undefined)
          'AND': (AND
              as List<Input$TransactionStatusScalarWhereWithAggregatesInput>?),
        if (OR != _undefined)
          'OR': (OR
              as List<Input$TransactionStatusScalarWhereWithAggregatesInput>?),
        if (NOT != _undefined)
          'NOT': (NOT
              as List<Input$TransactionStatusScalarWhereWithAggregatesInput>?),
        if (transaction_status_id != _undefined)
          'transaction_status_id':
              (transaction_status_id as Input$IntWithAggregatesFilter?),
        if (name != _undefined)
          'name': (name as Input$StringWithAggregatesFilter?),
        if (description != _undefined)
          'description': (description as Input$StringWithAggregatesFilter?),
      }));
  TRes AND(
          Iterable<Input$TransactionStatusScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionStatusScalarWhereWithAggregatesInput<
                          Input$TransactionStatusScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND?.map((e) =>
              CopyWith$Input$TransactionStatusScalarWhereWithAggregatesInput(
                e,
                (i) => i,
              )))?.toList());
  TRes OR(
          Iterable<Input$TransactionStatusScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionStatusScalarWhereWithAggregatesInput<
                          Input$TransactionStatusScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR?.map((e) =>
              CopyWith$Input$TransactionStatusScalarWhereWithAggregatesInput(
                e,
                (i) => i,
              )))?.toList());
  TRes NOT(
          Iterable<Input$TransactionStatusScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionStatusScalarWhereWithAggregatesInput<
                          Input$TransactionStatusScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT?.map((e) =>
              CopyWith$Input$TransactionStatusScalarWhereWithAggregatesInput(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Input$TransactionStatusScalarWhereWithAggregatesInput<
        TRes>
    implements
        CopyWith$Input$TransactionStatusScalarWhereWithAggregatesInput<TRes> {
  _CopyWithStubImpl$Input$TransactionStatusScalarWhereWithAggregatesInput(
      this._res);

  TRes _res;

  call({
    List<Input$TransactionStatusScalarWhereWithAggregatesInput>? AND,
    List<Input$TransactionStatusScalarWhereWithAggregatesInput>? OR,
    List<Input$TransactionStatusScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? transaction_status_id,
    Input$StringWithAggregatesFilter? name,
    Input$StringWithAggregatesFilter? description,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
}

class Input$TransactionTypesWhereUniqueInput {
  factory Input$TransactionTypesWhereUniqueInput({int? transaction_type_id}) =>
      Input$TransactionTypesWhereUniqueInput._({
        if (transaction_type_id != null)
          r'transaction_type_id': transaction_type_id,
      });

  Input$TransactionTypesWhereUniqueInput._(this._$data);

  factory Input$TransactionTypesWhereUniqueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = data['transaction_type_id'];
      result$data['transaction_type_id'] = (l$transaction_type_id as int?);
    }
    return Input$TransactionTypesWhereUniqueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get transaction_type_id => (_$data['transaction_type_id'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = transaction_type_id;
      result$data['transaction_type_id'] = l$transaction_type_id;
    }
    return result$data;
  }

  CopyWith$Input$TransactionTypesWhereUniqueInput<
          Input$TransactionTypesWhereUniqueInput>
      get copyWith => CopyWith$Input$TransactionTypesWhereUniqueInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionTypesWhereUniqueInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_type_id = transaction_type_id;
    final lOther$transaction_type_id = other.transaction_type_id;
    if (_$data.containsKey('transaction_type_id') !=
        other._$data.containsKey('transaction_type_id')) {
      return false;
    }
    if (l$transaction_type_id != lOther$transaction_type_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_type_id = transaction_type_id;
    return Object.hashAll([
      _$data.containsKey('transaction_type_id')
          ? l$transaction_type_id
          : const {}
    ]);
  }
}

abstract class CopyWith$Input$TransactionTypesWhereUniqueInput<TRes> {
  factory CopyWith$Input$TransactionTypesWhereUniqueInput(
    Input$TransactionTypesWhereUniqueInput instance,
    TRes Function(Input$TransactionTypesWhereUniqueInput) then,
  ) = _CopyWithImpl$Input$TransactionTypesWhereUniqueInput;

  factory CopyWith$Input$TransactionTypesWhereUniqueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionTypesWhereUniqueInput;

  TRes call({int? transaction_type_id});
}

class _CopyWithImpl$Input$TransactionTypesWhereUniqueInput<TRes>
    implements CopyWith$Input$TransactionTypesWhereUniqueInput<TRes> {
  _CopyWithImpl$Input$TransactionTypesWhereUniqueInput(
    this._instance,
    this._then,
  );

  final Input$TransactionTypesWhereUniqueInput _instance;

  final TRes Function(Input$TransactionTypesWhereUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? transaction_type_id = _undefined}) =>
      _then(Input$TransactionTypesWhereUniqueInput._({
        ..._instance._$data,
        if (transaction_type_id != _undefined)
          'transaction_type_id': (transaction_type_id as int?),
      }));
}

class _CopyWithStubImpl$Input$TransactionTypesWhereUniqueInput<TRes>
    implements CopyWith$Input$TransactionTypesWhereUniqueInput<TRes> {
  _CopyWithStubImpl$Input$TransactionTypesWhereUniqueInput(this._res);

  TRes _res;

  call({int? transaction_type_id}) => _res;
}

class Input$TransactionTypesOrderByWithAggregationInput {
  factory Input$TransactionTypesOrderByWithAggregationInput({
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? type_name,
    Enum$SortOrder? description,
    Input$TransactionTypesCountOrderByAggregateInput? $_count,
    Input$TransactionTypesAvgOrderByAggregateInput? $_avg,
    Input$TransactionTypesMaxOrderByAggregateInput? $_max,
    Input$TransactionTypesMinOrderByAggregateInput? $_min,
    Input$TransactionTypesSumOrderByAggregateInput? $_sum,
  }) =>
      Input$TransactionTypesOrderByWithAggregationInput._({
        if (transaction_type_id != null)
          r'transaction_type_id': transaction_type_id,
        if (type_name != null) r'type_name': type_name,
        if (description != null) r'description': description,
        if ($_count != null) r'_count': $_count,
        if ($_avg != null) r'_avg': $_avg,
        if ($_max != null) r'_max': $_max,
        if ($_min != null) r'_min': $_min,
        if ($_sum != null) r'_sum': $_sum,
      });

  Input$TransactionTypesOrderByWithAggregationInput._(this._$data);

  factory Input$TransactionTypesOrderByWithAggregationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = data['transaction_type_id'];
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_type_id as String));
    }
    if (data.containsKey('type_name')) {
      final l$type_name = data['type_name'];
      result$data['type_name'] = l$type_name == null
          ? null
          : fromJson$Enum$SortOrder((l$type_name as String));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : fromJson$Enum$SortOrder((l$description as String));
    }
    if (data.containsKey('_count')) {
      final l$$_count = data['_count'];
      result$data['_count'] = l$$_count == null
          ? null
          : Input$TransactionTypesCountOrderByAggregateInput.fromJson(
              (l$$_count as Map<String, dynamic>));
    }
    if (data.containsKey('_avg')) {
      final l$$_avg = data['_avg'];
      result$data['_avg'] = l$$_avg == null
          ? null
          : Input$TransactionTypesAvgOrderByAggregateInput.fromJson(
              (l$$_avg as Map<String, dynamic>));
    }
    if (data.containsKey('_max')) {
      final l$$_max = data['_max'];
      result$data['_max'] = l$$_max == null
          ? null
          : Input$TransactionTypesMaxOrderByAggregateInput.fromJson(
              (l$$_max as Map<String, dynamic>));
    }
    if (data.containsKey('_min')) {
      final l$$_min = data['_min'];
      result$data['_min'] = l$$_min == null
          ? null
          : Input$TransactionTypesMinOrderByAggregateInput.fromJson(
              (l$$_min as Map<String, dynamic>));
    }
    if (data.containsKey('_sum')) {
      final l$$_sum = data['_sum'];
      result$data['_sum'] = l$$_sum == null
          ? null
          : Input$TransactionTypesSumOrderByAggregateInput.fromJson(
              (l$$_sum as Map<String, dynamic>));
    }
    return Input$TransactionTypesOrderByWithAggregationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_type_id =>
      (_$data['transaction_type_id'] as Enum$SortOrder?);
  Enum$SortOrder? get type_name => (_$data['type_name'] as Enum$SortOrder?);
  Enum$SortOrder? get description => (_$data['description'] as Enum$SortOrder?);
  Input$TransactionTypesCountOrderByAggregateInput? get $_count =>
      (_$data['_count'] as Input$TransactionTypesCountOrderByAggregateInput?);
  Input$TransactionTypesAvgOrderByAggregateInput? get $_avg =>
      (_$data['_avg'] as Input$TransactionTypesAvgOrderByAggregateInput?);
  Input$TransactionTypesMaxOrderByAggregateInput? get $_max =>
      (_$data['_max'] as Input$TransactionTypesMaxOrderByAggregateInput?);
  Input$TransactionTypesMinOrderByAggregateInput? get $_min =>
      (_$data['_min'] as Input$TransactionTypesMinOrderByAggregateInput?);
  Input$TransactionTypesSumOrderByAggregateInput? get $_sum =>
      (_$data['_sum'] as Input$TransactionTypesSumOrderByAggregateInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = transaction_type_id;
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_type_id);
    }
    if (_$data.containsKey('type_name')) {
      final l$type_name = type_name;
      result$data['type_name'] =
          l$type_name == null ? null : toJson$Enum$SortOrder(l$type_name);
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] =
          l$description == null ? null : toJson$Enum$SortOrder(l$description);
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

  CopyWith$Input$TransactionTypesOrderByWithAggregationInput<
          Input$TransactionTypesOrderByWithAggregationInput>
      get copyWith =>
          CopyWith$Input$TransactionTypesOrderByWithAggregationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionTypesOrderByWithAggregationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_type_id = transaction_type_id;
    final lOther$transaction_type_id = other.transaction_type_id;
    if (_$data.containsKey('transaction_type_id') !=
        other._$data.containsKey('transaction_type_id')) {
      return false;
    }
    if (l$transaction_type_id != lOther$transaction_type_id) {
      return false;
    }
    final l$type_name = type_name;
    final lOther$type_name = other.type_name;
    if (_$data.containsKey('type_name') !=
        other._$data.containsKey('type_name')) {
      return false;
    }
    if (l$type_name != lOther$type_name) {
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
    final l$transaction_type_id = transaction_type_id;
    final l$type_name = type_name;
    final l$description = description;
    final l$$_count = $_count;
    final l$$_avg = $_avg;
    final l$$_max = $_max;
    final l$$_min = $_min;
    final l$$_sum = $_sum;
    return Object.hashAll([
      _$data.containsKey('transaction_type_id')
          ? l$transaction_type_id
          : const {},
      _$data.containsKey('type_name') ? l$type_name : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('_count') ? l$$_count : const {},
      _$data.containsKey('_avg') ? l$$_avg : const {},
      _$data.containsKey('_max') ? l$$_max : const {},
      _$data.containsKey('_min') ? l$$_min : const {},
      _$data.containsKey('_sum') ? l$$_sum : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionTypesOrderByWithAggregationInput<
    TRes> {
  factory CopyWith$Input$TransactionTypesOrderByWithAggregationInput(
    Input$TransactionTypesOrderByWithAggregationInput instance,
    TRes Function(Input$TransactionTypesOrderByWithAggregationInput) then,
  ) = _CopyWithImpl$Input$TransactionTypesOrderByWithAggregationInput;

  factory CopyWith$Input$TransactionTypesOrderByWithAggregationInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionTypesOrderByWithAggregationInput;

  TRes call({
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? type_name,
    Enum$SortOrder? description,
    Input$TransactionTypesCountOrderByAggregateInput? $_count,
    Input$TransactionTypesAvgOrderByAggregateInput? $_avg,
    Input$TransactionTypesMaxOrderByAggregateInput? $_max,
    Input$TransactionTypesMinOrderByAggregateInput? $_min,
    Input$TransactionTypesSumOrderByAggregateInput? $_sum,
  });
  CopyWith$Input$TransactionTypesCountOrderByAggregateInput<TRes> get $_count;
}

class _CopyWithImpl$Input$TransactionTypesOrderByWithAggregationInput<TRes>
    implements
        CopyWith$Input$TransactionTypesOrderByWithAggregationInput<TRes> {
  _CopyWithImpl$Input$TransactionTypesOrderByWithAggregationInput(
    this._instance,
    this._then,
  );

  final Input$TransactionTypesOrderByWithAggregationInput _instance;

  final TRes Function(Input$TransactionTypesOrderByWithAggregationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_type_id = _undefined,
    Object? type_name = _undefined,
    Object? description = _undefined,
    Object? $_count = _undefined,
    Object? $_avg = _undefined,
    Object? $_max = _undefined,
    Object? $_min = _undefined,
    Object? $_sum = _undefined,
  }) =>
      _then(Input$TransactionTypesOrderByWithAggregationInput._({
        ..._instance._$data,
        if (transaction_type_id != _undefined)
          'transaction_type_id': (transaction_type_id as Enum$SortOrder?),
        if (type_name != _undefined)
          'type_name': (type_name as Enum$SortOrder?),
        if (description != _undefined)
          'description': (description as Enum$SortOrder?),
        if ($_count != _undefined)
          '_count':
              ($_count as Input$TransactionTypesCountOrderByAggregateInput?),
        if ($_avg != _undefined)
          '_avg': ($_avg as Input$TransactionTypesAvgOrderByAggregateInput?),
        if ($_max != _undefined)
          '_max': ($_max as Input$TransactionTypesMaxOrderByAggregateInput?),
        if ($_min != _undefined)
          '_min': ($_min as Input$TransactionTypesMinOrderByAggregateInput?),
        if ($_sum != _undefined)
          '_sum': ($_sum as Input$TransactionTypesSumOrderByAggregateInput?),
      }));
  CopyWith$Input$TransactionTypesCountOrderByAggregateInput<TRes> get $_count {
    final local$$_count = _instance.$_count;
    return local$$_count == null
        ? CopyWith$Input$TransactionTypesCountOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionTypesCountOrderByAggregateInput(
            local$$_count, (e) => call($_count: e));
  }
}

class _CopyWithStubImpl$Input$TransactionTypesOrderByWithAggregationInput<TRes>
    implements
        CopyWith$Input$TransactionTypesOrderByWithAggregationInput<TRes> {
  _CopyWithStubImpl$Input$TransactionTypesOrderByWithAggregationInput(
      this._res);

  TRes _res;

  call({
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? type_name,
    Enum$SortOrder? description,
    Input$TransactionTypesCountOrderByAggregateInput? $_count,
    Input$TransactionTypesAvgOrderByAggregateInput? $_avg,
    Input$TransactionTypesMaxOrderByAggregateInput? $_max,
    Input$TransactionTypesMinOrderByAggregateInput? $_min,
    Input$TransactionTypesSumOrderByAggregateInput? $_sum,
  }) =>
      _res;
  CopyWith$Input$TransactionTypesCountOrderByAggregateInput<TRes> get $_count =>
      CopyWith$Input$TransactionTypesCountOrderByAggregateInput.stub(_res);
}

class Input$TransactionTypesCountOrderByAggregateInput {
  factory Input$TransactionTypesCountOrderByAggregateInput({
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? type_name,
    Enum$SortOrder? description,
  }) =>
      Input$TransactionTypesCountOrderByAggregateInput._({
        if (transaction_type_id != null)
          r'transaction_type_id': transaction_type_id,
        if (type_name != null) r'type_name': type_name,
        if (description != null) r'description': description,
      });

  Input$TransactionTypesCountOrderByAggregateInput._(this._$data);

  factory Input$TransactionTypesCountOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = data['transaction_type_id'];
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_type_id as String));
    }
    if (data.containsKey('type_name')) {
      final l$type_name = data['type_name'];
      result$data['type_name'] = l$type_name == null
          ? null
          : fromJson$Enum$SortOrder((l$type_name as String));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : fromJson$Enum$SortOrder((l$description as String));
    }
    return Input$TransactionTypesCountOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_type_id =>
      (_$data['transaction_type_id'] as Enum$SortOrder?);
  Enum$SortOrder? get type_name => (_$data['type_name'] as Enum$SortOrder?);
  Enum$SortOrder? get description => (_$data['description'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = transaction_type_id;
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_type_id);
    }
    if (_$data.containsKey('type_name')) {
      final l$type_name = type_name;
      result$data['type_name'] =
          l$type_name == null ? null : toJson$Enum$SortOrder(l$type_name);
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] =
          l$description == null ? null : toJson$Enum$SortOrder(l$description);
    }
    return result$data;
  }

  CopyWith$Input$TransactionTypesCountOrderByAggregateInput<
          Input$TransactionTypesCountOrderByAggregateInput>
      get copyWith => CopyWith$Input$TransactionTypesCountOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionTypesCountOrderByAggregateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_type_id = transaction_type_id;
    final lOther$transaction_type_id = other.transaction_type_id;
    if (_$data.containsKey('transaction_type_id') !=
        other._$data.containsKey('transaction_type_id')) {
      return false;
    }
    if (l$transaction_type_id != lOther$transaction_type_id) {
      return false;
    }
    final l$type_name = type_name;
    final lOther$type_name = other.type_name;
    if (_$data.containsKey('type_name') !=
        other._$data.containsKey('type_name')) {
      return false;
    }
    if (l$type_name != lOther$type_name) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_type_id = transaction_type_id;
    final l$type_name = type_name;
    final l$description = description;
    return Object.hashAll([
      _$data.containsKey('transaction_type_id')
          ? l$transaction_type_id
          : const {},
      _$data.containsKey('type_name') ? l$type_name : const {},
      _$data.containsKey('description') ? l$description : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionTypesCountOrderByAggregateInput<TRes> {
  factory CopyWith$Input$TransactionTypesCountOrderByAggregateInput(
    Input$TransactionTypesCountOrderByAggregateInput instance,
    TRes Function(Input$TransactionTypesCountOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$TransactionTypesCountOrderByAggregateInput;

  factory CopyWith$Input$TransactionTypesCountOrderByAggregateInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionTypesCountOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? type_name,
    Enum$SortOrder? description,
  });
}

class _CopyWithImpl$Input$TransactionTypesCountOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionTypesCountOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$TransactionTypesCountOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionTypesCountOrderByAggregateInput _instance;

  final TRes Function(Input$TransactionTypesCountOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_type_id = _undefined,
    Object? type_name = _undefined,
    Object? description = _undefined,
  }) =>
      _then(Input$TransactionTypesCountOrderByAggregateInput._({
        ..._instance._$data,
        if (transaction_type_id != _undefined)
          'transaction_type_id': (transaction_type_id as Enum$SortOrder?),
        if (type_name != _undefined)
          'type_name': (type_name as Enum$SortOrder?),
        if (description != _undefined)
          'description': (description as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$TransactionTypesCountOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionTypesCountOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionTypesCountOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? type_name,
    Enum$SortOrder? description,
  }) =>
      _res;
}

enum Enum$SellersScalarFieldEnum {
  seller_id,
  seller_name,
  seller_phone,
  picture,
  $unknown
}

String toJson$Enum$SellersScalarFieldEnum(Enum$SellersScalarFieldEnum e) {
  switch (e) {
    case Enum$SellersScalarFieldEnum.seller_id:
      return r'seller_id';
    case Enum$SellersScalarFieldEnum.seller_name:
      return r'seller_name';
    case Enum$SellersScalarFieldEnum.seller_phone:
      return r'seller_phone';
    case Enum$SellersScalarFieldEnum.picture:
      return r'picture';
    case Enum$SellersScalarFieldEnum.$unknown:
      return r'$unknown';
  }
}

Enum$SellersScalarFieldEnum fromJson$Enum$SellersScalarFieldEnum(String value) {
  switch (value) {
    case r'seller_id':
      return Enum$SellersScalarFieldEnum.seller_id;
    case r'seller_name':
      return Enum$SellersScalarFieldEnum.seller_name;
    case r'seller_phone':
      return Enum$SellersScalarFieldEnum.seller_phone;
    case r'picture':
      return Enum$SellersScalarFieldEnum.picture;
    default:
      return Enum$SellersScalarFieldEnum.$unknown;
  }
}

enum Enum$SizesScalarFieldEnum { id, size, $unknown }

String toJson$Enum$SizesScalarFieldEnum(Enum$SizesScalarFieldEnum e) {
  switch (e) {
    case Enum$SizesScalarFieldEnum.id:
      return r'id';
    case Enum$SizesScalarFieldEnum.size:
      return r'size';
    case Enum$SizesScalarFieldEnum.$unknown:
      return r'$unknown';
  }
}

Enum$SizesScalarFieldEnum fromJson$Enum$SizesScalarFieldEnum(String value) {
  switch (value) {
    case r'id':
      return Enum$SizesScalarFieldEnum.id;
    case r'size':
      return Enum$SizesScalarFieldEnum.size;
    default:
      return Enum$SizesScalarFieldEnum.$unknown;
  }
}

enum Enum$TransactionStatusScalarFieldEnum {
  transaction_status_id,
  name,
  description,
  $unknown
}

String toJson$Enum$TransactionStatusScalarFieldEnum(
    Enum$TransactionStatusScalarFieldEnum e) {
  switch (e) {
    case Enum$TransactionStatusScalarFieldEnum.transaction_status_id:
      return r'transaction_status_id';
    case Enum$TransactionStatusScalarFieldEnum.name:
      return r'name';
    case Enum$TransactionStatusScalarFieldEnum.description:
      return r'description';
    case Enum$TransactionStatusScalarFieldEnum.$unknown:
      return r'$unknown';
  }
}

Enum$TransactionStatusScalarFieldEnum
    fromJson$Enum$TransactionStatusScalarFieldEnum(String value) {
  switch (value) {
    case r'transaction_status_id':
      return Enum$TransactionStatusScalarFieldEnum.transaction_status_id;
    case r'name':
      return Enum$TransactionStatusScalarFieldEnum.name;
    case r'description':
      return Enum$TransactionStatusScalarFieldEnum.description;
    default:
      return Enum$TransactionStatusScalarFieldEnum.$unknown;
  }
}

enum Enum$TransactionTypesScalarFieldEnum {
  transaction_type_id,
  type_name,
  description,
  $unknown
}

String toJson$Enum$TransactionTypesScalarFieldEnum(
    Enum$TransactionTypesScalarFieldEnum e) {
  switch (e) {
    case Enum$TransactionTypesScalarFieldEnum.transaction_type_id:
      return r'transaction_type_id';
    case Enum$TransactionTypesScalarFieldEnum.type_name:
      return r'type_name';
    case Enum$TransactionTypesScalarFieldEnum.description:
      return r'description';
    case Enum$TransactionTypesScalarFieldEnum.$unknown:
      return r'$unknown';
  }
}

Enum$TransactionTypesScalarFieldEnum
    fromJson$Enum$TransactionTypesScalarFieldEnum(String value) {
  switch (value) {
    case r'transaction_type_id':
      return Enum$TransactionTypesScalarFieldEnum.transaction_type_id;
    case r'type_name':
      return Enum$TransactionTypesScalarFieldEnum.type_name;
    case r'description':
      return Enum$TransactionTypesScalarFieldEnum.description;
    default:
      return Enum$TransactionTypesScalarFieldEnum.$unknown;
  }
}
