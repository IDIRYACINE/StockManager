import 'schema1.graphql.dart';
import 'schema3.graphql.dart';
import 'schema4.graphql.dart';
import 'schema5.graphql.dart';
import 'schema7.graphql.dart';

class Input$TransactionTypesAvgOrderByAggregateInput {
  factory Input$TransactionTypesAvgOrderByAggregateInput(
          {Enum$SortOrder? transaction_type_id}) =>
      Input$TransactionTypesAvgOrderByAggregateInput._({
        if (transaction_type_id != null)
          r'transaction_type_id': transaction_type_id,
      });

  Input$TransactionTypesAvgOrderByAggregateInput._(this._$data);

  factory Input$TransactionTypesAvgOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = data['transaction_type_id'];
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_type_id as String));
    }
    return Input$TransactionTypesAvgOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_type_id =>
      (_$data['transaction_type_id'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = transaction_type_id;
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_type_id);
    }
    return result$data;
  }

  CopyWith$Input$TransactionTypesAvgOrderByAggregateInput<
          Input$TransactionTypesAvgOrderByAggregateInput>
      get copyWith => CopyWith$Input$TransactionTypesAvgOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionTypesAvgOrderByAggregateInput) ||
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

abstract class CopyWith$Input$TransactionTypesAvgOrderByAggregateInput<TRes> {
  factory CopyWith$Input$TransactionTypesAvgOrderByAggregateInput(
    Input$TransactionTypesAvgOrderByAggregateInput instance,
    TRes Function(Input$TransactionTypesAvgOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$TransactionTypesAvgOrderByAggregateInput;

  factory CopyWith$Input$TransactionTypesAvgOrderByAggregateInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionTypesAvgOrderByAggregateInput;

  TRes call({Enum$SortOrder? transaction_type_id});
}

class _CopyWithImpl$Input$TransactionTypesAvgOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionTypesAvgOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$TransactionTypesAvgOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionTypesAvgOrderByAggregateInput _instance;

  final TRes Function(Input$TransactionTypesAvgOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? transaction_type_id = _undefined}) =>
      _then(Input$TransactionTypesAvgOrderByAggregateInput._({
        ..._instance._$data,
        if (transaction_type_id != _undefined)
          'transaction_type_id': (transaction_type_id as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$TransactionTypesAvgOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionTypesAvgOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionTypesAvgOrderByAggregateInput(this._res);

  TRes _res;

  call({Enum$SortOrder? transaction_type_id}) => _res;
}

class Input$TransactionTypesMaxOrderByAggregateInput {
  factory Input$TransactionTypesMaxOrderByAggregateInput({
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? type_name,
    Enum$SortOrder? description,
  }) =>
      Input$TransactionTypesMaxOrderByAggregateInput._({
        if (transaction_type_id != null)
          r'transaction_type_id': transaction_type_id,
        if (type_name != null) r'type_name': type_name,
        if (description != null) r'description': description,
      });

  Input$TransactionTypesMaxOrderByAggregateInput._(this._$data);

  factory Input$TransactionTypesMaxOrderByAggregateInput.fromJson(
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
    return Input$TransactionTypesMaxOrderByAggregateInput._(result$data);
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

  CopyWith$Input$TransactionTypesMaxOrderByAggregateInput<
          Input$TransactionTypesMaxOrderByAggregateInput>
      get copyWith => CopyWith$Input$TransactionTypesMaxOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionTypesMaxOrderByAggregateInput) ||
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

abstract class CopyWith$Input$TransactionTypesMaxOrderByAggregateInput<TRes> {
  factory CopyWith$Input$TransactionTypesMaxOrderByAggregateInput(
    Input$TransactionTypesMaxOrderByAggregateInput instance,
    TRes Function(Input$TransactionTypesMaxOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$TransactionTypesMaxOrderByAggregateInput;

  factory CopyWith$Input$TransactionTypesMaxOrderByAggregateInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionTypesMaxOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? type_name,
    Enum$SortOrder? description,
  });
}

class _CopyWithImpl$Input$TransactionTypesMaxOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionTypesMaxOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$TransactionTypesMaxOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionTypesMaxOrderByAggregateInput _instance;

  final TRes Function(Input$TransactionTypesMaxOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_type_id = _undefined,
    Object? type_name = _undefined,
    Object? description = _undefined,
  }) =>
      _then(Input$TransactionTypesMaxOrderByAggregateInput._({
        ..._instance._$data,
        if (transaction_type_id != _undefined)
          'transaction_type_id': (transaction_type_id as Enum$SortOrder?),
        if (type_name != _undefined)
          'type_name': (type_name as Enum$SortOrder?),
        if (description != _undefined)
          'description': (description as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$TransactionTypesMaxOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionTypesMaxOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionTypesMaxOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? type_name,
    Enum$SortOrder? description,
  }) =>
      _res;
}

class Input$TransactionTypesMinOrderByAggregateInput {
  factory Input$TransactionTypesMinOrderByAggregateInput({
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? type_name,
    Enum$SortOrder? description,
  }) =>
      Input$TransactionTypesMinOrderByAggregateInput._({
        if (transaction_type_id != null)
          r'transaction_type_id': transaction_type_id,
        if (type_name != null) r'type_name': type_name,
        if (description != null) r'description': description,
      });

  Input$TransactionTypesMinOrderByAggregateInput._(this._$data);

  factory Input$TransactionTypesMinOrderByAggregateInput.fromJson(
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
    return Input$TransactionTypesMinOrderByAggregateInput._(result$data);
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

  CopyWith$Input$TransactionTypesMinOrderByAggregateInput<
          Input$TransactionTypesMinOrderByAggregateInput>
      get copyWith => CopyWith$Input$TransactionTypesMinOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionTypesMinOrderByAggregateInput) ||
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

abstract class CopyWith$Input$TransactionTypesMinOrderByAggregateInput<TRes> {
  factory CopyWith$Input$TransactionTypesMinOrderByAggregateInput(
    Input$TransactionTypesMinOrderByAggregateInput instance,
    TRes Function(Input$TransactionTypesMinOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$TransactionTypesMinOrderByAggregateInput;

  factory CopyWith$Input$TransactionTypesMinOrderByAggregateInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionTypesMinOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? type_name,
    Enum$SortOrder? description,
  });
}

class _CopyWithImpl$Input$TransactionTypesMinOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionTypesMinOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$TransactionTypesMinOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionTypesMinOrderByAggregateInput _instance;

  final TRes Function(Input$TransactionTypesMinOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_type_id = _undefined,
    Object? type_name = _undefined,
    Object? description = _undefined,
  }) =>
      _then(Input$TransactionTypesMinOrderByAggregateInput._({
        ..._instance._$data,
        if (transaction_type_id != _undefined)
          'transaction_type_id': (transaction_type_id as Enum$SortOrder?),
        if (type_name != _undefined)
          'type_name': (type_name as Enum$SortOrder?),
        if (description != _undefined)
          'description': (description as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$TransactionTypesMinOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionTypesMinOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionTypesMinOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? type_name,
    Enum$SortOrder? description,
  }) =>
      _res;
}

class Input$TransactionTypesSumOrderByAggregateInput {
  factory Input$TransactionTypesSumOrderByAggregateInput(
          {Enum$SortOrder? transaction_type_id}) =>
      Input$TransactionTypesSumOrderByAggregateInput._({
        if (transaction_type_id != null)
          r'transaction_type_id': transaction_type_id,
      });

  Input$TransactionTypesSumOrderByAggregateInput._(this._$data);

  factory Input$TransactionTypesSumOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = data['transaction_type_id'];
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_type_id as String));
    }
    return Input$TransactionTypesSumOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_type_id =>
      (_$data['transaction_type_id'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = transaction_type_id;
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_type_id);
    }
    return result$data;
  }

  CopyWith$Input$TransactionTypesSumOrderByAggregateInput<
          Input$TransactionTypesSumOrderByAggregateInput>
      get copyWith => CopyWith$Input$TransactionTypesSumOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionTypesSumOrderByAggregateInput) ||
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

abstract class CopyWith$Input$TransactionTypesSumOrderByAggregateInput<TRes> {
  factory CopyWith$Input$TransactionTypesSumOrderByAggregateInput(
    Input$TransactionTypesSumOrderByAggregateInput instance,
    TRes Function(Input$TransactionTypesSumOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$TransactionTypesSumOrderByAggregateInput;

  factory CopyWith$Input$TransactionTypesSumOrderByAggregateInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionTypesSumOrderByAggregateInput;

  TRes call({Enum$SortOrder? transaction_type_id});
}

class _CopyWithImpl$Input$TransactionTypesSumOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionTypesSumOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$TransactionTypesSumOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionTypesSumOrderByAggregateInput _instance;

  final TRes Function(Input$TransactionTypesSumOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? transaction_type_id = _undefined}) =>
      _then(Input$TransactionTypesSumOrderByAggregateInput._({
        ..._instance._$data,
        if (transaction_type_id != _undefined)
          'transaction_type_id': (transaction_type_id as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$TransactionTypesSumOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionTypesSumOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionTypesSumOrderByAggregateInput(this._res);

  TRes _res;

  call({Enum$SortOrder? transaction_type_id}) => _res;
}

class Input$TransactionTypesScalarWhereWithAggregatesInput {
  factory Input$TransactionTypesScalarWhereWithAggregatesInput({
    List<Input$TransactionTypesScalarWhereWithAggregatesInput>? AND,
    List<Input$TransactionTypesScalarWhereWithAggregatesInput>? OR,
    List<Input$TransactionTypesScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? transaction_type_id,
    Input$StringWithAggregatesFilter? type_name,
    Input$StringWithAggregatesFilter? description,
  }) =>
      Input$TransactionTypesScalarWhereWithAggregatesInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (transaction_type_id != null)
          r'transaction_type_id': transaction_type_id,
        if (type_name != null) r'type_name': type_name,
        if (description != null) r'description': description,
      });

  Input$TransactionTypesScalarWhereWithAggregatesInput._(this._$data);

  factory Input$TransactionTypesScalarWhereWithAggregatesInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionTypesScalarWhereWithAggregatesInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionTypesScalarWhereWithAggregatesInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionTypesScalarWhereWithAggregatesInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = data['transaction_type_id'];
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : Input$IntWithAggregatesFilter.fromJson(
              (l$transaction_type_id as Map<String, dynamic>));
    }
    if (data.containsKey('type_name')) {
      final l$type_name = data['type_name'];
      result$data['type_name'] = l$type_name == null
          ? null
          : Input$StringWithAggregatesFilter.fromJson(
              (l$type_name as Map<String, dynamic>));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : Input$StringWithAggregatesFilter.fromJson(
              (l$description as Map<String, dynamic>));
    }
    return Input$TransactionTypesScalarWhereWithAggregatesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TransactionTypesScalarWhereWithAggregatesInput>? get AND =>
      (_$data['AND']
          as List<Input$TransactionTypesScalarWhereWithAggregatesInput>?);
  List<Input$TransactionTypesScalarWhereWithAggregatesInput>? get OR =>
      (_$data['OR']
          as List<Input$TransactionTypesScalarWhereWithAggregatesInput>?);
  List<Input$TransactionTypesScalarWhereWithAggregatesInput>? get NOT =>
      (_$data['NOT']
          as List<Input$TransactionTypesScalarWhereWithAggregatesInput>?);
  Input$IntWithAggregatesFilter? get transaction_type_id =>
      (_$data['transaction_type_id'] as Input$IntWithAggregatesFilter?);
  Input$StringWithAggregatesFilter? get type_name =>
      (_$data['type_name'] as Input$StringWithAggregatesFilter?);
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
    if (_$data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = transaction_type_id;
      result$data['transaction_type_id'] = l$transaction_type_id?.toJson();
    }
    if (_$data.containsKey('type_name')) {
      final l$type_name = type_name;
      result$data['type_name'] = l$type_name?.toJson();
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionTypesScalarWhereWithAggregatesInput<
          Input$TransactionTypesScalarWhereWithAggregatesInput>
      get copyWith =>
          CopyWith$Input$TransactionTypesScalarWhereWithAggregatesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionTypesScalarWhereWithAggregatesInput) ||
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
    final l$AND = AND;
    final l$OR = OR;
    final l$NOT = NOT;
    final l$transaction_type_id = transaction_type_id;
    final l$type_name = type_name;
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
      _$data.containsKey('transaction_type_id')
          ? l$transaction_type_id
          : const {},
      _$data.containsKey('type_name') ? l$type_name : const {},
      _$data.containsKey('description') ? l$description : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionTypesScalarWhereWithAggregatesInput<
    TRes> {
  factory CopyWith$Input$TransactionTypesScalarWhereWithAggregatesInput(
    Input$TransactionTypesScalarWhereWithAggregatesInput instance,
    TRes Function(Input$TransactionTypesScalarWhereWithAggregatesInput) then,
  ) = _CopyWithImpl$Input$TransactionTypesScalarWhereWithAggregatesInput;

  factory CopyWith$Input$TransactionTypesScalarWhereWithAggregatesInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionTypesScalarWhereWithAggregatesInput;

  TRes call({
    List<Input$TransactionTypesScalarWhereWithAggregatesInput>? AND,
    List<Input$TransactionTypesScalarWhereWithAggregatesInput>? OR,
    List<Input$TransactionTypesScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? transaction_type_id,
    Input$StringWithAggregatesFilter? type_name,
    Input$StringWithAggregatesFilter? description,
  });
  TRes AND(
      Iterable<Input$TransactionTypesScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionTypesScalarWhereWithAggregatesInput<
                      Input$TransactionTypesScalarWhereWithAggregatesInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$TransactionTypesScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionTypesScalarWhereWithAggregatesInput<
                      Input$TransactionTypesScalarWhereWithAggregatesInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$TransactionTypesScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionTypesScalarWhereWithAggregatesInput<
                      Input$TransactionTypesScalarWhereWithAggregatesInput>>?)
          _fn);
}

class _CopyWithImpl$Input$TransactionTypesScalarWhereWithAggregatesInput<TRes>
    implements
        CopyWith$Input$TransactionTypesScalarWhereWithAggregatesInput<TRes> {
  _CopyWithImpl$Input$TransactionTypesScalarWhereWithAggregatesInput(
    this._instance,
    this._then,
  );

  final Input$TransactionTypesScalarWhereWithAggregatesInput _instance;

  final TRes Function(Input$TransactionTypesScalarWhereWithAggregatesInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? transaction_type_id = _undefined,
    Object? type_name = _undefined,
    Object? description = _undefined,
  }) =>
      _then(Input$TransactionTypesScalarWhereWithAggregatesInput._({
        ..._instance._$data,
        if (AND != _undefined)
          'AND': (AND
              as List<Input$TransactionTypesScalarWhereWithAggregatesInput>?),
        if (OR != _undefined)
          'OR': (OR
              as List<Input$TransactionTypesScalarWhereWithAggregatesInput>?),
        if (NOT != _undefined)
          'NOT': (NOT
              as List<Input$TransactionTypesScalarWhereWithAggregatesInput>?),
        if (transaction_type_id != _undefined)
          'transaction_type_id':
              (transaction_type_id as Input$IntWithAggregatesFilter?),
        if (type_name != _undefined)
          'type_name': (type_name as Input$StringWithAggregatesFilter?),
        if (description != _undefined)
          'description': (description as Input$StringWithAggregatesFilter?),
      }));
  TRes AND(
          Iterable<Input$TransactionTypesScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionTypesScalarWhereWithAggregatesInput<
                          Input$TransactionTypesScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND?.map((e) =>
              CopyWith$Input$TransactionTypesScalarWhereWithAggregatesInput(
                e,
                (i) => i,
              )))?.toList());
  TRes OR(
          Iterable<Input$TransactionTypesScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionTypesScalarWhereWithAggregatesInput<
                          Input$TransactionTypesScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR?.map((e) =>
              CopyWith$Input$TransactionTypesScalarWhereWithAggregatesInput(
                e,
                (i) => i,
              )))?.toList());
  TRes NOT(
          Iterable<Input$TransactionTypesScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionTypesScalarWhereWithAggregatesInput<
                          Input$TransactionTypesScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT?.map((e) =>
              CopyWith$Input$TransactionTypesScalarWhereWithAggregatesInput(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Input$TransactionTypesScalarWhereWithAggregatesInput<
        TRes>
    implements
        CopyWith$Input$TransactionTypesScalarWhereWithAggregatesInput<TRes> {
  _CopyWithStubImpl$Input$TransactionTypesScalarWhereWithAggregatesInput(
      this._res);

  TRes _res;

  call({
    List<Input$TransactionTypesScalarWhereWithAggregatesInput>? AND,
    List<Input$TransactionTypesScalarWhereWithAggregatesInput>? OR,
    List<Input$TransactionTypesScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? transaction_type_id,
    Input$StringWithAggregatesFilter? type_name,
    Input$StringWithAggregatesFilter? description,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
}

class Input$TransactionsOrderByWithAggregationInput {
  factory Input$TransactionsOrderByWithAggregationInput({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? seller_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? customer_name,
    Enum$SortOrder? customer_phone,
    Enum$SortOrder? city_id,
    Enum$SortOrder? address,
    Enum$SortOrder? quantity,
    Enum$SortOrder? date,
    Enum$SortOrder? remainingPayement,
    Enum$SortOrder? totalPayement,
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? status_id,
    Input$TransactionsCountOrderByAggregateInput? $_count,
    Input$TransactionsAvgOrderByAggregateInput? $_avg,
    Input$TransactionsMaxOrderByAggregateInput? $_max,
    Input$TransactionsMinOrderByAggregateInput? $_min,
    Input$TransactionsSumOrderByAggregateInput? $_sum,
  }) =>
      Input$TransactionsOrderByWithAggregationInput._({
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (seller_id != null) r'seller_id': seller_id,
        if (product_id != null) r'product_id': product_id,
        if (customer_name != null) r'customer_name': customer_name,
        if (customer_phone != null) r'customer_phone': customer_phone,
        if (city_id != null) r'city_id': city_id,
        if (address != null) r'address': address,
        if (quantity != null) r'quantity': quantity,
        if (date != null) r'date': date,
        if (remainingPayement != null) r'remainingPayement': remainingPayement,
        if (totalPayement != null) r'totalPayement': totalPayement,
        if (transaction_type_id != null)
          r'transaction_type_id': transaction_type_id,
        if (status_id != null) r'status_id': status_id,
        if ($_count != null) r'_count': $_count,
        if ($_avg != null) r'_avg': $_avg,
        if ($_max != null) r'_max': $_max,
        if ($_min != null) r'_min': $_min,
        if ($_sum != null) r'_sum': $_sum,
      });

  Input$TransactionsOrderByWithAggregationInput._(this._$data);

  factory Input$TransactionsOrderByWithAggregationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_id as String));
    }
    if (data.containsKey('seller_id')) {
      final l$seller_id = data['seller_id'];
      result$data['seller_id'] = l$seller_id == null
          ? null
          : fromJson$Enum$SortOrder((l$seller_id as String));
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : fromJson$Enum$SortOrder((l$product_id as String));
    }
    if (data.containsKey('customer_name')) {
      final l$customer_name = data['customer_name'];
      result$data['customer_name'] = l$customer_name == null
          ? null
          : fromJson$Enum$SortOrder((l$customer_name as String));
    }
    if (data.containsKey('customer_phone')) {
      final l$customer_phone = data['customer_phone'];
      result$data['customer_phone'] = l$customer_phone == null
          ? null
          : fromJson$Enum$SortOrder((l$customer_phone as String));
    }
    if (data.containsKey('city_id')) {
      final l$city_id = data['city_id'];
      result$data['city_id'] = l$city_id == null
          ? null
          : fromJson$Enum$SortOrder((l$city_id as String));
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : fromJson$Enum$SortOrder((l$address as String));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : fromJson$Enum$SortOrder((l$quantity as String));
    }
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] =
          l$date == null ? null : fromJson$Enum$SortOrder((l$date as String));
    }
    if (data.containsKey('remainingPayement')) {
      final l$remainingPayement = data['remainingPayement'];
      result$data['remainingPayement'] = l$remainingPayement == null
          ? null
          : fromJson$Enum$SortOrder((l$remainingPayement as String));
    }
    if (data.containsKey('totalPayement')) {
      final l$totalPayement = data['totalPayement'];
      result$data['totalPayement'] = l$totalPayement == null
          ? null
          : fromJson$Enum$SortOrder((l$totalPayement as String));
    }
    if (data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = data['transaction_type_id'];
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_type_id as String));
    }
    if (data.containsKey('status_id')) {
      final l$status_id = data['status_id'];
      result$data['status_id'] = l$status_id == null
          ? null
          : fromJson$Enum$SortOrder((l$status_id as String));
    }
    if (data.containsKey('_count')) {
      final l$$_count = data['_count'];
      result$data['_count'] = l$$_count == null
          ? null
          : Input$TransactionsCountOrderByAggregateInput.fromJson(
              (l$$_count as Map<String, dynamic>));
    }
    if (data.containsKey('_avg')) {
      final l$$_avg = data['_avg'];
      result$data['_avg'] = l$$_avg == null
          ? null
          : Input$TransactionsAvgOrderByAggregateInput.fromJson(
              (l$$_avg as Map<String, dynamic>));
    }
    if (data.containsKey('_max')) {
      final l$$_max = data['_max'];
      result$data['_max'] = l$$_max == null
          ? null
          : Input$TransactionsMaxOrderByAggregateInput.fromJson(
              (l$$_max as Map<String, dynamic>));
    }
    if (data.containsKey('_min')) {
      final l$$_min = data['_min'];
      result$data['_min'] = l$$_min == null
          ? null
          : Input$TransactionsMinOrderByAggregateInput.fromJson(
              (l$$_min as Map<String, dynamic>));
    }
    if (data.containsKey('_sum')) {
      final l$$_sum = data['_sum'];
      result$data['_sum'] = l$$_sum == null
          ? null
          : Input$TransactionsSumOrderByAggregateInput.fromJson(
              (l$$_sum as Map<String, dynamic>));
    }
    return Input$TransactionsOrderByWithAggregationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_id =>
      (_$data['transaction_id'] as Enum$SortOrder?);
  Enum$SortOrder? get seller_id => (_$data['seller_id'] as Enum$SortOrder?);
  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get customer_name =>
      (_$data['customer_name'] as Enum$SortOrder?);
  Enum$SortOrder? get customer_phone =>
      (_$data['customer_phone'] as Enum$SortOrder?);
  Enum$SortOrder? get city_id => (_$data['city_id'] as Enum$SortOrder?);
  Enum$SortOrder? get address => (_$data['address'] as Enum$SortOrder?);
  Enum$SortOrder? get quantity => (_$data['quantity'] as Enum$SortOrder?);
  Enum$SortOrder? get date => (_$data['date'] as Enum$SortOrder?);
  Enum$SortOrder? get remainingPayement =>
      (_$data['remainingPayement'] as Enum$SortOrder?);
  Enum$SortOrder? get totalPayement =>
      (_$data['totalPayement'] as Enum$SortOrder?);
  Enum$SortOrder? get transaction_type_id =>
      (_$data['transaction_type_id'] as Enum$SortOrder?);
  Enum$SortOrder? get status_id => (_$data['status_id'] as Enum$SortOrder?);
  Input$TransactionsCountOrderByAggregateInput? get $_count =>
      (_$data['_count'] as Input$TransactionsCountOrderByAggregateInput?);
  Input$TransactionsAvgOrderByAggregateInput? get $_avg =>
      (_$data['_avg'] as Input$TransactionsAvgOrderByAggregateInput?);
  Input$TransactionsMaxOrderByAggregateInput? get $_max =>
      (_$data['_max'] as Input$TransactionsMaxOrderByAggregateInput?);
  Input$TransactionsMinOrderByAggregateInput? get $_min =>
      (_$data['_min'] as Input$TransactionsMinOrderByAggregateInput?);
  Input$TransactionsSumOrderByAggregateInput? get $_sum =>
      (_$data['_sum'] as Input$TransactionsSumOrderByAggregateInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_id')) {
      final l$transaction_id = transaction_id;
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_id);
    }
    if (_$data.containsKey('seller_id')) {
      final l$seller_id = seller_id;
      result$data['seller_id'] =
          l$seller_id == null ? null : toJson$Enum$SortOrder(l$seller_id);
    }
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] =
          l$product_id == null ? null : toJson$Enum$SortOrder(l$product_id);
    }
    if (_$data.containsKey('customer_name')) {
      final l$customer_name = customer_name;
      result$data['customer_name'] = l$customer_name == null
          ? null
          : toJson$Enum$SortOrder(l$customer_name);
    }
    if (_$data.containsKey('customer_phone')) {
      final l$customer_phone = customer_phone;
      result$data['customer_phone'] = l$customer_phone == null
          ? null
          : toJson$Enum$SortOrder(l$customer_phone);
    }
    if (_$data.containsKey('city_id')) {
      final l$city_id = city_id;
      result$data['city_id'] =
          l$city_id == null ? null : toJson$Enum$SortOrder(l$city_id);
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] =
          l$address == null ? null : toJson$Enum$SortOrder(l$address);
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] =
          l$quantity == null ? null : toJson$Enum$SortOrder(l$quantity);
    }
    if (_$data.containsKey('date')) {
      final l$date = date;
      result$data['date'] =
          l$date == null ? null : toJson$Enum$SortOrder(l$date);
    }
    if (_$data.containsKey('remainingPayement')) {
      final l$remainingPayement = remainingPayement;
      result$data['remainingPayement'] = l$remainingPayement == null
          ? null
          : toJson$Enum$SortOrder(l$remainingPayement);
    }
    if (_$data.containsKey('totalPayement')) {
      final l$totalPayement = totalPayement;
      result$data['totalPayement'] = l$totalPayement == null
          ? null
          : toJson$Enum$SortOrder(l$totalPayement);
    }
    if (_$data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = transaction_type_id;
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_type_id);
    }
    if (_$data.containsKey('status_id')) {
      final l$status_id = status_id;
      result$data['status_id'] =
          l$status_id == null ? null : toJson$Enum$SortOrder(l$status_id);
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

  CopyWith$Input$TransactionsOrderByWithAggregationInput<
          Input$TransactionsOrderByWithAggregationInput>
      get copyWith => CopyWith$Input$TransactionsOrderByWithAggregationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsOrderByWithAggregationInput) ||
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
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (_$data.containsKey('seller_id') !=
        other._$data.containsKey('seller_id')) {
      return false;
    }
    if (l$seller_id != lOther$seller_id) {
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
    final l$customer_name = customer_name;
    final lOther$customer_name = other.customer_name;
    if (_$data.containsKey('customer_name') !=
        other._$data.containsKey('customer_name')) {
      return false;
    }
    if (l$customer_name != lOther$customer_name) {
      return false;
    }
    final l$customer_phone = customer_phone;
    final lOther$customer_phone = other.customer_phone;
    if (_$data.containsKey('customer_phone') !=
        other._$data.containsKey('customer_phone')) {
      return false;
    }
    if (l$customer_phone != lOther$customer_phone) {
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
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
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
    final l$date = date;
    final lOther$date = other.date;
    if (_$data.containsKey('date') != other._$data.containsKey('date')) {
      return false;
    }
    if (l$date != lOther$date) {
      return false;
    }
    final l$remainingPayement = remainingPayement;
    final lOther$remainingPayement = other.remainingPayement;
    if (_$data.containsKey('remainingPayement') !=
        other._$data.containsKey('remainingPayement')) {
      return false;
    }
    if (l$remainingPayement != lOther$remainingPayement) {
      return false;
    }
    final l$totalPayement = totalPayement;
    final lOther$totalPayement = other.totalPayement;
    if (_$data.containsKey('totalPayement') !=
        other._$data.containsKey('totalPayement')) {
      return false;
    }
    if (l$totalPayement != lOther$totalPayement) {
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
    final l$status_id = status_id;
    final lOther$status_id = other.status_id;
    if (_$data.containsKey('status_id') !=
        other._$data.containsKey('status_id')) {
      return false;
    }
    if (l$status_id != lOther$status_id) {
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
    final l$seller_id = seller_id;
    final l$product_id = product_id;
    final l$customer_name = customer_name;
    final l$customer_phone = customer_phone;
    final l$city_id = city_id;
    final l$address = address;
    final l$quantity = quantity;
    final l$date = date;
    final l$remainingPayement = remainingPayement;
    final l$totalPayement = totalPayement;
    final l$transaction_type_id = transaction_type_id;
    final l$status_id = status_id;
    final l$$_count = $_count;
    final l$$_avg = $_avg;
    final l$$_max = $_max;
    final l$$_min = $_min;
    final l$$_sum = $_sum;
    return Object.hashAll([
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('seller_id') ? l$seller_id : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('customer_name') ? l$customer_name : const {},
      _$data.containsKey('customer_phone') ? l$customer_phone : const {},
      _$data.containsKey('city_id') ? l$city_id : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('date') ? l$date : const {},
      _$data.containsKey('remainingPayement') ? l$remainingPayement : const {},
      _$data.containsKey('totalPayement') ? l$totalPayement : const {},
      _$data.containsKey('transaction_type_id')
          ? l$transaction_type_id
          : const {},
      _$data.containsKey('status_id') ? l$status_id : const {},
      _$data.containsKey('_count') ? l$$_count : const {},
      _$data.containsKey('_avg') ? l$$_avg : const {},
      _$data.containsKey('_max') ? l$$_max : const {},
      _$data.containsKey('_min') ? l$$_min : const {},
      _$data.containsKey('_sum') ? l$$_sum : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsOrderByWithAggregationInput<TRes> {
  factory CopyWith$Input$TransactionsOrderByWithAggregationInput(
    Input$TransactionsOrderByWithAggregationInput instance,
    TRes Function(Input$TransactionsOrderByWithAggregationInput) then,
  ) = _CopyWithImpl$Input$TransactionsOrderByWithAggregationInput;

  factory CopyWith$Input$TransactionsOrderByWithAggregationInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsOrderByWithAggregationInput;

  TRes call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? seller_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? customer_name,
    Enum$SortOrder? customer_phone,
    Enum$SortOrder? city_id,
    Enum$SortOrder? address,
    Enum$SortOrder? quantity,
    Enum$SortOrder? date,
    Enum$SortOrder? remainingPayement,
    Enum$SortOrder? totalPayement,
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? status_id,
    Input$TransactionsCountOrderByAggregateInput? $_count,
    Input$TransactionsAvgOrderByAggregateInput? $_avg,
    Input$TransactionsMaxOrderByAggregateInput? $_max,
    Input$TransactionsMinOrderByAggregateInput? $_min,
    Input$TransactionsSumOrderByAggregateInput? $_sum,
  });
  CopyWith$Input$TransactionsCountOrderByAggregateInput<TRes> get $_count;
  CopyWith$Input$TransactionsAvgOrderByAggregateInput<TRes> get $_avg;
  CopyWith$Input$TransactionsMaxOrderByAggregateInput<TRes> get $_max;
  CopyWith$Input$TransactionsMinOrderByAggregateInput<TRes> get $_min;
  CopyWith$Input$TransactionsSumOrderByAggregateInput<TRes> get $_sum;
}

class _CopyWithImpl$Input$TransactionsOrderByWithAggregationInput<TRes>
    implements CopyWith$Input$TransactionsOrderByWithAggregationInput<TRes> {
  _CopyWithImpl$Input$TransactionsOrderByWithAggregationInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsOrderByWithAggregationInput _instance;

  final TRes Function(Input$TransactionsOrderByWithAggregationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? seller_id = _undefined,
    Object? product_id = _undefined,
    Object? customer_name = _undefined,
    Object? customer_phone = _undefined,
    Object? city_id = _undefined,
    Object? address = _undefined,
    Object? quantity = _undefined,
    Object? date = _undefined,
    Object? remainingPayement = _undefined,
    Object? totalPayement = _undefined,
    Object? transaction_type_id = _undefined,
    Object? status_id = _undefined,
    Object? $_count = _undefined,
    Object? $_avg = _undefined,
    Object? $_max = _undefined,
    Object? $_min = _undefined,
    Object? $_sum = _undefined,
  }) =>
      _then(Input$TransactionsOrderByWithAggregationInput._({
        ..._instance._$data,
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Enum$SortOrder?),
        if (seller_id != _undefined)
          'seller_id': (seller_id as Enum$SortOrder?),
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (customer_name != _undefined)
          'customer_name': (customer_name as Enum$SortOrder?),
        if (customer_phone != _undefined)
          'customer_phone': (customer_phone as Enum$SortOrder?),
        if (city_id != _undefined) 'city_id': (city_id as Enum$SortOrder?),
        if (address != _undefined) 'address': (address as Enum$SortOrder?),
        if (quantity != _undefined) 'quantity': (quantity as Enum$SortOrder?),
        if (date != _undefined) 'date': (date as Enum$SortOrder?),
        if (remainingPayement != _undefined)
          'remainingPayement': (remainingPayement as Enum$SortOrder?),
        if (totalPayement != _undefined)
          'totalPayement': (totalPayement as Enum$SortOrder?),
        if (transaction_type_id != _undefined)
          'transaction_type_id': (transaction_type_id as Enum$SortOrder?),
        if (status_id != _undefined)
          'status_id': (status_id as Enum$SortOrder?),
        if ($_count != _undefined)
          '_count': ($_count as Input$TransactionsCountOrderByAggregateInput?),
        if ($_avg != _undefined)
          '_avg': ($_avg as Input$TransactionsAvgOrderByAggregateInput?),
        if ($_max != _undefined)
          '_max': ($_max as Input$TransactionsMaxOrderByAggregateInput?),
        if ($_min != _undefined)
          '_min': ($_min as Input$TransactionsMinOrderByAggregateInput?),
        if ($_sum != _undefined)
          '_sum': ($_sum as Input$TransactionsSumOrderByAggregateInput?),
      }));
  CopyWith$Input$TransactionsCountOrderByAggregateInput<TRes> get $_count {
    final local$$_count = _instance.$_count;
    return local$$_count == null
        ? CopyWith$Input$TransactionsCountOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionsCountOrderByAggregateInput(
            local$$_count, (e) => call($_count: e));
  }

  CopyWith$Input$TransactionsAvgOrderByAggregateInput<TRes> get $_avg {
    final local$$_avg = _instance.$_avg;
    return local$$_avg == null
        ? CopyWith$Input$TransactionsAvgOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionsAvgOrderByAggregateInput(
            local$$_avg, (e) => call($_avg: e));
  }

  CopyWith$Input$TransactionsMaxOrderByAggregateInput<TRes> get $_max {
    final local$$_max = _instance.$_max;
    return local$$_max == null
        ? CopyWith$Input$TransactionsMaxOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionsMaxOrderByAggregateInput(
            local$$_max, (e) => call($_max: e));
  }

  CopyWith$Input$TransactionsMinOrderByAggregateInput<TRes> get $_min {
    final local$$_min = _instance.$_min;
    return local$$_min == null
        ? CopyWith$Input$TransactionsMinOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionsMinOrderByAggregateInput(
            local$$_min, (e) => call($_min: e));
  }

  CopyWith$Input$TransactionsSumOrderByAggregateInput<TRes> get $_sum {
    final local$$_sum = _instance.$_sum;
    return local$$_sum == null
        ? CopyWith$Input$TransactionsSumOrderByAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionsSumOrderByAggregateInput(
            local$$_sum, (e) => call($_sum: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsOrderByWithAggregationInput<TRes>
    implements CopyWith$Input$TransactionsOrderByWithAggregationInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsOrderByWithAggregationInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? seller_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? customer_name,
    Enum$SortOrder? customer_phone,
    Enum$SortOrder? city_id,
    Enum$SortOrder? address,
    Enum$SortOrder? quantity,
    Enum$SortOrder? date,
    Enum$SortOrder? remainingPayement,
    Enum$SortOrder? totalPayement,
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? status_id,
    Input$TransactionsCountOrderByAggregateInput? $_count,
    Input$TransactionsAvgOrderByAggregateInput? $_avg,
    Input$TransactionsMaxOrderByAggregateInput? $_max,
    Input$TransactionsMinOrderByAggregateInput? $_min,
    Input$TransactionsSumOrderByAggregateInput? $_sum,
  }) =>
      _res;
  CopyWith$Input$TransactionsCountOrderByAggregateInput<TRes> get $_count =>
      CopyWith$Input$TransactionsCountOrderByAggregateInput.stub(_res);
  CopyWith$Input$TransactionsAvgOrderByAggregateInput<TRes> get $_avg =>
      CopyWith$Input$TransactionsAvgOrderByAggregateInput.stub(_res);
  CopyWith$Input$TransactionsMaxOrderByAggregateInput<TRes> get $_max =>
      CopyWith$Input$TransactionsMaxOrderByAggregateInput.stub(_res);
  CopyWith$Input$TransactionsMinOrderByAggregateInput<TRes> get $_min =>
      CopyWith$Input$TransactionsMinOrderByAggregateInput.stub(_res);
  CopyWith$Input$TransactionsSumOrderByAggregateInput<TRes> get $_sum =>
      CopyWith$Input$TransactionsSumOrderByAggregateInput.stub(_res);
}

class Input$TransactionsCountOrderByAggregateInput {
  factory Input$TransactionsCountOrderByAggregateInput({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? seller_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? customer_name,
    Enum$SortOrder? customer_phone,
    Enum$SortOrder? city_id,
    Enum$SortOrder? address,
    Enum$SortOrder? quantity,
    Enum$SortOrder? date,
    Enum$SortOrder? remainingPayement,
    Enum$SortOrder? totalPayement,
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? status_id,
  }) =>
      Input$TransactionsCountOrderByAggregateInput._({
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (seller_id != null) r'seller_id': seller_id,
        if (product_id != null) r'product_id': product_id,
        if (customer_name != null) r'customer_name': customer_name,
        if (customer_phone != null) r'customer_phone': customer_phone,
        if (city_id != null) r'city_id': city_id,
        if (address != null) r'address': address,
        if (quantity != null) r'quantity': quantity,
        if (date != null) r'date': date,
        if (remainingPayement != null) r'remainingPayement': remainingPayement,
        if (totalPayement != null) r'totalPayement': totalPayement,
        if (transaction_type_id != null)
          r'transaction_type_id': transaction_type_id,
        if (status_id != null) r'status_id': status_id,
      });

  Input$TransactionsCountOrderByAggregateInput._(this._$data);

  factory Input$TransactionsCountOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_id as String));
    }
    if (data.containsKey('seller_id')) {
      final l$seller_id = data['seller_id'];
      result$data['seller_id'] = l$seller_id == null
          ? null
          : fromJson$Enum$SortOrder((l$seller_id as String));
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : fromJson$Enum$SortOrder((l$product_id as String));
    }
    if (data.containsKey('customer_name')) {
      final l$customer_name = data['customer_name'];
      result$data['customer_name'] = l$customer_name == null
          ? null
          : fromJson$Enum$SortOrder((l$customer_name as String));
    }
    if (data.containsKey('customer_phone')) {
      final l$customer_phone = data['customer_phone'];
      result$data['customer_phone'] = l$customer_phone == null
          ? null
          : fromJson$Enum$SortOrder((l$customer_phone as String));
    }
    if (data.containsKey('city_id')) {
      final l$city_id = data['city_id'];
      result$data['city_id'] = l$city_id == null
          ? null
          : fromJson$Enum$SortOrder((l$city_id as String));
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : fromJson$Enum$SortOrder((l$address as String));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : fromJson$Enum$SortOrder((l$quantity as String));
    }
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] =
          l$date == null ? null : fromJson$Enum$SortOrder((l$date as String));
    }
    if (data.containsKey('remainingPayement')) {
      final l$remainingPayement = data['remainingPayement'];
      result$data['remainingPayement'] = l$remainingPayement == null
          ? null
          : fromJson$Enum$SortOrder((l$remainingPayement as String));
    }
    if (data.containsKey('totalPayement')) {
      final l$totalPayement = data['totalPayement'];
      result$data['totalPayement'] = l$totalPayement == null
          ? null
          : fromJson$Enum$SortOrder((l$totalPayement as String));
    }
    if (data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = data['transaction_type_id'];
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_type_id as String));
    }
    if (data.containsKey('status_id')) {
      final l$status_id = data['status_id'];
      result$data['status_id'] = l$status_id == null
          ? null
          : fromJson$Enum$SortOrder((l$status_id as String));
    }
    return Input$TransactionsCountOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_id =>
      (_$data['transaction_id'] as Enum$SortOrder?);
  Enum$SortOrder? get seller_id => (_$data['seller_id'] as Enum$SortOrder?);
  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get customer_name =>
      (_$data['customer_name'] as Enum$SortOrder?);
  Enum$SortOrder? get customer_phone =>
      (_$data['customer_phone'] as Enum$SortOrder?);
  Enum$SortOrder? get city_id => (_$data['city_id'] as Enum$SortOrder?);
  Enum$SortOrder? get address => (_$data['address'] as Enum$SortOrder?);
  Enum$SortOrder? get quantity => (_$data['quantity'] as Enum$SortOrder?);
  Enum$SortOrder? get date => (_$data['date'] as Enum$SortOrder?);
  Enum$SortOrder? get remainingPayement =>
      (_$data['remainingPayement'] as Enum$SortOrder?);
  Enum$SortOrder? get totalPayement =>
      (_$data['totalPayement'] as Enum$SortOrder?);
  Enum$SortOrder? get transaction_type_id =>
      (_$data['transaction_type_id'] as Enum$SortOrder?);
  Enum$SortOrder? get status_id => (_$data['status_id'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_id')) {
      final l$transaction_id = transaction_id;
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_id);
    }
    if (_$data.containsKey('seller_id')) {
      final l$seller_id = seller_id;
      result$data['seller_id'] =
          l$seller_id == null ? null : toJson$Enum$SortOrder(l$seller_id);
    }
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] =
          l$product_id == null ? null : toJson$Enum$SortOrder(l$product_id);
    }
    if (_$data.containsKey('customer_name')) {
      final l$customer_name = customer_name;
      result$data['customer_name'] = l$customer_name == null
          ? null
          : toJson$Enum$SortOrder(l$customer_name);
    }
    if (_$data.containsKey('customer_phone')) {
      final l$customer_phone = customer_phone;
      result$data['customer_phone'] = l$customer_phone == null
          ? null
          : toJson$Enum$SortOrder(l$customer_phone);
    }
    if (_$data.containsKey('city_id')) {
      final l$city_id = city_id;
      result$data['city_id'] =
          l$city_id == null ? null : toJson$Enum$SortOrder(l$city_id);
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] =
          l$address == null ? null : toJson$Enum$SortOrder(l$address);
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] =
          l$quantity == null ? null : toJson$Enum$SortOrder(l$quantity);
    }
    if (_$data.containsKey('date')) {
      final l$date = date;
      result$data['date'] =
          l$date == null ? null : toJson$Enum$SortOrder(l$date);
    }
    if (_$data.containsKey('remainingPayement')) {
      final l$remainingPayement = remainingPayement;
      result$data['remainingPayement'] = l$remainingPayement == null
          ? null
          : toJson$Enum$SortOrder(l$remainingPayement);
    }
    if (_$data.containsKey('totalPayement')) {
      final l$totalPayement = totalPayement;
      result$data['totalPayement'] = l$totalPayement == null
          ? null
          : toJson$Enum$SortOrder(l$totalPayement);
    }
    if (_$data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = transaction_type_id;
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_type_id);
    }
    if (_$data.containsKey('status_id')) {
      final l$status_id = status_id;
      result$data['status_id'] =
          l$status_id == null ? null : toJson$Enum$SortOrder(l$status_id);
    }
    return result$data;
  }

  CopyWith$Input$TransactionsCountOrderByAggregateInput<
          Input$TransactionsCountOrderByAggregateInput>
      get copyWith => CopyWith$Input$TransactionsCountOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsCountOrderByAggregateInput) ||
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
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (_$data.containsKey('seller_id') !=
        other._$data.containsKey('seller_id')) {
      return false;
    }
    if (l$seller_id != lOther$seller_id) {
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
    final l$customer_name = customer_name;
    final lOther$customer_name = other.customer_name;
    if (_$data.containsKey('customer_name') !=
        other._$data.containsKey('customer_name')) {
      return false;
    }
    if (l$customer_name != lOther$customer_name) {
      return false;
    }
    final l$customer_phone = customer_phone;
    final lOther$customer_phone = other.customer_phone;
    if (_$data.containsKey('customer_phone') !=
        other._$data.containsKey('customer_phone')) {
      return false;
    }
    if (l$customer_phone != lOther$customer_phone) {
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
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
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
    final l$date = date;
    final lOther$date = other.date;
    if (_$data.containsKey('date') != other._$data.containsKey('date')) {
      return false;
    }
    if (l$date != lOther$date) {
      return false;
    }
    final l$remainingPayement = remainingPayement;
    final lOther$remainingPayement = other.remainingPayement;
    if (_$data.containsKey('remainingPayement') !=
        other._$data.containsKey('remainingPayement')) {
      return false;
    }
    if (l$remainingPayement != lOther$remainingPayement) {
      return false;
    }
    final l$totalPayement = totalPayement;
    final lOther$totalPayement = other.totalPayement;
    if (_$data.containsKey('totalPayement') !=
        other._$data.containsKey('totalPayement')) {
      return false;
    }
    if (l$totalPayement != lOther$totalPayement) {
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
    final l$status_id = status_id;
    final lOther$status_id = other.status_id;
    if (_$data.containsKey('status_id') !=
        other._$data.containsKey('status_id')) {
      return false;
    }
    if (l$status_id != lOther$status_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_id = transaction_id;
    final l$seller_id = seller_id;
    final l$product_id = product_id;
    final l$customer_name = customer_name;
    final l$customer_phone = customer_phone;
    final l$city_id = city_id;
    final l$address = address;
    final l$quantity = quantity;
    final l$date = date;
    final l$remainingPayement = remainingPayement;
    final l$totalPayement = totalPayement;
    final l$transaction_type_id = transaction_type_id;
    final l$status_id = status_id;
    return Object.hashAll([
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('seller_id') ? l$seller_id : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('customer_name') ? l$customer_name : const {},
      _$data.containsKey('customer_phone') ? l$customer_phone : const {},
      _$data.containsKey('city_id') ? l$city_id : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('date') ? l$date : const {},
      _$data.containsKey('remainingPayement') ? l$remainingPayement : const {},
      _$data.containsKey('totalPayement') ? l$totalPayement : const {},
      _$data.containsKey('transaction_type_id')
          ? l$transaction_type_id
          : const {},
      _$data.containsKey('status_id') ? l$status_id : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsCountOrderByAggregateInput<TRes> {
  factory CopyWith$Input$TransactionsCountOrderByAggregateInput(
    Input$TransactionsCountOrderByAggregateInput instance,
    TRes Function(Input$TransactionsCountOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$TransactionsCountOrderByAggregateInput;

  factory CopyWith$Input$TransactionsCountOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionsCountOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? seller_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? customer_name,
    Enum$SortOrder? customer_phone,
    Enum$SortOrder? city_id,
    Enum$SortOrder? address,
    Enum$SortOrder? quantity,
    Enum$SortOrder? date,
    Enum$SortOrder? remainingPayement,
    Enum$SortOrder? totalPayement,
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? status_id,
  });
}

class _CopyWithImpl$Input$TransactionsCountOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionsCountOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$TransactionsCountOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsCountOrderByAggregateInput _instance;

  final TRes Function(Input$TransactionsCountOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? seller_id = _undefined,
    Object? product_id = _undefined,
    Object? customer_name = _undefined,
    Object? customer_phone = _undefined,
    Object? city_id = _undefined,
    Object? address = _undefined,
    Object? quantity = _undefined,
    Object? date = _undefined,
    Object? remainingPayement = _undefined,
    Object? totalPayement = _undefined,
    Object? transaction_type_id = _undefined,
    Object? status_id = _undefined,
  }) =>
      _then(Input$TransactionsCountOrderByAggregateInput._({
        ..._instance._$data,
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Enum$SortOrder?),
        if (seller_id != _undefined)
          'seller_id': (seller_id as Enum$SortOrder?),
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (customer_name != _undefined)
          'customer_name': (customer_name as Enum$SortOrder?),
        if (customer_phone != _undefined)
          'customer_phone': (customer_phone as Enum$SortOrder?),
        if (city_id != _undefined) 'city_id': (city_id as Enum$SortOrder?),
        if (address != _undefined) 'address': (address as Enum$SortOrder?),
        if (quantity != _undefined) 'quantity': (quantity as Enum$SortOrder?),
        if (date != _undefined) 'date': (date as Enum$SortOrder?),
        if (remainingPayement != _undefined)
          'remainingPayement': (remainingPayement as Enum$SortOrder?),
        if (totalPayement != _undefined)
          'totalPayement': (totalPayement as Enum$SortOrder?),
        if (transaction_type_id != _undefined)
          'transaction_type_id': (transaction_type_id as Enum$SortOrder?),
        if (status_id != _undefined)
          'status_id': (status_id as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$TransactionsCountOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionsCountOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsCountOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? seller_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? customer_name,
    Enum$SortOrder? customer_phone,
    Enum$SortOrder? city_id,
    Enum$SortOrder? address,
    Enum$SortOrder? quantity,
    Enum$SortOrder? date,
    Enum$SortOrder? remainingPayement,
    Enum$SortOrder? totalPayement,
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? status_id,
  }) =>
      _res;
}

class Input$TransactionsAvgOrderByAggregateInput {
  factory Input$TransactionsAvgOrderByAggregateInput({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? seller_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? city_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? remainingPayement,
    Enum$SortOrder? totalPayement,
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? status_id,
  }) =>
      Input$TransactionsAvgOrderByAggregateInput._({
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (seller_id != null) r'seller_id': seller_id,
        if (product_id != null) r'product_id': product_id,
        if (city_id != null) r'city_id': city_id,
        if (quantity != null) r'quantity': quantity,
        if (remainingPayement != null) r'remainingPayement': remainingPayement,
        if (totalPayement != null) r'totalPayement': totalPayement,
        if (transaction_type_id != null)
          r'transaction_type_id': transaction_type_id,
        if (status_id != null) r'status_id': status_id,
      });

  Input$TransactionsAvgOrderByAggregateInput._(this._$data);

  factory Input$TransactionsAvgOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_id as String));
    }
    if (data.containsKey('seller_id')) {
      final l$seller_id = data['seller_id'];
      result$data['seller_id'] = l$seller_id == null
          ? null
          : fromJson$Enum$SortOrder((l$seller_id as String));
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : fromJson$Enum$SortOrder((l$product_id as String));
    }
    if (data.containsKey('city_id')) {
      final l$city_id = data['city_id'];
      result$data['city_id'] = l$city_id == null
          ? null
          : fromJson$Enum$SortOrder((l$city_id as String));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : fromJson$Enum$SortOrder((l$quantity as String));
    }
    if (data.containsKey('remainingPayement')) {
      final l$remainingPayement = data['remainingPayement'];
      result$data['remainingPayement'] = l$remainingPayement == null
          ? null
          : fromJson$Enum$SortOrder((l$remainingPayement as String));
    }
    if (data.containsKey('totalPayement')) {
      final l$totalPayement = data['totalPayement'];
      result$data['totalPayement'] = l$totalPayement == null
          ? null
          : fromJson$Enum$SortOrder((l$totalPayement as String));
    }
    if (data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = data['transaction_type_id'];
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_type_id as String));
    }
    if (data.containsKey('status_id')) {
      final l$status_id = data['status_id'];
      result$data['status_id'] = l$status_id == null
          ? null
          : fromJson$Enum$SortOrder((l$status_id as String));
    }
    return Input$TransactionsAvgOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_id =>
      (_$data['transaction_id'] as Enum$SortOrder?);
  Enum$SortOrder? get seller_id => (_$data['seller_id'] as Enum$SortOrder?);
  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get city_id => (_$data['city_id'] as Enum$SortOrder?);
  Enum$SortOrder? get quantity => (_$data['quantity'] as Enum$SortOrder?);
  Enum$SortOrder? get remainingPayement =>
      (_$data['remainingPayement'] as Enum$SortOrder?);
  Enum$SortOrder? get totalPayement =>
      (_$data['totalPayement'] as Enum$SortOrder?);
  Enum$SortOrder? get transaction_type_id =>
      (_$data['transaction_type_id'] as Enum$SortOrder?);
  Enum$SortOrder? get status_id => (_$data['status_id'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_id')) {
      final l$transaction_id = transaction_id;
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_id);
    }
    if (_$data.containsKey('seller_id')) {
      final l$seller_id = seller_id;
      result$data['seller_id'] =
          l$seller_id == null ? null : toJson$Enum$SortOrder(l$seller_id);
    }
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] =
          l$product_id == null ? null : toJson$Enum$SortOrder(l$product_id);
    }
    if (_$data.containsKey('city_id')) {
      final l$city_id = city_id;
      result$data['city_id'] =
          l$city_id == null ? null : toJson$Enum$SortOrder(l$city_id);
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] =
          l$quantity == null ? null : toJson$Enum$SortOrder(l$quantity);
    }
    if (_$data.containsKey('remainingPayement')) {
      final l$remainingPayement = remainingPayement;
      result$data['remainingPayement'] = l$remainingPayement == null
          ? null
          : toJson$Enum$SortOrder(l$remainingPayement);
    }
    if (_$data.containsKey('totalPayement')) {
      final l$totalPayement = totalPayement;
      result$data['totalPayement'] = l$totalPayement == null
          ? null
          : toJson$Enum$SortOrder(l$totalPayement);
    }
    if (_$data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = transaction_type_id;
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_type_id);
    }
    if (_$data.containsKey('status_id')) {
      final l$status_id = status_id;
      result$data['status_id'] =
          l$status_id == null ? null : toJson$Enum$SortOrder(l$status_id);
    }
    return result$data;
  }

  CopyWith$Input$TransactionsAvgOrderByAggregateInput<
          Input$TransactionsAvgOrderByAggregateInput>
      get copyWith => CopyWith$Input$TransactionsAvgOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsAvgOrderByAggregateInput) ||
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
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (_$data.containsKey('seller_id') !=
        other._$data.containsKey('seller_id')) {
      return false;
    }
    if (l$seller_id != lOther$seller_id) {
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
    final l$city_id = city_id;
    final lOther$city_id = other.city_id;
    if (_$data.containsKey('city_id') != other._$data.containsKey('city_id')) {
      return false;
    }
    if (l$city_id != lOther$city_id) {
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
    final l$remainingPayement = remainingPayement;
    final lOther$remainingPayement = other.remainingPayement;
    if (_$data.containsKey('remainingPayement') !=
        other._$data.containsKey('remainingPayement')) {
      return false;
    }
    if (l$remainingPayement != lOther$remainingPayement) {
      return false;
    }
    final l$totalPayement = totalPayement;
    final lOther$totalPayement = other.totalPayement;
    if (_$data.containsKey('totalPayement') !=
        other._$data.containsKey('totalPayement')) {
      return false;
    }
    if (l$totalPayement != lOther$totalPayement) {
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
    final l$status_id = status_id;
    final lOther$status_id = other.status_id;
    if (_$data.containsKey('status_id') !=
        other._$data.containsKey('status_id')) {
      return false;
    }
    if (l$status_id != lOther$status_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_id = transaction_id;
    final l$seller_id = seller_id;
    final l$product_id = product_id;
    final l$city_id = city_id;
    final l$quantity = quantity;
    final l$remainingPayement = remainingPayement;
    final l$totalPayement = totalPayement;
    final l$transaction_type_id = transaction_type_id;
    final l$status_id = status_id;
    return Object.hashAll([
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('seller_id') ? l$seller_id : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('city_id') ? l$city_id : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('remainingPayement') ? l$remainingPayement : const {},
      _$data.containsKey('totalPayement') ? l$totalPayement : const {},
      _$data.containsKey('transaction_type_id')
          ? l$transaction_type_id
          : const {},
      _$data.containsKey('status_id') ? l$status_id : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsAvgOrderByAggregateInput<TRes> {
  factory CopyWith$Input$TransactionsAvgOrderByAggregateInput(
    Input$TransactionsAvgOrderByAggregateInput instance,
    TRes Function(Input$TransactionsAvgOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$TransactionsAvgOrderByAggregateInput;

  factory CopyWith$Input$TransactionsAvgOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionsAvgOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? seller_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? city_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? remainingPayement,
    Enum$SortOrder? totalPayement,
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? status_id,
  });
}

class _CopyWithImpl$Input$TransactionsAvgOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionsAvgOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$TransactionsAvgOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsAvgOrderByAggregateInput _instance;

  final TRes Function(Input$TransactionsAvgOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? seller_id = _undefined,
    Object? product_id = _undefined,
    Object? city_id = _undefined,
    Object? quantity = _undefined,
    Object? remainingPayement = _undefined,
    Object? totalPayement = _undefined,
    Object? transaction_type_id = _undefined,
    Object? status_id = _undefined,
  }) =>
      _then(Input$TransactionsAvgOrderByAggregateInput._({
        ..._instance._$data,
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Enum$SortOrder?),
        if (seller_id != _undefined)
          'seller_id': (seller_id as Enum$SortOrder?),
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (city_id != _undefined) 'city_id': (city_id as Enum$SortOrder?),
        if (quantity != _undefined) 'quantity': (quantity as Enum$SortOrder?),
        if (remainingPayement != _undefined)
          'remainingPayement': (remainingPayement as Enum$SortOrder?),
        if (totalPayement != _undefined)
          'totalPayement': (totalPayement as Enum$SortOrder?),
        if (transaction_type_id != _undefined)
          'transaction_type_id': (transaction_type_id as Enum$SortOrder?),
        if (status_id != _undefined)
          'status_id': (status_id as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$TransactionsAvgOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionsAvgOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsAvgOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? seller_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? city_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? remainingPayement,
    Enum$SortOrder? totalPayement,
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? status_id,
  }) =>
      _res;
}

class Input$TransactionsMaxOrderByAggregateInput {
  factory Input$TransactionsMaxOrderByAggregateInput({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? seller_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? customer_name,
    Enum$SortOrder? customer_phone,
    Enum$SortOrder? city_id,
    Enum$SortOrder? address,
    Enum$SortOrder? quantity,
    Enum$SortOrder? date,
    Enum$SortOrder? remainingPayement,
    Enum$SortOrder? totalPayement,
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? status_id,
  }) =>
      Input$TransactionsMaxOrderByAggregateInput._({
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (seller_id != null) r'seller_id': seller_id,
        if (product_id != null) r'product_id': product_id,
        if (customer_name != null) r'customer_name': customer_name,
        if (customer_phone != null) r'customer_phone': customer_phone,
        if (city_id != null) r'city_id': city_id,
        if (address != null) r'address': address,
        if (quantity != null) r'quantity': quantity,
        if (date != null) r'date': date,
        if (remainingPayement != null) r'remainingPayement': remainingPayement,
        if (totalPayement != null) r'totalPayement': totalPayement,
        if (transaction_type_id != null)
          r'transaction_type_id': transaction_type_id,
        if (status_id != null) r'status_id': status_id,
      });

  Input$TransactionsMaxOrderByAggregateInput._(this._$data);

  factory Input$TransactionsMaxOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_id as String));
    }
    if (data.containsKey('seller_id')) {
      final l$seller_id = data['seller_id'];
      result$data['seller_id'] = l$seller_id == null
          ? null
          : fromJson$Enum$SortOrder((l$seller_id as String));
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : fromJson$Enum$SortOrder((l$product_id as String));
    }
    if (data.containsKey('customer_name')) {
      final l$customer_name = data['customer_name'];
      result$data['customer_name'] = l$customer_name == null
          ? null
          : fromJson$Enum$SortOrder((l$customer_name as String));
    }
    if (data.containsKey('customer_phone')) {
      final l$customer_phone = data['customer_phone'];
      result$data['customer_phone'] = l$customer_phone == null
          ? null
          : fromJson$Enum$SortOrder((l$customer_phone as String));
    }
    if (data.containsKey('city_id')) {
      final l$city_id = data['city_id'];
      result$data['city_id'] = l$city_id == null
          ? null
          : fromJson$Enum$SortOrder((l$city_id as String));
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : fromJson$Enum$SortOrder((l$address as String));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : fromJson$Enum$SortOrder((l$quantity as String));
    }
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] =
          l$date == null ? null : fromJson$Enum$SortOrder((l$date as String));
    }
    if (data.containsKey('remainingPayement')) {
      final l$remainingPayement = data['remainingPayement'];
      result$data['remainingPayement'] = l$remainingPayement == null
          ? null
          : fromJson$Enum$SortOrder((l$remainingPayement as String));
    }
    if (data.containsKey('totalPayement')) {
      final l$totalPayement = data['totalPayement'];
      result$data['totalPayement'] = l$totalPayement == null
          ? null
          : fromJson$Enum$SortOrder((l$totalPayement as String));
    }
    if (data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = data['transaction_type_id'];
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_type_id as String));
    }
    if (data.containsKey('status_id')) {
      final l$status_id = data['status_id'];
      result$data['status_id'] = l$status_id == null
          ? null
          : fromJson$Enum$SortOrder((l$status_id as String));
    }
    return Input$TransactionsMaxOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_id =>
      (_$data['transaction_id'] as Enum$SortOrder?);
  Enum$SortOrder? get seller_id => (_$data['seller_id'] as Enum$SortOrder?);
  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get customer_name =>
      (_$data['customer_name'] as Enum$SortOrder?);
  Enum$SortOrder? get customer_phone =>
      (_$data['customer_phone'] as Enum$SortOrder?);
  Enum$SortOrder? get city_id => (_$data['city_id'] as Enum$SortOrder?);
  Enum$SortOrder? get address => (_$data['address'] as Enum$SortOrder?);
  Enum$SortOrder? get quantity => (_$data['quantity'] as Enum$SortOrder?);
  Enum$SortOrder? get date => (_$data['date'] as Enum$SortOrder?);
  Enum$SortOrder? get remainingPayement =>
      (_$data['remainingPayement'] as Enum$SortOrder?);
  Enum$SortOrder? get totalPayement =>
      (_$data['totalPayement'] as Enum$SortOrder?);
  Enum$SortOrder? get transaction_type_id =>
      (_$data['transaction_type_id'] as Enum$SortOrder?);
  Enum$SortOrder? get status_id => (_$data['status_id'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_id')) {
      final l$transaction_id = transaction_id;
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_id);
    }
    if (_$data.containsKey('seller_id')) {
      final l$seller_id = seller_id;
      result$data['seller_id'] =
          l$seller_id == null ? null : toJson$Enum$SortOrder(l$seller_id);
    }
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] =
          l$product_id == null ? null : toJson$Enum$SortOrder(l$product_id);
    }
    if (_$data.containsKey('customer_name')) {
      final l$customer_name = customer_name;
      result$data['customer_name'] = l$customer_name == null
          ? null
          : toJson$Enum$SortOrder(l$customer_name);
    }
    if (_$data.containsKey('customer_phone')) {
      final l$customer_phone = customer_phone;
      result$data['customer_phone'] = l$customer_phone == null
          ? null
          : toJson$Enum$SortOrder(l$customer_phone);
    }
    if (_$data.containsKey('city_id')) {
      final l$city_id = city_id;
      result$data['city_id'] =
          l$city_id == null ? null : toJson$Enum$SortOrder(l$city_id);
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] =
          l$address == null ? null : toJson$Enum$SortOrder(l$address);
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] =
          l$quantity == null ? null : toJson$Enum$SortOrder(l$quantity);
    }
    if (_$data.containsKey('date')) {
      final l$date = date;
      result$data['date'] =
          l$date == null ? null : toJson$Enum$SortOrder(l$date);
    }
    if (_$data.containsKey('remainingPayement')) {
      final l$remainingPayement = remainingPayement;
      result$data['remainingPayement'] = l$remainingPayement == null
          ? null
          : toJson$Enum$SortOrder(l$remainingPayement);
    }
    if (_$data.containsKey('totalPayement')) {
      final l$totalPayement = totalPayement;
      result$data['totalPayement'] = l$totalPayement == null
          ? null
          : toJson$Enum$SortOrder(l$totalPayement);
    }
    if (_$data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = transaction_type_id;
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_type_id);
    }
    if (_$data.containsKey('status_id')) {
      final l$status_id = status_id;
      result$data['status_id'] =
          l$status_id == null ? null : toJson$Enum$SortOrder(l$status_id);
    }
    return result$data;
  }

  CopyWith$Input$TransactionsMaxOrderByAggregateInput<
          Input$TransactionsMaxOrderByAggregateInput>
      get copyWith => CopyWith$Input$TransactionsMaxOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsMaxOrderByAggregateInput) ||
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
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (_$data.containsKey('seller_id') !=
        other._$data.containsKey('seller_id')) {
      return false;
    }
    if (l$seller_id != lOther$seller_id) {
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
    final l$customer_name = customer_name;
    final lOther$customer_name = other.customer_name;
    if (_$data.containsKey('customer_name') !=
        other._$data.containsKey('customer_name')) {
      return false;
    }
    if (l$customer_name != lOther$customer_name) {
      return false;
    }
    final l$customer_phone = customer_phone;
    final lOther$customer_phone = other.customer_phone;
    if (_$data.containsKey('customer_phone') !=
        other._$data.containsKey('customer_phone')) {
      return false;
    }
    if (l$customer_phone != lOther$customer_phone) {
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
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
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
    final l$date = date;
    final lOther$date = other.date;
    if (_$data.containsKey('date') != other._$data.containsKey('date')) {
      return false;
    }
    if (l$date != lOther$date) {
      return false;
    }
    final l$remainingPayement = remainingPayement;
    final lOther$remainingPayement = other.remainingPayement;
    if (_$data.containsKey('remainingPayement') !=
        other._$data.containsKey('remainingPayement')) {
      return false;
    }
    if (l$remainingPayement != lOther$remainingPayement) {
      return false;
    }
    final l$totalPayement = totalPayement;
    final lOther$totalPayement = other.totalPayement;
    if (_$data.containsKey('totalPayement') !=
        other._$data.containsKey('totalPayement')) {
      return false;
    }
    if (l$totalPayement != lOther$totalPayement) {
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
    final l$status_id = status_id;
    final lOther$status_id = other.status_id;
    if (_$data.containsKey('status_id') !=
        other._$data.containsKey('status_id')) {
      return false;
    }
    if (l$status_id != lOther$status_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_id = transaction_id;
    final l$seller_id = seller_id;
    final l$product_id = product_id;
    final l$customer_name = customer_name;
    final l$customer_phone = customer_phone;
    final l$city_id = city_id;
    final l$address = address;
    final l$quantity = quantity;
    final l$date = date;
    final l$remainingPayement = remainingPayement;
    final l$totalPayement = totalPayement;
    final l$transaction_type_id = transaction_type_id;
    final l$status_id = status_id;
    return Object.hashAll([
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('seller_id') ? l$seller_id : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('customer_name') ? l$customer_name : const {},
      _$data.containsKey('customer_phone') ? l$customer_phone : const {},
      _$data.containsKey('city_id') ? l$city_id : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('date') ? l$date : const {},
      _$data.containsKey('remainingPayement') ? l$remainingPayement : const {},
      _$data.containsKey('totalPayement') ? l$totalPayement : const {},
      _$data.containsKey('transaction_type_id')
          ? l$transaction_type_id
          : const {},
      _$data.containsKey('status_id') ? l$status_id : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsMaxOrderByAggregateInput<TRes> {
  factory CopyWith$Input$TransactionsMaxOrderByAggregateInput(
    Input$TransactionsMaxOrderByAggregateInput instance,
    TRes Function(Input$TransactionsMaxOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$TransactionsMaxOrderByAggregateInput;

  factory CopyWith$Input$TransactionsMaxOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionsMaxOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? seller_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? customer_name,
    Enum$SortOrder? customer_phone,
    Enum$SortOrder? city_id,
    Enum$SortOrder? address,
    Enum$SortOrder? quantity,
    Enum$SortOrder? date,
    Enum$SortOrder? remainingPayement,
    Enum$SortOrder? totalPayement,
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? status_id,
  });
}

class _CopyWithImpl$Input$TransactionsMaxOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionsMaxOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$TransactionsMaxOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsMaxOrderByAggregateInput _instance;

  final TRes Function(Input$TransactionsMaxOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? seller_id = _undefined,
    Object? product_id = _undefined,
    Object? customer_name = _undefined,
    Object? customer_phone = _undefined,
    Object? city_id = _undefined,
    Object? address = _undefined,
    Object? quantity = _undefined,
    Object? date = _undefined,
    Object? remainingPayement = _undefined,
    Object? totalPayement = _undefined,
    Object? transaction_type_id = _undefined,
    Object? status_id = _undefined,
  }) =>
      _then(Input$TransactionsMaxOrderByAggregateInput._({
        ..._instance._$data,
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Enum$SortOrder?),
        if (seller_id != _undefined)
          'seller_id': (seller_id as Enum$SortOrder?),
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (customer_name != _undefined)
          'customer_name': (customer_name as Enum$SortOrder?),
        if (customer_phone != _undefined)
          'customer_phone': (customer_phone as Enum$SortOrder?),
        if (city_id != _undefined) 'city_id': (city_id as Enum$SortOrder?),
        if (address != _undefined) 'address': (address as Enum$SortOrder?),
        if (quantity != _undefined) 'quantity': (quantity as Enum$SortOrder?),
        if (date != _undefined) 'date': (date as Enum$SortOrder?),
        if (remainingPayement != _undefined)
          'remainingPayement': (remainingPayement as Enum$SortOrder?),
        if (totalPayement != _undefined)
          'totalPayement': (totalPayement as Enum$SortOrder?),
        if (transaction_type_id != _undefined)
          'transaction_type_id': (transaction_type_id as Enum$SortOrder?),
        if (status_id != _undefined)
          'status_id': (status_id as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$TransactionsMaxOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionsMaxOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsMaxOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? seller_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? customer_name,
    Enum$SortOrder? customer_phone,
    Enum$SortOrder? city_id,
    Enum$SortOrder? address,
    Enum$SortOrder? quantity,
    Enum$SortOrder? date,
    Enum$SortOrder? remainingPayement,
    Enum$SortOrder? totalPayement,
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? status_id,
  }) =>
      _res;
}

class Input$TransactionsMinOrderByAggregateInput {
  factory Input$TransactionsMinOrderByAggregateInput({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? seller_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? customer_name,
    Enum$SortOrder? customer_phone,
    Enum$SortOrder? city_id,
    Enum$SortOrder? address,
    Enum$SortOrder? quantity,
    Enum$SortOrder? date,
    Enum$SortOrder? remainingPayement,
    Enum$SortOrder? totalPayement,
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? status_id,
  }) =>
      Input$TransactionsMinOrderByAggregateInput._({
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (seller_id != null) r'seller_id': seller_id,
        if (product_id != null) r'product_id': product_id,
        if (customer_name != null) r'customer_name': customer_name,
        if (customer_phone != null) r'customer_phone': customer_phone,
        if (city_id != null) r'city_id': city_id,
        if (address != null) r'address': address,
        if (quantity != null) r'quantity': quantity,
        if (date != null) r'date': date,
        if (remainingPayement != null) r'remainingPayement': remainingPayement,
        if (totalPayement != null) r'totalPayement': totalPayement,
        if (transaction_type_id != null)
          r'transaction_type_id': transaction_type_id,
        if (status_id != null) r'status_id': status_id,
      });

  Input$TransactionsMinOrderByAggregateInput._(this._$data);

  factory Input$TransactionsMinOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_id as String));
    }
    if (data.containsKey('seller_id')) {
      final l$seller_id = data['seller_id'];
      result$data['seller_id'] = l$seller_id == null
          ? null
          : fromJson$Enum$SortOrder((l$seller_id as String));
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : fromJson$Enum$SortOrder((l$product_id as String));
    }
    if (data.containsKey('customer_name')) {
      final l$customer_name = data['customer_name'];
      result$data['customer_name'] = l$customer_name == null
          ? null
          : fromJson$Enum$SortOrder((l$customer_name as String));
    }
    if (data.containsKey('customer_phone')) {
      final l$customer_phone = data['customer_phone'];
      result$data['customer_phone'] = l$customer_phone == null
          ? null
          : fromJson$Enum$SortOrder((l$customer_phone as String));
    }
    if (data.containsKey('city_id')) {
      final l$city_id = data['city_id'];
      result$data['city_id'] = l$city_id == null
          ? null
          : fromJson$Enum$SortOrder((l$city_id as String));
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : fromJson$Enum$SortOrder((l$address as String));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : fromJson$Enum$SortOrder((l$quantity as String));
    }
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] =
          l$date == null ? null : fromJson$Enum$SortOrder((l$date as String));
    }
    if (data.containsKey('remainingPayement')) {
      final l$remainingPayement = data['remainingPayement'];
      result$data['remainingPayement'] = l$remainingPayement == null
          ? null
          : fromJson$Enum$SortOrder((l$remainingPayement as String));
    }
    if (data.containsKey('totalPayement')) {
      final l$totalPayement = data['totalPayement'];
      result$data['totalPayement'] = l$totalPayement == null
          ? null
          : fromJson$Enum$SortOrder((l$totalPayement as String));
    }
    if (data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = data['transaction_type_id'];
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_type_id as String));
    }
    if (data.containsKey('status_id')) {
      final l$status_id = data['status_id'];
      result$data['status_id'] = l$status_id == null
          ? null
          : fromJson$Enum$SortOrder((l$status_id as String));
    }
    return Input$TransactionsMinOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_id =>
      (_$data['transaction_id'] as Enum$SortOrder?);
  Enum$SortOrder? get seller_id => (_$data['seller_id'] as Enum$SortOrder?);
  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get customer_name =>
      (_$data['customer_name'] as Enum$SortOrder?);
  Enum$SortOrder? get customer_phone =>
      (_$data['customer_phone'] as Enum$SortOrder?);
  Enum$SortOrder? get city_id => (_$data['city_id'] as Enum$SortOrder?);
  Enum$SortOrder? get address => (_$data['address'] as Enum$SortOrder?);
  Enum$SortOrder? get quantity => (_$data['quantity'] as Enum$SortOrder?);
  Enum$SortOrder? get date => (_$data['date'] as Enum$SortOrder?);
  Enum$SortOrder? get remainingPayement =>
      (_$data['remainingPayement'] as Enum$SortOrder?);
  Enum$SortOrder? get totalPayement =>
      (_$data['totalPayement'] as Enum$SortOrder?);
  Enum$SortOrder? get transaction_type_id =>
      (_$data['transaction_type_id'] as Enum$SortOrder?);
  Enum$SortOrder? get status_id => (_$data['status_id'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_id')) {
      final l$transaction_id = transaction_id;
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_id);
    }
    if (_$data.containsKey('seller_id')) {
      final l$seller_id = seller_id;
      result$data['seller_id'] =
          l$seller_id == null ? null : toJson$Enum$SortOrder(l$seller_id);
    }
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] =
          l$product_id == null ? null : toJson$Enum$SortOrder(l$product_id);
    }
    if (_$data.containsKey('customer_name')) {
      final l$customer_name = customer_name;
      result$data['customer_name'] = l$customer_name == null
          ? null
          : toJson$Enum$SortOrder(l$customer_name);
    }
    if (_$data.containsKey('customer_phone')) {
      final l$customer_phone = customer_phone;
      result$data['customer_phone'] = l$customer_phone == null
          ? null
          : toJson$Enum$SortOrder(l$customer_phone);
    }
    if (_$data.containsKey('city_id')) {
      final l$city_id = city_id;
      result$data['city_id'] =
          l$city_id == null ? null : toJson$Enum$SortOrder(l$city_id);
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] =
          l$address == null ? null : toJson$Enum$SortOrder(l$address);
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] =
          l$quantity == null ? null : toJson$Enum$SortOrder(l$quantity);
    }
    if (_$data.containsKey('date')) {
      final l$date = date;
      result$data['date'] =
          l$date == null ? null : toJson$Enum$SortOrder(l$date);
    }
    if (_$data.containsKey('remainingPayement')) {
      final l$remainingPayement = remainingPayement;
      result$data['remainingPayement'] = l$remainingPayement == null
          ? null
          : toJson$Enum$SortOrder(l$remainingPayement);
    }
    if (_$data.containsKey('totalPayement')) {
      final l$totalPayement = totalPayement;
      result$data['totalPayement'] = l$totalPayement == null
          ? null
          : toJson$Enum$SortOrder(l$totalPayement);
    }
    if (_$data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = transaction_type_id;
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_type_id);
    }
    if (_$data.containsKey('status_id')) {
      final l$status_id = status_id;
      result$data['status_id'] =
          l$status_id == null ? null : toJson$Enum$SortOrder(l$status_id);
    }
    return result$data;
  }

  CopyWith$Input$TransactionsMinOrderByAggregateInput<
          Input$TransactionsMinOrderByAggregateInput>
      get copyWith => CopyWith$Input$TransactionsMinOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsMinOrderByAggregateInput) ||
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
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (_$data.containsKey('seller_id') !=
        other._$data.containsKey('seller_id')) {
      return false;
    }
    if (l$seller_id != lOther$seller_id) {
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
    final l$customer_name = customer_name;
    final lOther$customer_name = other.customer_name;
    if (_$data.containsKey('customer_name') !=
        other._$data.containsKey('customer_name')) {
      return false;
    }
    if (l$customer_name != lOther$customer_name) {
      return false;
    }
    final l$customer_phone = customer_phone;
    final lOther$customer_phone = other.customer_phone;
    if (_$data.containsKey('customer_phone') !=
        other._$data.containsKey('customer_phone')) {
      return false;
    }
    if (l$customer_phone != lOther$customer_phone) {
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
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
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
    final l$date = date;
    final lOther$date = other.date;
    if (_$data.containsKey('date') != other._$data.containsKey('date')) {
      return false;
    }
    if (l$date != lOther$date) {
      return false;
    }
    final l$remainingPayement = remainingPayement;
    final lOther$remainingPayement = other.remainingPayement;
    if (_$data.containsKey('remainingPayement') !=
        other._$data.containsKey('remainingPayement')) {
      return false;
    }
    if (l$remainingPayement != lOther$remainingPayement) {
      return false;
    }
    final l$totalPayement = totalPayement;
    final lOther$totalPayement = other.totalPayement;
    if (_$data.containsKey('totalPayement') !=
        other._$data.containsKey('totalPayement')) {
      return false;
    }
    if (l$totalPayement != lOther$totalPayement) {
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
    final l$status_id = status_id;
    final lOther$status_id = other.status_id;
    if (_$data.containsKey('status_id') !=
        other._$data.containsKey('status_id')) {
      return false;
    }
    if (l$status_id != lOther$status_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_id = transaction_id;
    final l$seller_id = seller_id;
    final l$product_id = product_id;
    final l$customer_name = customer_name;
    final l$customer_phone = customer_phone;
    final l$city_id = city_id;
    final l$address = address;
    final l$quantity = quantity;
    final l$date = date;
    final l$remainingPayement = remainingPayement;
    final l$totalPayement = totalPayement;
    final l$transaction_type_id = transaction_type_id;
    final l$status_id = status_id;
    return Object.hashAll([
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('seller_id') ? l$seller_id : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('customer_name') ? l$customer_name : const {},
      _$data.containsKey('customer_phone') ? l$customer_phone : const {},
      _$data.containsKey('city_id') ? l$city_id : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('date') ? l$date : const {},
      _$data.containsKey('remainingPayement') ? l$remainingPayement : const {},
      _$data.containsKey('totalPayement') ? l$totalPayement : const {},
      _$data.containsKey('transaction_type_id')
          ? l$transaction_type_id
          : const {},
      _$data.containsKey('status_id') ? l$status_id : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsMinOrderByAggregateInput<TRes> {
  factory CopyWith$Input$TransactionsMinOrderByAggregateInput(
    Input$TransactionsMinOrderByAggregateInput instance,
    TRes Function(Input$TransactionsMinOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$TransactionsMinOrderByAggregateInput;

  factory CopyWith$Input$TransactionsMinOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionsMinOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? seller_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? customer_name,
    Enum$SortOrder? customer_phone,
    Enum$SortOrder? city_id,
    Enum$SortOrder? address,
    Enum$SortOrder? quantity,
    Enum$SortOrder? date,
    Enum$SortOrder? remainingPayement,
    Enum$SortOrder? totalPayement,
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? status_id,
  });
}

class _CopyWithImpl$Input$TransactionsMinOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionsMinOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$TransactionsMinOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsMinOrderByAggregateInput _instance;

  final TRes Function(Input$TransactionsMinOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? seller_id = _undefined,
    Object? product_id = _undefined,
    Object? customer_name = _undefined,
    Object? customer_phone = _undefined,
    Object? city_id = _undefined,
    Object? address = _undefined,
    Object? quantity = _undefined,
    Object? date = _undefined,
    Object? remainingPayement = _undefined,
    Object? totalPayement = _undefined,
    Object? transaction_type_id = _undefined,
    Object? status_id = _undefined,
  }) =>
      _then(Input$TransactionsMinOrderByAggregateInput._({
        ..._instance._$data,
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Enum$SortOrder?),
        if (seller_id != _undefined)
          'seller_id': (seller_id as Enum$SortOrder?),
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (customer_name != _undefined)
          'customer_name': (customer_name as Enum$SortOrder?),
        if (customer_phone != _undefined)
          'customer_phone': (customer_phone as Enum$SortOrder?),
        if (city_id != _undefined) 'city_id': (city_id as Enum$SortOrder?),
        if (address != _undefined) 'address': (address as Enum$SortOrder?),
        if (quantity != _undefined) 'quantity': (quantity as Enum$SortOrder?),
        if (date != _undefined) 'date': (date as Enum$SortOrder?),
        if (remainingPayement != _undefined)
          'remainingPayement': (remainingPayement as Enum$SortOrder?),
        if (totalPayement != _undefined)
          'totalPayement': (totalPayement as Enum$SortOrder?),
        if (transaction_type_id != _undefined)
          'transaction_type_id': (transaction_type_id as Enum$SortOrder?),
        if (status_id != _undefined)
          'status_id': (status_id as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$TransactionsMinOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionsMinOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsMinOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? seller_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? customer_name,
    Enum$SortOrder? customer_phone,
    Enum$SortOrder? city_id,
    Enum$SortOrder? address,
    Enum$SortOrder? quantity,
    Enum$SortOrder? date,
    Enum$SortOrder? remainingPayement,
    Enum$SortOrder? totalPayement,
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? status_id,
  }) =>
      _res;
}

class Input$TransactionsSumOrderByAggregateInput {
  factory Input$TransactionsSumOrderByAggregateInput({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? seller_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? city_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? remainingPayement,
    Enum$SortOrder? totalPayement,
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? status_id,
  }) =>
      Input$TransactionsSumOrderByAggregateInput._({
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (seller_id != null) r'seller_id': seller_id,
        if (product_id != null) r'product_id': product_id,
        if (city_id != null) r'city_id': city_id,
        if (quantity != null) r'quantity': quantity,
        if (remainingPayement != null) r'remainingPayement': remainingPayement,
        if (totalPayement != null) r'totalPayement': totalPayement,
        if (transaction_type_id != null)
          r'transaction_type_id': transaction_type_id,
        if (status_id != null) r'status_id': status_id,
      });

  Input$TransactionsSumOrderByAggregateInput._(this._$data);

  factory Input$TransactionsSumOrderByAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_id as String));
    }
    if (data.containsKey('seller_id')) {
      final l$seller_id = data['seller_id'];
      result$data['seller_id'] = l$seller_id == null
          ? null
          : fromJson$Enum$SortOrder((l$seller_id as String));
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : fromJson$Enum$SortOrder((l$product_id as String));
    }
    if (data.containsKey('city_id')) {
      final l$city_id = data['city_id'];
      result$data['city_id'] = l$city_id == null
          ? null
          : fromJson$Enum$SortOrder((l$city_id as String));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : fromJson$Enum$SortOrder((l$quantity as String));
    }
    if (data.containsKey('remainingPayement')) {
      final l$remainingPayement = data['remainingPayement'];
      result$data['remainingPayement'] = l$remainingPayement == null
          ? null
          : fromJson$Enum$SortOrder((l$remainingPayement as String));
    }
    if (data.containsKey('totalPayement')) {
      final l$totalPayement = data['totalPayement'];
      result$data['totalPayement'] = l$totalPayement == null
          ? null
          : fromJson$Enum$SortOrder((l$totalPayement as String));
    }
    if (data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = data['transaction_type_id'];
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_type_id as String));
    }
    if (data.containsKey('status_id')) {
      final l$status_id = data['status_id'];
      result$data['status_id'] = l$status_id == null
          ? null
          : fromJson$Enum$SortOrder((l$status_id as String));
    }
    return Input$TransactionsSumOrderByAggregateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_id =>
      (_$data['transaction_id'] as Enum$SortOrder?);
  Enum$SortOrder? get seller_id => (_$data['seller_id'] as Enum$SortOrder?);
  Enum$SortOrder? get product_id => (_$data['product_id'] as Enum$SortOrder?);
  Enum$SortOrder? get city_id => (_$data['city_id'] as Enum$SortOrder?);
  Enum$SortOrder? get quantity => (_$data['quantity'] as Enum$SortOrder?);
  Enum$SortOrder? get remainingPayement =>
      (_$data['remainingPayement'] as Enum$SortOrder?);
  Enum$SortOrder? get totalPayement =>
      (_$data['totalPayement'] as Enum$SortOrder?);
  Enum$SortOrder? get transaction_type_id =>
      (_$data['transaction_type_id'] as Enum$SortOrder?);
  Enum$SortOrder? get status_id => (_$data['status_id'] as Enum$SortOrder?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_id')) {
      final l$transaction_id = transaction_id;
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_id);
    }
    if (_$data.containsKey('seller_id')) {
      final l$seller_id = seller_id;
      result$data['seller_id'] =
          l$seller_id == null ? null : toJson$Enum$SortOrder(l$seller_id);
    }
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] =
          l$product_id == null ? null : toJson$Enum$SortOrder(l$product_id);
    }
    if (_$data.containsKey('city_id')) {
      final l$city_id = city_id;
      result$data['city_id'] =
          l$city_id == null ? null : toJson$Enum$SortOrder(l$city_id);
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] =
          l$quantity == null ? null : toJson$Enum$SortOrder(l$quantity);
    }
    if (_$data.containsKey('remainingPayement')) {
      final l$remainingPayement = remainingPayement;
      result$data['remainingPayement'] = l$remainingPayement == null
          ? null
          : toJson$Enum$SortOrder(l$remainingPayement);
    }
    if (_$data.containsKey('totalPayement')) {
      final l$totalPayement = totalPayement;
      result$data['totalPayement'] = l$totalPayement == null
          ? null
          : toJson$Enum$SortOrder(l$totalPayement);
    }
    if (_$data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = transaction_type_id;
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_type_id);
    }
    if (_$data.containsKey('status_id')) {
      final l$status_id = status_id;
      result$data['status_id'] =
          l$status_id == null ? null : toJson$Enum$SortOrder(l$status_id);
    }
    return result$data;
  }

  CopyWith$Input$TransactionsSumOrderByAggregateInput<
          Input$TransactionsSumOrderByAggregateInput>
      get copyWith => CopyWith$Input$TransactionsSumOrderByAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsSumOrderByAggregateInput) ||
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
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (_$data.containsKey('seller_id') !=
        other._$data.containsKey('seller_id')) {
      return false;
    }
    if (l$seller_id != lOther$seller_id) {
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
    final l$city_id = city_id;
    final lOther$city_id = other.city_id;
    if (_$data.containsKey('city_id') != other._$data.containsKey('city_id')) {
      return false;
    }
    if (l$city_id != lOther$city_id) {
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
    final l$remainingPayement = remainingPayement;
    final lOther$remainingPayement = other.remainingPayement;
    if (_$data.containsKey('remainingPayement') !=
        other._$data.containsKey('remainingPayement')) {
      return false;
    }
    if (l$remainingPayement != lOther$remainingPayement) {
      return false;
    }
    final l$totalPayement = totalPayement;
    final lOther$totalPayement = other.totalPayement;
    if (_$data.containsKey('totalPayement') !=
        other._$data.containsKey('totalPayement')) {
      return false;
    }
    if (l$totalPayement != lOther$totalPayement) {
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
    final l$status_id = status_id;
    final lOther$status_id = other.status_id;
    if (_$data.containsKey('status_id') !=
        other._$data.containsKey('status_id')) {
      return false;
    }
    if (l$status_id != lOther$status_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_id = transaction_id;
    final l$seller_id = seller_id;
    final l$product_id = product_id;
    final l$city_id = city_id;
    final l$quantity = quantity;
    final l$remainingPayement = remainingPayement;
    final l$totalPayement = totalPayement;
    final l$transaction_type_id = transaction_type_id;
    final l$status_id = status_id;
    return Object.hashAll([
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('seller_id') ? l$seller_id : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('city_id') ? l$city_id : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('remainingPayement') ? l$remainingPayement : const {},
      _$data.containsKey('totalPayement') ? l$totalPayement : const {},
      _$data.containsKey('transaction_type_id')
          ? l$transaction_type_id
          : const {},
      _$data.containsKey('status_id') ? l$status_id : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsSumOrderByAggregateInput<TRes> {
  factory CopyWith$Input$TransactionsSumOrderByAggregateInput(
    Input$TransactionsSumOrderByAggregateInput instance,
    TRes Function(Input$TransactionsSumOrderByAggregateInput) then,
  ) = _CopyWithImpl$Input$TransactionsSumOrderByAggregateInput;

  factory CopyWith$Input$TransactionsSumOrderByAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionsSumOrderByAggregateInput;

  TRes call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? seller_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? city_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? remainingPayement,
    Enum$SortOrder? totalPayement,
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? status_id,
  });
}

class _CopyWithImpl$Input$TransactionsSumOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionsSumOrderByAggregateInput<TRes> {
  _CopyWithImpl$Input$TransactionsSumOrderByAggregateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsSumOrderByAggregateInput _instance;

  final TRes Function(Input$TransactionsSumOrderByAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? seller_id = _undefined,
    Object? product_id = _undefined,
    Object? city_id = _undefined,
    Object? quantity = _undefined,
    Object? remainingPayement = _undefined,
    Object? totalPayement = _undefined,
    Object? transaction_type_id = _undefined,
    Object? status_id = _undefined,
  }) =>
      _then(Input$TransactionsSumOrderByAggregateInput._({
        ..._instance._$data,
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Enum$SortOrder?),
        if (seller_id != _undefined)
          'seller_id': (seller_id as Enum$SortOrder?),
        if (product_id != _undefined)
          'product_id': (product_id as Enum$SortOrder?),
        if (city_id != _undefined) 'city_id': (city_id as Enum$SortOrder?),
        if (quantity != _undefined) 'quantity': (quantity as Enum$SortOrder?),
        if (remainingPayement != _undefined)
          'remainingPayement': (remainingPayement as Enum$SortOrder?),
        if (totalPayement != _undefined)
          'totalPayement': (totalPayement as Enum$SortOrder?),
        if (transaction_type_id != _undefined)
          'transaction_type_id': (transaction_type_id as Enum$SortOrder?),
        if (status_id != _undefined)
          'status_id': (status_id as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$TransactionsSumOrderByAggregateInput<TRes>
    implements CopyWith$Input$TransactionsSumOrderByAggregateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsSumOrderByAggregateInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? seller_id,
    Enum$SortOrder? product_id,
    Enum$SortOrder? city_id,
    Enum$SortOrder? quantity,
    Enum$SortOrder? remainingPayement,
    Enum$SortOrder? totalPayement,
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? status_id,
  }) =>
      _res;
}

class Input$TransactionsScalarWhereWithAggregatesInput {
  factory Input$TransactionsScalarWhereWithAggregatesInput({
    List<Input$TransactionsScalarWhereWithAggregatesInput>? AND,
    List<Input$TransactionsScalarWhereWithAggregatesInput>? OR,
    List<Input$TransactionsScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? transaction_id,
    Input$IntWithAggregatesFilter? seller_id,
    Input$IntWithAggregatesFilter? product_id,
    Input$StringWithAggregatesFilter? customer_name,
    Input$StringWithAggregatesFilter? customer_phone,
    Input$IntWithAggregatesFilter? city_id,
    Input$StringWithAggregatesFilter? address,
    Input$IntWithAggregatesFilter? quantity,
    Input$DateTimeWithAggregatesFilter? date,
    Input$FloatWithAggregatesFilter? remainingPayement,
    Input$FloatWithAggregatesFilter? totalPayement,
    Input$IntWithAggregatesFilter? transaction_type_id,
    Input$IntWithAggregatesFilter? status_id,
  }) =>
      Input$TransactionsScalarWhereWithAggregatesInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (seller_id != null) r'seller_id': seller_id,
        if (product_id != null) r'product_id': product_id,
        if (customer_name != null) r'customer_name': customer_name,
        if (customer_phone != null) r'customer_phone': customer_phone,
        if (city_id != null) r'city_id': city_id,
        if (address != null) r'address': address,
        if (quantity != null) r'quantity': quantity,
        if (date != null) r'date': date,
        if (remainingPayement != null) r'remainingPayement': remainingPayement,
        if (totalPayement != null) r'totalPayement': totalPayement,
        if (transaction_type_id != null)
          r'transaction_type_id': transaction_type_id,
        if (status_id != null) r'status_id': status_id,
      });

  Input$TransactionsScalarWhereWithAggregatesInput._(this._$data);

  factory Input$TransactionsScalarWhereWithAggregatesInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionsScalarWhereWithAggregatesInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionsScalarWhereWithAggregatesInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionsScalarWhereWithAggregatesInput.fromJson(
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
    if (data.containsKey('seller_id')) {
      final l$seller_id = data['seller_id'];
      result$data['seller_id'] = l$seller_id == null
          ? null
          : Input$IntWithAggregatesFilter.fromJson(
              (l$seller_id as Map<String, dynamic>));
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : Input$IntWithAggregatesFilter.fromJson(
              (l$product_id as Map<String, dynamic>));
    }
    if (data.containsKey('customer_name')) {
      final l$customer_name = data['customer_name'];
      result$data['customer_name'] = l$customer_name == null
          ? null
          : Input$StringWithAggregatesFilter.fromJson(
              (l$customer_name as Map<String, dynamic>));
    }
    if (data.containsKey('customer_phone')) {
      final l$customer_phone = data['customer_phone'];
      result$data['customer_phone'] = l$customer_phone == null
          ? null
          : Input$StringWithAggregatesFilter.fromJson(
              (l$customer_phone as Map<String, dynamic>));
    }
    if (data.containsKey('city_id')) {
      final l$city_id = data['city_id'];
      result$data['city_id'] = l$city_id == null
          ? null
          : Input$IntWithAggregatesFilter.fromJson(
              (l$city_id as Map<String, dynamic>));
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input$StringWithAggregatesFilter.fromJson(
              (l$address as Map<String, dynamic>));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : Input$IntWithAggregatesFilter.fromJson(
              (l$quantity as Map<String, dynamic>));
    }
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] = l$date == null
          ? null
          : Input$DateTimeWithAggregatesFilter.fromJson(
              (l$date as Map<String, dynamic>));
    }
    if (data.containsKey('remainingPayement')) {
      final l$remainingPayement = data['remainingPayement'];
      result$data['remainingPayement'] = l$remainingPayement == null
          ? null
          : Input$FloatWithAggregatesFilter.fromJson(
              (l$remainingPayement as Map<String, dynamic>));
    }
    if (data.containsKey('totalPayement')) {
      final l$totalPayement = data['totalPayement'];
      result$data['totalPayement'] = l$totalPayement == null
          ? null
          : Input$FloatWithAggregatesFilter.fromJson(
              (l$totalPayement as Map<String, dynamic>));
    }
    if (data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = data['transaction_type_id'];
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : Input$IntWithAggregatesFilter.fromJson(
              (l$transaction_type_id as Map<String, dynamic>));
    }
    if (data.containsKey('status_id')) {
      final l$status_id = data['status_id'];
      result$data['status_id'] = l$status_id == null
          ? null
          : Input$IntWithAggregatesFilter.fromJson(
              (l$status_id as Map<String, dynamic>));
    }
    return Input$TransactionsScalarWhereWithAggregatesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TransactionsScalarWhereWithAggregatesInput>? get AND =>
      (_$data['AND']
          as List<Input$TransactionsScalarWhereWithAggregatesInput>?);
  List<Input$TransactionsScalarWhereWithAggregatesInput>? get OR =>
      (_$data['OR'] as List<Input$TransactionsScalarWhereWithAggregatesInput>?);
  List<Input$TransactionsScalarWhereWithAggregatesInput>? get NOT =>
      (_$data['NOT']
          as List<Input$TransactionsScalarWhereWithAggregatesInput>?);
  Input$IntWithAggregatesFilter? get transaction_id =>
      (_$data['transaction_id'] as Input$IntWithAggregatesFilter?);
  Input$IntWithAggregatesFilter? get seller_id =>
      (_$data['seller_id'] as Input$IntWithAggregatesFilter?);
  Input$IntWithAggregatesFilter? get product_id =>
      (_$data['product_id'] as Input$IntWithAggregatesFilter?);
  Input$StringWithAggregatesFilter? get customer_name =>
      (_$data['customer_name'] as Input$StringWithAggregatesFilter?);
  Input$StringWithAggregatesFilter? get customer_phone =>
      (_$data['customer_phone'] as Input$StringWithAggregatesFilter?);
  Input$IntWithAggregatesFilter? get city_id =>
      (_$data['city_id'] as Input$IntWithAggregatesFilter?);
  Input$StringWithAggregatesFilter? get address =>
      (_$data['address'] as Input$StringWithAggregatesFilter?);
  Input$IntWithAggregatesFilter? get quantity =>
      (_$data['quantity'] as Input$IntWithAggregatesFilter?);
  Input$DateTimeWithAggregatesFilter? get date =>
      (_$data['date'] as Input$DateTimeWithAggregatesFilter?);
  Input$FloatWithAggregatesFilter? get remainingPayement =>
      (_$data['remainingPayement'] as Input$FloatWithAggregatesFilter?);
  Input$FloatWithAggregatesFilter? get totalPayement =>
      (_$data['totalPayement'] as Input$FloatWithAggregatesFilter?);
  Input$IntWithAggregatesFilter? get transaction_type_id =>
      (_$data['transaction_type_id'] as Input$IntWithAggregatesFilter?);
  Input$IntWithAggregatesFilter? get status_id =>
      (_$data['status_id'] as Input$IntWithAggregatesFilter?);
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
    if (_$data.containsKey('seller_id')) {
      final l$seller_id = seller_id;
      result$data['seller_id'] = l$seller_id?.toJson();
    }
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] = l$product_id?.toJson();
    }
    if (_$data.containsKey('customer_name')) {
      final l$customer_name = customer_name;
      result$data['customer_name'] = l$customer_name?.toJson();
    }
    if (_$data.containsKey('customer_phone')) {
      final l$customer_phone = customer_phone;
      result$data['customer_phone'] = l$customer_phone?.toJson();
    }
    if (_$data.containsKey('city_id')) {
      final l$city_id = city_id;
      result$data['city_id'] = l$city_id?.toJson();
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] = l$quantity?.toJson();
    }
    if (_$data.containsKey('date')) {
      final l$date = date;
      result$data['date'] = l$date?.toJson();
    }
    if (_$data.containsKey('remainingPayement')) {
      final l$remainingPayement = remainingPayement;
      result$data['remainingPayement'] = l$remainingPayement?.toJson();
    }
    if (_$data.containsKey('totalPayement')) {
      final l$totalPayement = totalPayement;
      result$data['totalPayement'] = l$totalPayement?.toJson();
    }
    if (_$data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = transaction_type_id;
      result$data['transaction_type_id'] = l$transaction_type_id?.toJson();
    }
    if (_$data.containsKey('status_id')) {
      final l$status_id = status_id;
      result$data['status_id'] = l$status_id?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionsScalarWhereWithAggregatesInput<
          Input$TransactionsScalarWhereWithAggregatesInput>
      get copyWith => CopyWith$Input$TransactionsScalarWhereWithAggregatesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsScalarWhereWithAggregatesInput) ||
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
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (_$data.containsKey('seller_id') !=
        other._$data.containsKey('seller_id')) {
      return false;
    }
    if (l$seller_id != lOther$seller_id) {
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
    final l$customer_name = customer_name;
    final lOther$customer_name = other.customer_name;
    if (_$data.containsKey('customer_name') !=
        other._$data.containsKey('customer_name')) {
      return false;
    }
    if (l$customer_name != lOther$customer_name) {
      return false;
    }
    final l$customer_phone = customer_phone;
    final lOther$customer_phone = other.customer_phone;
    if (_$data.containsKey('customer_phone') !=
        other._$data.containsKey('customer_phone')) {
      return false;
    }
    if (l$customer_phone != lOther$customer_phone) {
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
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
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
    final l$date = date;
    final lOther$date = other.date;
    if (_$data.containsKey('date') != other._$data.containsKey('date')) {
      return false;
    }
    if (l$date != lOther$date) {
      return false;
    }
    final l$remainingPayement = remainingPayement;
    final lOther$remainingPayement = other.remainingPayement;
    if (_$data.containsKey('remainingPayement') !=
        other._$data.containsKey('remainingPayement')) {
      return false;
    }
    if (l$remainingPayement != lOther$remainingPayement) {
      return false;
    }
    final l$totalPayement = totalPayement;
    final lOther$totalPayement = other.totalPayement;
    if (_$data.containsKey('totalPayement') !=
        other._$data.containsKey('totalPayement')) {
      return false;
    }
    if (l$totalPayement != lOther$totalPayement) {
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
    final l$status_id = status_id;
    final lOther$status_id = other.status_id;
    if (_$data.containsKey('status_id') !=
        other._$data.containsKey('status_id')) {
      return false;
    }
    if (l$status_id != lOther$status_id) {
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
    final l$seller_id = seller_id;
    final l$product_id = product_id;
    final l$customer_name = customer_name;
    final l$customer_phone = customer_phone;
    final l$city_id = city_id;
    final l$address = address;
    final l$quantity = quantity;
    final l$date = date;
    final l$remainingPayement = remainingPayement;
    final l$totalPayement = totalPayement;
    final l$transaction_type_id = transaction_type_id;
    final l$status_id = status_id;
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
      _$data.containsKey('seller_id') ? l$seller_id : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('customer_name') ? l$customer_name : const {},
      _$data.containsKey('customer_phone') ? l$customer_phone : const {},
      _$data.containsKey('city_id') ? l$city_id : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('date') ? l$date : const {},
      _$data.containsKey('remainingPayement') ? l$remainingPayement : const {},
      _$data.containsKey('totalPayement') ? l$totalPayement : const {},
      _$data.containsKey('transaction_type_id')
          ? l$transaction_type_id
          : const {},
      _$data.containsKey('status_id') ? l$status_id : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsScalarWhereWithAggregatesInput<TRes> {
  factory CopyWith$Input$TransactionsScalarWhereWithAggregatesInput(
    Input$TransactionsScalarWhereWithAggregatesInput instance,
    TRes Function(Input$TransactionsScalarWhereWithAggregatesInput) then,
  ) = _CopyWithImpl$Input$TransactionsScalarWhereWithAggregatesInput;

  factory CopyWith$Input$TransactionsScalarWhereWithAggregatesInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsScalarWhereWithAggregatesInput;

  TRes call({
    List<Input$TransactionsScalarWhereWithAggregatesInput>? AND,
    List<Input$TransactionsScalarWhereWithAggregatesInput>? OR,
    List<Input$TransactionsScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? transaction_id,
    Input$IntWithAggregatesFilter? seller_id,
    Input$IntWithAggregatesFilter? product_id,
    Input$StringWithAggregatesFilter? customer_name,
    Input$StringWithAggregatesFilter? customer_phone,
    Input$IntWithAggregatesFilter? city_id,
    Input$StringWithAggregatesFilter? address,
    Input$IntWithAggregatesFilter? quantity,
    Input$DateTimeWithAggregatesFilter? date,
    Input$FloatWithAggregatesFilter? remainingPayement,
    Input$FloatWithAggregatesFilter? totalPayement,
    Input$IntWithAggregatesFilter? transaction_type_id,
    Input$IntWithAggregatesFilter? status_id,
  });
  TRes AND(
      Iterable<Input$TransactionsScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsScalarWhereWithAggregatesInput<
                      Input$TransactionsScalarWhereWithAggregatesInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$TransactionsScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsScalarWhereWithAggregatesInput<
                      Input$TransactionsScalarWhereWithAggregatesInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$TransactionsScalarWhereWithAggregatesInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsScalarWhereWithAggregatesInput<
                      Input$TransactionsScalarWhereWithAggregatesInput>>?)
          _fn);
  CopyWith$Input$DateTimeWithAggregatesFilter<TRes> get date;
}

class _CopyWithImpl$Input$TransactionsScalarWhereWithAggregatesInput<TRes>
    implements CopyWith$Input$TransactionsScalarWhereWithAggregatesInput<TRes> {
  _CopyWithImpl$Input$TransactionsScalarWhereWithAggregatesInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsScalarWhereWithAggregatesInput _instance;

  final TRes Function(Input$TransactionsScalarWhereWithAggregatesInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? transaction_id = _undefined,
    Object? seller_id = _undefined,
    Object? product_id = _undefined,
    Object? customer_name = _undefined,
    Object? customer_phone = _undefined,
    Object? city_id = _undefined,
    Object? address = _undefined,
    Object? quantity = _undefined,
    Object? date = _undefined,
    Object? remainingPayement = _undefined,
    Object? totalPayement = _undefined,
    Object? transaction_type_id = _undefined,
    Object? status_id = _undefined,
  }) =>
      _then(Input$TransactionsScalarWhereWithAggregatesInput._({
        ..._instance._$data,
        if (AND != _undefined)
          'AND':
              (AND as List<Input$TransactionsScalarWhereWithAggregatesInput>?),
        if (OR != _undefined)
          'OR': (OR as List<Input$TransactionsScalarWhereWithAggregatesInput>?),
        if (NOT != _undefined)
          'NOT':
              (NOT as List<Input$TransactionsScalarWhereWithAggregatesInput>?),
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Input$IntWithAggregatesFilter?),
        if (seller_id != _undefined)
          'seller_id': (seller_id as Input$IntWithAggregatesFilter?),
        if (product_id != _undefined)
          'product_id': (product_id as Input$IntWithAggregatesFilter?),
        if (customer_name != _undefined)
          'customer_name': (customer_name as Input$StringWithAggregatesFilter?),
        if (customer_phone != _undefined)
          'customer_phone':
              (customer_phone as Input$StringWithAggregatesFilter?),
        if (city_id != _undefined)
          'city_id': (city_id as Input$IntWithAggregatesFilter?),
        if (address != _undefined)
          'address': (address as Input$StringWithAggregatesFilter?),
        if (quantity != _undefined)
          'quantity': (quantity as Input$IntWithAggregatesFilter?),
        if (date != _undefined)
          'date': (date as Input$DateTimeWithAggregatesFilter?),
        if (remainingPayement != _undefined)
          'remainingPayement':
              (remainingPayement as Input$FloatWithAggregatesFilter?),
        if (totalPayement != _undefined)
          'totalPayement': (totalPayement as Input$FloatWithAggregatesFilter?),
        if (transaction_type_id != _undefined)
          'transaction_type_id':
              (transaction_type_id as Input$IntWithAggregatesFilter?),
        if (status_id != _undefined)
          'status_id': (status_id as Input$IntWithAggregatesFilter?),
      }));
  TRes AND(
          Iterable<Input$TransactionsScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsScalarWhereWithAggregatesInput<
                          Input$TransactionsScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND?.map(
              (e) => CopyWith$Input$TransactionsScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes OR(
          Iterable<Input$TransactionsScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsScalarWhereWithAggregatesInput<
                          Input$TransactionsScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR?.map(
              (e) => CopyWith$Input$TransactionsScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes NOT(
          Iterable<Input$TransactionsScalarWhereWithAggregatesInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsScalarWhereWithAggregatesInput<
                          Input$TransactionsScalarWhereWithAggregatesInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT?.map(
              (e) => CopyWith$Input$TransactionsScalarWhereWithAggregatesInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$DateTimeWithAggregatesFilter<TRes> get date {
    final local$date = _instance.date;
    return local$date == null
        ? CopyWith$Input$DateTimeWithAggregatesFilter.stub(_then(_instance))
        : CopyWith$Input$DateTimeWithAggregatesFilter(
            local$date, (e) => call(date: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsScalarWhereWithAggregatesInput<TRes>
    implements CopyWith$Input$TransactionsScalarWhereWithAggregatesInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsScalarWhereWithAggregatesInput(this._res);

  TRes _res;

  call({
    List<Input$TransactionsScalarWhereWithAggregatesInput>? AND,
    List<Input$TransactionsScalarWhereWithAggregatesInput>? OR,
    List<Input$TransactionsScalarWhereWithAggregatesInput>? NOT,
    Input$IntWithAggregatesFilter? transaction_id,
    Input$IntWithAggregatesFilter? seller_id,
    Input$IntWithAggregatesFilter? product_id,
    Input$StringWithAggregatesFilter? customer_name,
    Input$StringWithAggregatesFilter? customer_phone,
    Input$IntWithAggregatesFilter? city_id,
    Input$StringWithAggregatesFilter? address,
    Input$IntWithAggregatesFilter? quantity,
    Input$DateTimeWithAggregatesFilter? date,
    Input$FloatWithAggregatesFilter? remainingPayement,
    Input$FloatWithAggregatesFilter? totalPayement,
    Input$IntWithAggregatesFilter? transaction_type_id,
    Input$IntWithAggregatesFilter? status_id,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
  CopyWith$Input$DateTimeWithAggregatesFilter<TRes> get date =>
      CopyWith$Input$DateTimeWithAggregatesFilter.stub(_res);
}

class Input$DateTimeWithAggregatesFilter {
  factory Input$DateTimeWithAggregatesFilter({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    Input$NestedDateTimeWithAggregatesFilter? not,
    Input$NestedIntFilter? $_count,
    Input$NestedDateTimeFilter? $_min,
    Input$NestedDateTimeFilter? $_max,
  }) =>
      Input$DateTimeWithAggregatesFilter._({
        if (equals != null) r'equals': equals,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (not != null) r'not': not,
        if ($_count != null) r'_count': $_count,
        if ($_min != null) r'_min': $_min,
        if ($_max != null) r'_max': $_max,
      });

  Input$DateTimeWithAggregatesFilter._(this._$data);

  factory Input$DateTimeWithAggregatesFilter.fromJson(
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
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = l$not == null
          ? null
          : Input$NestedDateTimeWithAggregatesFilter.fromJson(
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
          : Input$NestedDateTimeFilter.fromJson(
              (l$$_min as Map<String, dynamic>));
    }
    if (data.containsKey('_max')) {
      final l$$_max = data['_max'];
      result$data['_max'] = l$$_max == null
          ? null
          : Input$NestedDateTimeFilter.fromJson(
              (l$$_max as Map<String, dynamic>));
    }
    return Input$DateTimeWithAggregatesFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get equals => (_$data['equals'] as String?);
  List<String>? get $in => (_$data['in'] as List<String>?);
  List<String>? get notIn => (_$data['notIn'] as List<String>?);
  String? get lt => (_$data['lt'] as String?);
  String? get lte => (_$data['lte'] as String?);
  String? get gt => (_$data['gt'] as String?);
  String? get gte => (_$data['gte'] as String?);
  Input$NestedDateTimeWithAggregatesFilter? get not =>
      (_$data['not'] as Input$NestedDateTimeWithAggregatesFilter?);
  Input$NestedIntFilter? get $_count =>
      (_$data['_count'] as Input$NestedIntFilter?);
  Input$NestedDateTimeFilter? get $_min =>
      (_$data['_min'] as Input$NestedDateTimeFilter?);
  Input$NestedDateTimeFilter? get $_max =>
      (_$data['_max'] as Input$NestedDateTimeFilter?);
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

  CopyWith$Input$DateTimeWithAggregatesFilter<
          Input$DateTimeWithAggregatesFilter>
      get copyWith => CopyWith$Input$DateTimeWithAggregatesFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DateTimeWithAggregatesFilter) ||
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
      _$data.containsKey('_min') ? l$$_min : const {},
      _$data.containsKey('_max') ? l$$_max : const {},
    ]);
  }
}

abstract class CopyWith$Input$DateTimeWithAggregatesFilter<TRes> {
  factory CopyWith$Input$DateTimeWithAggregatesFilter(
    Input$DateTimeWithAggregatesFilter instance,
    TRes Function(Input$DateTimeWithAggregatesFilter) then,
  ) = _CopyWithImpl$Input$DateTimeWithAggregatesFilter;

  factory CopyWith$Input$DateTimeWithAggregatesFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$DateTimeWithAggregatesFilter;

  TRes call({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    Input$NestedDateTimeWithAggregatesFilter? not,
    Input$NestedIntFilter? $_count,
    Input$NestedDateTimeFilter? $_min,
    Input$NestedDateTimeFilter? $_max,
  });
  CopyWith$Input$NestedDateTimeWithAggregatesFilter<TRes> get not;
}

class _CopyWithImpl$Input$DateTimeWithAggregatesFilter<TRes>
    implements CopyWith$Input$DateTimeWithAggregatesFilter<TRes> {
  _CopyWithImpl$Input$DateTimeWithAggregatesFilter(
    this._instance,
    this._then,
  );

  final Input$DateTimeWithAggregatesFilter _instance;

  final TRes Function(Input$DateTimeWithAggregatesFilter) _then;

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
    Object? $_min = _undefined,
    Object? $_max = _undefined,
  }) =>
      _then(Input$DateTimeWithAggregatesFilter._({
        ..._instance._$data,
        if (equals != _undefined) 'equals': (equals as String?),
        if ($in != _undefined) 'in': ($in as List<String>?),
        if (notIn != _undefined) 'notIn': (notIn as List<String>?),
        if (lt != _undefined) 'lt': (lt as String?),
        if (lte != _undefined) 'lte': (lte as String?),
        if (gt != _undefined) 'gt': (gt as String?),
        if (gte != _undefined) 'gte': (gte as String?),
        if (not != _undefined)
          'not': (not as Input$NestedDateTimeWithAggregatesFilter?),
        if ($_count != _undefined)
          '_count': ($_count as Input$NestedIntFilter?),
        if ($_min != _undefined) '_min': ($_min as Input$NestedDateTimeFilter?),
        if ($_max != _undefined) '_max': ($_max as Input$NestedDateTimeFilter?),
      }));
  CopyWith$Input$NestedDateTimeWithAggregatesFilter<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$NestedDateTimeWithAggregatesFilter.stub(
            _then(_instance))
        : CopyWith$Input$NestedDateTimeWithAggregatesFilter(
            local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$DateTimeWithAggregatesFilter<TRes>
    implements CopyWith$Input$DateTimeWithAggregatesFilter<TRes> {
  _CopyWithStubImpl$Input$DateTimeWithAggregatesFilter(this._res);

  TRes _res;

  call({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    Input$NestedDateTimeWithAggregatesFilter? not,
    Input$NestedIntFilter? $_count,
    Input$NestedDateTimeFilter? $_min,
    Input$NestedDateTimeFilter? $_max,
  }) =>
      _res;
  CopyWith$Input$NestedDateTimeWithAggregatesFilter<TRes> get not =>
      CopyWith$Input$NestedDateTimeWithAggregatesFilter.stub(_res);
}

class Input$NestedDateTimeWithAggregatesFilter {
  factory Input$NestedDateTimeWithAggregatesFilter({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    Input$NestedDateTimeWithAggregatesFilter? not,
    Input$NestedIntFilter? $_count,
    Input$NestedDateTimeFilter? $_min,
    Input$NestedDateTimeFilter? $_max,
  }) =>
      Input$NestedDateTimeWithAggregatesFilter._({
        if (equals != null) r'equals': equals,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (not != null) r'not': not,
        if ($_count != null) r'_count': $_count,
        if ($_min != null) r'_min': $_min,
        if ($_max != null) r'_max': $_max,
      });

  Input$NestedDateTimeWithAggregatesFilter._(this._$data);

  factory Input$NestedDateTimeWithAggregatesFilter.fromJson(
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
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = l$not == null
          ? null
          : Input$NestedDateTimeWithAggregatesFilter.fromJson(
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
          : Input$NestedDateTimeFilter.fromJson(
              (l$$_min as Map<String, dynamic>));
    }
    if (data.containsKey('_max')) {
      final l$$_max = data['_max'];
      result$data['_max'] = l$$_max == null
          ? null
          : Input$NestedDateTimeFilter.fromJson(
              (l$$_max as Map<String, dynamic>));
    }
    return Input$NestedDateTimeWithAggregatesFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get equals => (_$data['equals'] as String?);
  List<String>? get $in => (_$data['in'] as List<String>?);
  List<String>? get notIn => (_$data['notIn'] as List<String>?);
  String? get lt => (_$data['lt'] as String?);
  String? get lte => (_$data['lte'] as String?);
  String? get gt => (_$data['gt'] as String?);
  String? get gte => (_$data['gte'] as String?);
  Input$NestedDateTimeWithAggregatesFilter? get not =>
      (_$data['not'] as Input$NestedDateTimeWithAggregatesFilter?);
  Input$NestedIntFilter? get $_count =>
      (_$data['_count'] as Input$NestedIntFilter?);
  Input$NestedDateTimeFilter? get $_min =>
      (_$data['_min'] as Input$NestedDateTimeFilter?);
  Input$NestedDateTimeFilter? get $_max =>
      (_$data['_max'] as Input$NestedDateTimeFilter?);
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

  CopyWith$Input$NestedDateTimeWithAggregatesFilter<
          Input$NestedDateTimeWithAggregatesFilter>
      get copyWith => CopyWith$Input$NestedDateTimeWithAggregatesFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$NestedDateTimeWithAggregatesFilter) ||
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
      _$data.containsKey('_min') ? l$$_min : const {},
      _$data.containsKey('_max') ? l$$_max : const {},
    ]);
  }
}

abstract class CopyWith$Input$NestedDateTimeWithAggregatesFilter<TRes> {
  factory CopyWith$Input$NestedDateTimeWithAggregatesFilter(
    Input$NestedDateTimeWithAggregatesFilter instance,
    TRes Function(Input$NestedDateTimeWithAggregatesFilter) then,
  ) = _CopyWithImpl$Input$NestedDateTimeWithAggregatesFilter;

  factory CopyWith$Input$NestedDateTimeWithAggregatesFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$NestedDateTimeWithAggregatesFilter;

  TRes call({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    Input$NestedDateTimeWithAggregatesFilter? not,
    Input$NestedIntFilter? $_count,
    Input$NestedDateTimeFilter? $_min,
    Input$NestedDateTimeFilter? $_max,
  });
  CopyWith$Input$NestedDateTimeWithAggregatesFilter<TRes> get not;
}

class _CopyWithImpl$Input$NestedDateTimeWithAggregatesFilter<TRes>
    implements CopyWith$Input$NestedDateTimeWithAggregatesFilter<TRes> {
  _CopyWithImpl$Input$NestedDateTimeWithAggregatesFilter(
    this._instance,
    this._then,
  );

  final Input$NestedDateTimeWithAggregatesFilter _instance;

  final TRes Function(Input$NestedDateTimeWithAggregatesFilter) _then;

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
    Object? $_min = _undefined,
    Object? $_max = _undefined,
  }) =>
      _then(Input$NestedDateTimeWithAggregatesFilter._({
        ..._instance._$data,
        if (equals != _undefined) 'equals': (equals as String?),
        if ($in != _undefined) 'in': ($in as List<String>?),
        if (notIn != _undefined) 'notIn': (notIn as List<String>?),
        if (lt != _undefined) 'lt': (lt as String?),
        if (lte != _undefined) 'lte': (lte as String?),
        if (gt != _undefined) 'gt': (gt as String?),
        if (gte != _undefined) 'gte': (gte as String?),
        if (not != _undefined)
          'not': (not as Input$NestedDateTimeWithAggregatesFilter?),
        if ($_count != _undefined)
          '_count': ($_count as Input$NestedIntFilter?),
        if ($_min != _undefined) '_min': ($_min as Input$NestedDateTimeFilter?),
        if ($_max != _undefined) '_max': ($_max as Input$NestedDateTimeFilter?),
      }));
  CopyWith$Input$NestedDateTimeWithAggregatesFilter<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$NestedDateTimeWithAggregatesFilter.stub(
            _then(_instance))
        : CopyWith$Input$NestedDateTimeWithAggregatesFilter(
            local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$NestedDateTimeWithAggregatesFilter<TRes>
    implements CopyWith$Input$NestedDateTimeWithAggregatesFilter<TRes> {
  _CopyWithStubImpl$Input$NestedDateTimeWithAggregatesFilter(this._res);

  TRes _res;

  call({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    Input$NestedDateTimeWithAggregatesFilter? not,
    Input$NestedIntFilter? $_count,
    Input$NestedDateTimeFilter? $_min,
    Input$NestedDateTimeFilter? $_max,
  }) =>
      _res;
  CopyWith$Input$NestedDateTimeWithAggregatesFilter<TRes> get not =>
      CopyWith$Input$NestedDateTimeWithAggregatesFilter.stub(_res);
}

class Input$CityCreateInput {
  factory Input$CityCreateInput({
    required int city_id,
    required String city_name,
    Input$TransactionsCreateNestedManyWithoutCityInput? Transactions,
  }) =>
      Input$CityCreateInput._({
        r'city_id': city_id,
        r'city_name': city_name,
        if (Transactions != null) r'Transactions': Transactions,
      });

  Input$CityCreateInput._(this._$data);

  factory Input$CityCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$city_id = data['city_id'];
    result$data['city_id'] = (l$city_id as int);
    final l$city_name = data['city_name'];
    result$data['city_name'] = (l$city_name as String);
    if (data.containsKey('Transactions')) {
      final l$Transactions = data['Transactions'];
      result$data['Transactions'] = l$Transactions == null
          ? null
          : Input$TransactionsCreateNestedManyWithoutCityInput.fromJson(
              (l$Transactions as Map<String, dynamic>));
    }
    return Input$CityCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get city_id => (_$data['city_id'] as int);
  String get city_name => (_$data['city_name'] as String);
  Input$TransactionsCreateNestedManyWithoutCityInput? get Transactions =>
      (_$data['Transactions']
          as Input$TransactionsCreateNestedManyWithoutCityInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$city_id = city_id;
    result$data['city_id'] = l$city_id;
    final l$city_name = city_name;
    result$data['city_name'] = l$city_name;
    if (_$data.containsKey('Transactions')) {
      final l$Transactions = Transactions;
      result$data['Transactions'] = l$Transactions?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$CityCreateInput<Input$CityCreateInput> get copyWith =>
      CopyWith$Input$CityCreateInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CityCreateInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$city_id = city_id;
    final lOther$city_id = other.city_id;
    if (l$city_id != lOther$city_id) {
      return false;
    }
    final l$city_name = city_name;
    final lOther$city_name = other.city_name;
    if (l$city_name != lOther$city_name) {
      return false;
    }
    final l$Transactions = Transactions;
    final lOther$Transactions = other.Transactions;
    if (_$data.containsKey('Transactions') !=
        other._$data.containsKey('Transactions')) {
      return false;
    }
    if (l$Transactions != lOther$Transactions) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$city_id = city_id;
    final l$city_name = city_name;
    final l$Transactions = Transactions;
    return Object.hashAll([
      l$city_id,
      l$city_name,
      _$data.containsKey('Transactions') ? l$Transactions : const {},
    ]);
  }
}

abstract class CopyWith$Input$CityCreateInput<TRes> {
  factory CopyWith$Input$CityCreateInput(
    Input$CityCreateInput instance,
    TRes Function(Input$CityCreateInput) then,
  ) = _CopyWithImpl$Input$CityCreateInput;

  factory CopyWith$Input$CityCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CityCreateInput;

  TRes call({
    int? city_id,
    String? city_name,
    Input$TransactionsCreateNestedManyWithoutCityInput? Transactions,
  });
  CopyWith$Input$TransactionsCreateNestedManyWithoutCityInput<TRes>
      get Transactions;
}

class _CopyWithImpl$Input$CityCreateInput<TRes>
    implements CopyWith$Input$CityCreateInput<TRes> {
  _CopyWithImpl$Input$CityCreateInput(
    this._instance,
    this._then,
  );

  final Input$CityCreateInput _instance;

  final TRes Function(Input$CityCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? city_id = _undefined,
    Object? city_name = _undefined,
    Object? Transactions = _undefined,
  }) =>
      _then(Input$CityCreateInput._({
        ..._instance._$data,
        if (city_id != _undefined && city_id != null)
          'city_id': (city_id as int),
        if (city_name != _undefined && city_name != null)
          'city_name': (city_name as String),
        if (Transactions != _undefined)
          'Transactions': (Transactions
              as Input$TransactionsCreateNestedManyWithoutCityInput?),
      }));
  CopyWith$Input$TransactionsCreateNestedManyWithoutCityInput<TRes>
      get Transactions {
    final local$Transactions = _instance.Transactions;
    return local$Transactions == null
        ? CopyWith$Input$TransactionsCreateNestedManyWithoutCityInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionsCreateNestedManyWithoutCityInput(
            local$Transactions, (e) => call(Transactions: e));
  }
}

class _CopyWithStubImpl$Input$CityCreateInput<TRes>
    implements CopyWith$Input$CityCreateInput<TRes> {
  _CopyWithStubImpl$Input$CityCreateInput(this._res);

  TRes _res;

  call({
    int? city_id,
    String? city_name,
    Input$TransactionsCreateNestedManyWithoutCityInput? Transactions,
  }) =>
      _res;
  CopyWith$Input$TransactionsCreateNestedManyWithoutCityInput<TRes>
      get Transactions =>
          CopyWith$Input$TransactionsCreateNestedManyWithoutCityInput.stub(
              _res);
}

class Input$TransactionsCreateNestedManyWithoutCityInput {
  factory Input$TransactionsCreateNestedManyWithoutCityInput({
    List<Input$TransactionsCreateWithoutCityInput>? create,
    List<Input$TransactionsCreateOrConnectWithoutCityInput>? connectOrCreate,
    List<Input$TransactionsWhereUniqueInput>? connect,
  }) =>
      Input$TransactionsCreateNestedManyWithoutCityInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (connect != null) r'connect': connect,
      });

  Input$TransactionsCreateNestedManyWithoutCityInput._(this._$data);

  factory Input$TransactionsCreateNestedManyWithoutCityInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = (l$create as List<dynamic>?)
          ?.map((e) => Input$TransactionsCreateWithoutCityInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = (l$connectOrCreate as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionsCreateOrConnectWithoutCityInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = (l$connect as List<dynamic>?)
          ?.map((e) => Input$TransactionsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$TransactionsCreateNestedManyWithoutCityInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TransactionsCreateWithoutCityInput>? get create =>
      (_$data['create'] as List<Input$TransactionsCreateWithoutCityInput>?);
  List<Input$TransactionsCreateOrConnectWithoutCityInput>?
      get connectOrCreate => (_$data['connectOrCreate']
          as List<Input$TransactionsCreateOrConnectWithoutCityInput>?);
  List<Input$TransactionsWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$TransactionsWhereUniqueInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = connectOrCreate;
      result$data['connectOrCreate'] =
          l$connectOrCreate?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$TransactionsCreateNestedManyWithoutCityInput<
          Input$TransactionsCreateNestedManyWithoutCityInput>
      get copyWith =>
          CopyWith$Input$TransactionsCreateNestedManyWithoutCityInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsCreateNestedManyWithoutCityInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != null && lOther$create != null) {
      if (l$create.length != lOther$create.length) {
        return false;
      }
      for (int i = 0; i < l$create.length; i++) {
        final l$create$entry = l$create[i];
        final lOther$create$entry = lOther$create[i];
        if (l$create$entry != lOther$create$entry) {
          return false;
        }
      }
    } else if (l$create != lOther$create) {
      return false;
    }
    final l$connectOrCreate = connectOrCreate;
    final lOther$connectOrCreate = other.connectOrCreate;
    if (_$data.containsKey('connectOrCreate') !=
        other._$data.containsKey('connectOrCreate')) {
      return false;
    }
    if (l$connectOrCreate != null && lOther$connectOrCreate != null) {
      if (l$connectOrCreate.length != lOther$connectOrCreate.length) {
        return false;
      }
      for (int i = 0; i < l$connectOrCreate.length; i++) {
        final l$connectOrCreate$entry = l$connectOrCreate[i];
        final lOther$connectOrCreate$entry = lOther$connectOrCreate[i];
        if (l$connectOrCreate$entry != lOther$connectOrCreate$entry) {
          return false;
        }
      }
    } else if (l$connectOrCreate != lOther$connectOrCreate) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != null && lOther$connect != null) {
      if (l$connect.length != lOther$connect.length) {
        return false;
      }
      for (int i = 0; i < l$connect.length; i++) {
        final l$connect$entry = l$connect[i];
        final lOther$connect$entry = lOther$connect[i];
        if (l$connect$entry != lOther$connect$entry) {
          return false;
        }
      }
    } else if (l$connect != lOther$connect) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connectOrCreate = connectOrCreate;
    final l$connect = connect;
    return Object.hashAll([
      _$data.containsKey('create')
          ? l$create == null
              ? null
              : Object.hashAll(l$create.map((v) => v))
          : const {},
      _$data.containsKey('connectOrCreate')
          ? l$connectOrCreate == null
              ? null
              : Object.hashAll(l$connectOrCreate.map((v) => v))
          : const {},
      _$data.containsKey('connect')
          ? l$connect == null
              ? null
              : Object.hashAll(l$connect.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsCreateNestedManyWithoutCityInput<
    TRes> {
  factory CopyWith$Input$TransactionsCreateNestedManyWithoutCityInput(
    Input$TransactionsCreateNestedManyWithoutCityInput instance,
    TRes Function(Input$TransactionsCreateNestedManyWithoutCityInput) then,
  ) = _CopyWithImpl$Input$TransactionsCreateNestedManyWithoutCityInput;

  factory CopyWith$Input$TransactionsCreateNestedManyWithoutCityInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsCreateNestedManyWithoutCityInput;

  TRes call({
    List<Input$TransactionsCreateWithoutCityInput>? create,
    List<Input$TransactionsCreateOrConnectWithoutCityInput>? connectOrCreate,
    List<Input$TransactionsWhereUniqueInput>? connect,
  });
  TRes create(
      Iterable<Input$TransactionsCreateWithoutCityInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsCreateWithoutCityInput<
                      Input$TransactionsCreateWithoutCityInput>>?)
          _fn);
  TRes connectOrCreate(
      Iterable<Input$TransactionsCreateOrConnectWithoutCityInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsCreateOrConnectWithoutCityInput<
                      Input$TransactionsCreateOrConnectWithoutCityInput>>?)
          _fn);
}

class _CopyWithImpl$Input$TransactionsCreateNestedManyWithoutCityInput<TRes>
    implements
        CopyWith$Input$TransactionsCreateNestedManyWithoutCityInput<TRes> {
  _CopyWithImpl$Input$TransactionsCreateNestedManyWithoutCityInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsCreateNestedManyWithoutCityInput _instance;

  final TRes Function(Input$TransactionsCreateNestedManyWithoutCityInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$TransactionsCreateNestedManyWithoutCityInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create as List<Input$TransactionsCreateWithoutCityInput>?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as List<Input$TransactionsCreateOrConnectWithoutCityInput>?),
        if (connect != _undefined)
          'connect': (connect as List<Input$TransactionsWhereUniqueInput>?),
      }));
  TRes create(
          Iterable<Input$TransactionsCreateWithoutCityInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsCreateWithoutCityInput<
                          Input$TransactionsCreateWithoutCityInput>>?)
              _fn) =>
      call(
          create: _fn(_instance.create
              ?.map((e) => CopyWith$Input$TransactionsCreateWithoutCityInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes connectOrCreate(
          Iterable<Input$TransactionsCreateOrConnectWithoutCityInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsCreateOrConnectWithoutCityInput<
                          Input$TransactionsCreateOrConnectWithoutCityInput>>?)
              _fn) =>
      call(
          connectOrCreate: _fn(_instance.connectOrCreate?.map(
              (e) => CopyWith$Input$TransactionsCreateOrConnectWithoutCityInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$TransactionsCreateNestedManyWithoutCityInput<TRes>
    implements
        CopyWith$Input$TransactionsCreateNestedManyWithoutCityInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsCreateNestedManyWithoutCityInput(
      this._res);

  TRes _res;

  call({
    List<Input$TransactionsCreateWithoutCityInput>? create,
    List<Input$TransactionsCreateOrConnectWithoutCityInput>? connectOrCreate,
    List<Input$TransactionsWhereUniqueInput>? connect,
  }) =>
      _res;
  create(_fn) => _res;
  connectOrCreate(_fn) => _res;
}

class Input$TransactionsCreateWithoutCityInput {
  factory Input$TransactionsCreateWithoutCityInput({
    required int transaction_id,
    required int product_id,
    required String customer_name,
    required String customer_phone,
    required String address,
    required int quantity,
    required String date,
    required double remainingPayement,
    required double totalPayement,
    required Input$SellersCreateNestedOneWithoutTransactionsInput seller,
    required Input$TransactionTypesCreateNestedOneWithoutTransactionsInput
        transaction_type,
    Input$TransactionStatusCreateNestedOneWithoutTransactionsInput? status,
    Input$PayementsCreateNestedManyWithoutTransactionInput? Payements,
  }) =>
      Input$TransactionsCreateWithoutCityInput._({
        r'transaction_id': transaction_id,
        r'product_id': product_id,
        r'customer_name': customer_name,
        r'customer_phone': customer_phone,
        r'address': address,
        r'quantity': quantity,
        r'date': date,
        r'remainingPayement': remainingPayement,
        r'totalPayement': totalPayement,
        r'seller': seller,
        r'transaction_type': transaction_type,
        if (status != null) r'status': status,
        if (Payements != null) r'Payements': Payements,
      });

  Input$TransactionsCreateWithoutCityInput._(this._$data);

  factory Input$TransactionsCreateWithoutCityInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$transaction_id = data['transaction_id'];
    result$data['transaction_id'] = (l$transaction_id as int);
    final l$product_id = data['product_id'];
    result$data['product_id'] = (l$product_id as int);
    final l$customer_name = data['customer_name'];
    result$data['customer_name'] = (l$customer_name as String);
    final l$customer_phone = data['customer_phone'];
    result$data['customer_phone'] = (l$customer_phone as String);
    final l$address = data['address'];
    result$data['address'] = (l$address as String);
    final l$quantity = data['quantity'];
    result$data['quantity'] = (l$quantity as int);
    final l$date = data['date'];
    result$data['date'] = (l$date as String);
    final l$remainingPayement = data['remainingPayement'];
    result$data['remainingPayement'] = (l$remainingPayement as num).toDouble();
    final l$totalPayement = data['totalPayement'];
    result$data['totalPayement'] = (l$totalPayement as num).toDouble();
    final l$seller = data['seller'];
    result$data['seller'] =
        Input$SellersCreateNestedOneWithoutTransactionsInput.fromJson(
            (l$seller as Map<String, dynamic>));
    final l$transaction_type = data['transaction_type'];
    result$data['transaction_type'] =
        Input$TransactionTypesCreateNestedOneWithoutTransactionsInput.fromJson(
            (l$transaction_type as Map<String, dynamic>));
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : Input$TransactionStatusCreateNestedOneWithoutTransactionsInput
              .fromJson((l$status as Map<String, dynamic>));
    }
    if (data.containsKey('Payements')) {
      final l$Payements = data['Payements'];
      result$data['Payements'] = l$Payements == null
          ? null
          : Input$PayementsCreateNestedManyWithoutTransactionInput.fromJson(
              (l$Payements as Map<String, dynamic>));
    }
    return Input$TransactionsCreateWithoutCityInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get transaction_id => (_$data['transaction_id'] as int);
  int get product_id => (_$data['product_id'] as int);
  String get customer_name => (_$data['customer_name'] as String);
  String get customer_phone => (_$data['customer_phone'] as String);
  String get address => (_$data['address'] as String);
  int get quantity => (_$data['quantity'] as int);
  String get date => (_$data['date'] as String);
  double get remainingPayement => (_$data['remainingPayement'] as double);
  double get totalPayement => (_$data['totalPayement'] as double);
  Input$SellersCreateNestedOneWithoutTransactionsInput get seller =>
      (_$data['seller']
          as Input$SellersCreateNestedOneWithoutTransactionsInput);
  Input$TransactionTypesCreateNestedOneWithoutTransactionsInput
      get transaction_type => (_$data['transaction_type']
          as Input$TransactionTypesCreateNestedOneWithoutTransactionsInput);
  Input$TransactionStatusCreateNestedOneWithoutTransactionsInput? get status =>
      (_$data['status']
          as Input$TransactionStatusCreateNestedOneWithoutTransactionsInput?);
  Input$PayementsCreateNestedManyWithoutTransactionInput? get Payements =>
      (_$data['Payements']
          as Input$PayementsCreateNestedManyWithoutTransactionInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$transaction_id = transaction_id;
    result$data['transaction_id'] = l$transaction_id;
    final l$product_id = product_id;
    result$data['product_id'] = l$product_id;
    final l$customer_name = customer_name;
    result$data['customer_name'] = l$customer_name;
    final l$customer_phone = customer_phone;
    result$data['customer_phone'] = l$customer_phone;
    final l$address = address;
    result$data['address'] = l$address;
    final l$quantity = quantity;
    result$data['quantity'] = l$quantity;
    final l$date = date;
    result$data['date'] = l$date;
    final l$remainingPayement = remainingPayement;
    result$data['remainingPayement'] = l$remainingPayement;
    final l$totalPayement = totalPayement;
    result$data['totalPayement'] = l$totalPayement;
    final l$seller = seller;
    result$data['seller'] = l$seller.toJson();
    final l$transaction_type = transaction_type;
    result$data['transaction_type'] = l$transaction_type.toJson();
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status?.toJson();
    }
    if (_$data.containsKey('Payements')) {
      final l$Payements = Payements;
      result$data['Payements'] = l$Payements?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionsCreateWithoutCityInput<
          Input$TransactionsCreateWithoutCityInput>
      get copyWith => CopyWith$Input$TransactionsCreateWithoutCityInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsCreateWithoutCityInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_id = transaction_id;
    final lOther$transaction_id = other.transaction_id;
    if (l$transaction_id != lOther$transaction_id) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$customer_name = customer_name;
    final lOther$customer_name = other.customer_name;
    if (l$customer_name != lOther$customer_name) {
      return false;
    }
    final l$customer_phone = customer_phone;
    final lOther$customer_phone = other.customer_phone;
    if (l$customer_phone != lOther$customer_phone) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
      return false;
    }
    final l$remainingPayement = remainingPayement;
    final lOther$remainingPayement = other.remainingPayement;
    if (l$remainingPayement != lOther$remainingPayement) {
      return false;
    }
    final l$totalPayement = totalPayement;
    final lOther$totalPayement = other.totalPayement;
    if (l$totalPayement != lOther$totalPayement) {
      return false;
    }
    final l$seller = seller;
    final lOther$seller = other.seller;
    if (l$seller != lOther$seller) {
      return false;
    }
    final l$transaction_type = transaction_type;
    final lOther$transaction_type = other.transaction_type;
    if (l$transaction_type != lOther$transaction_type) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$Payements = Payements;
    final lOther$Payements = other.Payements;
    if (_$data.containsKey('Payements') !=
        other._$data.containsKey('Payements')) {
      return false;
    }
    if (l$Payements != lOther$Payements) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_id = transaction_id;
    final l$product_id = product_id;
    final l$customer_name = customer_name;
    final l$customer_phone = customer_phone;
    final l$address = address;
    final l$quantity = quantity;
    final l$date = date;
    final l$remainingPayement = remainingPayement;
    final l$totalPayement = totalPayement;
    final l$seller = seller;
    final l$transaction_type = transaction_type;
    final l$status = status;
    final l$Payements = Payements;
    return Object.hashAll([
      l$transaction_id,
      l$product_id,
      l$customer_name,
      l$customer_phone,
      l$address,
      l$quantity,
      l$date,
      l$remainingPayement,
      l$totalPayement,
      l$seller,
      l$transaction_type,
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('Payements') ? l$Payements : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsCreateWithoutCityInput<TRes> {
  factory CopyWith$Input$TransactionsCreateWithoutCityInput(
    Input$TransactionsCreateWithoutCityInput instance,
    TRes Function(Input$TransactionsCreateWithoutCityInput) then,
  ) = _CopyWithImpl$Input$TransactionsCreateWithoutCityInput;

  factory CopyWith$Input$TransactionsCreateWithoutCityInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionsCreateWithoutCityInput;

  TRes call({
    int? transaction_id,
    int? product_id,
    String? customer_name,
    String? customer_phone,
    String? address,
    int? quantity,
    String? date,
    double? remainingPayement,
    double? totalPayement,
    Input$SellersCreateNestedOneWithoutTransactionsInput? seller,
    Input$TransactionTypesCreateNestedOneWithoutTransactionsInput?
        transaction_type,
    Input$TransactionStatusCreateNestedOneWithoutTransactionsInput? status,
    Input$PayementsCreateNestedManyWithoutTransactionInput? Payements,
  });
  CopyWith$Input$SellersCreateNestedOneWithoutTransactionsInput<TRes>
      get seller;
  CopyWith$Input$TransactionTypesCreateNestedOneWithoutTransactionsInput<TRes>
      get transaction_type;
  CopyWith$Input$TransactionStatusCreateNestedOneWithoutTransactionsInput<TRes>
      get status;
  CopyWith$Input$PayementsCreateNestedManyWithoutTransactionInput<TRes>
      get Payements;
}

class _CopyWithImpl$Input$TransactionsCreateWithoutCityInput<TRes>
    implements CopyWith$Input$TransactionsCreateWithoutCityInput<TRes> {
  _CopyWithImpl$Input$TransactionsCreateWithoutCityInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsCreateWithoutCityInput _instance;

  final TRes Function(Input$TransactionsCreateWithoutCityInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? product_id = _undefined,
    Object? customer_name = _undefined,
    Object? customer_phone = _undefined,
    Object? address = _undefined,
    Object? quantity = _undefined,
    Object? date = _undefined,
    Object? remainingPayement = _undefined,
    Object? totalPayement = _undefined,
    Object? seller = _undefined,
    Object? transaction_type = _undefined,
    Object? status = _undefined,
    Object? Payements = _undefined,
  }) =>
      _then(Input$TransactionsCreateWithoutCityInput._({
        ..._instance._$data,
        if (transaction_id != _undefined && transaction_id != null)
          'transaction_id': (transaction_id as int),
        if (product_id != _undefined && product_id != null)
          'product_id': (product_id as int),
        if (customer_name != _undefined && customer_name != null)
          'customer_name': (customer_name as String),
        if (customer_phone != _undefined && customer_phone != null)
          'customer_phone': (customer_phone as String),
        if (address != _undefined && address != null)
          'address': (address as String),
        if (quantity != _undefined && quantity != null)
          'quantity': (quantity as int),
        if (date != _undefined && date != null) 'date': (date as String),
        if (remainingPayement != _undefined && remainingPayement != null)
          'remainingPayement': (remainingPayement as double),
        if (totalPayement != _undefined && totalPayement != null)
          'totalPayement': (totalPayement as double),
        if (seller != _undefined && seller != null)
          'seller':
              (seller as Input$SellersCreateNestedOneWithoutTransactionsInput),
        if (transaction_type != _undefined && transaction_type != null)
          'transaction_type': (transaction_type
              as Input$TransactionTypesCreateNestedOneWithoutTransactionsInput),
        if (status != _undefined)
          'status': (status
              as Input$TransactionStatusCreateNestedOneWithoutTransactionsInput?),
        if (Payements != _undefined)
          'Payements': (Payements
              as Input$PayementsCreateNestedManyWithoutTransactionInput?),
      }));
  CopyWith$Input$SellersCreateNestedOneWithoutTransactionsInput<TRes>
      get seller {
    final local$seller = _instance.seller;
    return CopyWith$Input$SellersCreateNestedOneWithoutTransactionsInput(
        local$seller, (e) => call(seller: e));
  }

  CopyWith$Input$TransactionTypesCreateNestedOneWithoutTransactionsInput<TRes>
      get transaction_type {
    final local$transaction_type = _instance.transaction_type;
    return CopyWith$Input$TransactionTypesCreateNestedOneWithoutTransactionsInput(
        local$transaction_type, (e) => call(transaction_type: e));
  }

  CopyWith$Input$TransactionStatusCreateNestedOneWithoutTransactionsInput<TRes>
      get status {
    final local$status = _instance.status;
    return local$status == null
        ? CopyWith$Input$TransactionStatusCreateNestedOneWithoutTransactionsInput
            .stub(_then(_instance))
        : CopyWith$Input$TransactionStatusCreateNestedOneWithoutTransactionsInput(
            local$status, (e) => call(status: e));
  }

  CopyWith$Input$PayementsCreateNestedManyWithoutTransactionInput<TRes>
      get Payements {
    final local$Payements = _instance.Payements;
    return local$Payements == null
        ? CopyWith$Input$PayementsCreateNestedManyWithoutTransactionInput.stub(
            _then(_instance))
        : CopyWith$Input$PayementsCreateNestedManyWithoutTransactionInput(
            local$Payements, (e) => call(Payements: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsCreateWithoutCityInput<TRes>
    implements CopyWith$Input$TransactionsCreateWithoutCityInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsCreateWithoutCityInput(this._res);

  TRes _res;

  call({
    int? transaction_id,
    int? product_id,
    String? customer_name,
    String? customer_phone,
    String? address,
    int? quantity,
    String? date,
    double? remainingPayement,
    double? totalPayement,
    Input$SellersCreateNestedOneWithoutTransactionsInput? seller,
    Input$TransactionTypesCreateNestedOneWithoutTransactionsInput?
        transaction_type,
    Input$TransactionStatusCreateNestedOneWithoutTransactionsInput? status,
    Input$PayementsCreateNestedManyWithoutTransactionInput? Payements,
  }) =>
      _res;
  CopyWith$Input$SellersCreateNestedOneWithoutTransactionsInput<TRes>
      get seller =>
          CopyWith$Input$SellersCreateNestedOneWithoutTransactionsInput.stub(
              _res);
  CopyWith$Input$TransactionTypesCreateNestedOneWithoutTransactionsInput<TRes>
      get transaction_type =>
          CopyWith$Input$TransactionTypesCreateNestedOneWithoutTransactionsInput
              .stub(_res);
  CopyWith$Input$TransactionStatusCreateNestedOneWithoutTransactionsInput<TRes>
      get status =>
          CopyWith$Input$TransactionStatusCreateNestedOneWithoutTransactionsInput
              .stub(_res);
  CopyWith$Input$PayementsCreateNestedManyWithoutTransactionInput<TRes>
      get Payements =>
          CopyWith$Input$PayementsCreateNestedManyWithoutTransactionInput.stub(
              _res);
}

class Input$SellersCreateNestedOneWithoutTransactionsInput {
  factory Input$SellersCreateNestedOneWithoutTransactionsInput({
    Input$SellersCreateWithoutTransactionsInput? create,
    Input$SellersCreateOrConnectWithoutTransactionsInput? connectOrCreate,
    Input$SellersWhereUniqueInput? connect,
  }) =>
      Input$SellersCreateNestedOneWithoutTransactionsInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (connect != null) r'connect': connect,
      });

  Input$SellersCreateNestedOneWithoutTransactionsInput._(this._$data);

  factory Input$SellersCreateNestedOneWithoutTransactionsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = l$create == null
          ? null
          : Input$SellersCreateWithoutTransactionsInput.fromJson(
              (l$create as Map<String, dynamic>));
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = l$connectOrCreate == null
          ? null
          : Input$SellersCreateOrConnectWithoutTransactionsInput.fromJson(
              (l$connectOrCreate as Map<String, dynamic>));
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = l$connect == null
          ? null
          : Input$SellersWhereUniqueInput.fromJson(
              (l$connect as Map<String, dynamic>));
    }
    return Input$SellersCreateNestedOneWithoutTransactionsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SellersCreateWithoutTransactionsInput? get create =>
      (_$data['create'] as Input$SellersCreateWithoutTransactionsInput?);
  Input$SellersCreateOrConnectWithoutTransactionsInput? get connectOrCreate =>
      (_$data['connectOrCreate']
          as Input$SellersCreateOrConnectWithoutTransactionsInput?);
  Input$SellersWhereUniqueInput? get connect =>
      (_$data['connect'] as Input$SellersWhereUniqueInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.toJson();
    }
    if (_$data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = connectOrCreate;
      result$data['connectOrCreate'] = l$connectOrCreate?.toJson();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$SellersCreateNestedOneWithoutTransactionsInput<
          Input$SellersCreateNestedOneWithoutTransactionsInput>
      get copyWith =>
          CopyWith$Input$SellersCreateNestedOneWithoutTransactionsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SellersCreateNestedOneWithoutTransactionsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != lOther$create) {
      return false;
    }
    final l$connectOrCreate = connectOrCreate;
    final lOther$connectOrCreate = other.connectOrCreate;
    if (_$data.containsKey('connectOrCreate') !=
        other._$data.containsKey('connectOrCreate')) {
      return false;
    }
    if (l$connectOrCreate != lOther$connectOrCreate) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != lOther$connect) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connectOrCreate = connectOrCreate;
    final l$connect = connect;
    return Object.hashAll([
      _$data.containsKey('create') ? l$create : const {},
      _$data.containsKey('connectOrCreate') ? l$connectOrCreate : const {},
      _$data.containsKey('connect') ? l$connect : const {},
    ]);
  }
}

abstract class CopyWith$Input$SellersCreateNestedOneWithoutTransactionsInput<
    TRes> {
  factory CopyWith$Input$SellersCreateNestedOneWithoutTransactionsInput(
    Input$SellersCreateNestedOneWithoutTransactionsInput instance,
    TRes Function(Input$SellersCreateNestedOneWithoutTransactionsInput) then,
  ) = _CopyWithImpl$Input$SellersCreateNestedOneWithoutTransactionsInput;

  factory CopyWith$Input$SellersCreateNestedOneWithoutTransactionsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$SellersCreateNestedOneWithoutTransactionsInput;

  TRes call({
    Input$SellersCreateWithoutTransactionsInput? create,
    Input$SellersCreateOrConnectWithoutTransactionsInput? connectOrCreate,
    Input$SellersWhereUniqueInput? connect,
  });
  CopyWith$Input$SellersCreateWithoutTransactionsInput<TRes> get create;
  CopyWith$Input$SellersCreateOrConnectWithoutTransactionsInput<TRes>
      get connectOrCreate;
}

class _CopyWithImpl$Input$SellersCreateNestedOneWithoutTransactionsInput<TRes>
    implements
        CopyWith$Input$SellersCreateNestedOneWithoutTransactionsInput<TRes> {
  _CopyWithImpl$Input$SellersCreateNestedOneWithoutTransactionsInput(
    this._instance,
    this._then,
  );

  final Input$SellersCreateNestedOneWithoutTransactionsInput _instance;

  final TRes Function(Input$SellersCreateNestedOneWithoutTransactionsInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$SellersCreateNestedOneWithoutTransactionsInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create as Input$SellersCreateWithoutTransactionsInput?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as Input$SellersCreateOrConnectWithoutTransactionsInput?),
        if (connect != _undefined)
          'connect': (connect as Input$SellersWhereUniqueInput?),
      }));
  CopyWith$Input$SellersCreateWithoutTransactionsInput<TRes> get create {
    final local$create = _instance.create;
    return local$create == null
        ? CopyWith$Input$SellersCreateWithoutTransactionsInput.stub(
            _then(_instance))
        : CopyWith$Input$SellersCreateWithoutTransactionsInput(
            local$create, (e) => call(create: e));
  }

  CopyWith$Input$SellersCreateOrConnectWithoutTransactionsInput<TRes>
      get connectOrCreate {
    final local$connectOrCreate = _instance.connectOrCreate;
    return local$connectOrCreate == null
        ? CopyWith$Input$SellersCreateOrConnectWithoutTransactionsInput.stub(
            _then(_instance))
        : CopyWith$Input$SellersCreateOrConnectWithoutTransactionsInput(
            local$connectOrCreate, (e) => call(connectOrCreate: e));
  }
}

class _CopyWithStubImpl$Input$SellersCreateNestedOneWithoutTransactionsInput<
        TRes>
    implements
        CopyWith$Input$SellersCreateNestedOneWithoutTransactionsInput<TRes> {
  _CopyWithStubImpl$Input$SellersCreateNestedOneWithoutTransactionsInput(
      this._res);

  TRes _res;

  call({
    Input$SellersCreateWithoutTransactionsInput? create,
    Input$SellersCreateOrConnectWithoutTransactionsInput? connectOrCreate,
    Input$SellersWhereUniqueInput? connect,
  }) =>
      _res;
  CopyWith$Input$SellersCreateWithoutTransactionsInput<TRes> get create =>
      CopyWith$Input$SellersCreateWithoutTransactionsInput.stub(_res);
  CopyWith$Input$SellersCreateOrConnectWithoutTransactionsInput<TRes>
      get connectOrCreate =>
          CopyWith$Input$SellersCreateOrConnectWithoutTransactionsInput.stub(
              _res);
}

class Input$SellersCreateWithoutTransactionsInput {
  factory Input$SellersCreateWithoutTransactionsInput({
    required String seller_name,
    required String seller_phone,
    required String picture,
  }) =>
      Input$SellersCreateWithoutTransactionsInput._({
        r'seller_name': seller_name,
        r'seller_phone': seller_phone,
        r'picture': picture,
      });

  Input$SellersCreateWithoutTransactionsInput._(this._$data);

  factory Input$SellersCreateWithoutTransactionsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$seller_name = data['seller_name'];
    result$data['seller_name'] = (l$seller_name as String);
    final l$seller_phone = data['seller_phone'];
    result$data['seller_phone'] = (l$seller_phone as String);
    final l$picture = data['picture'];
    result$data['picture'] = (l$picture as String);
    return Input$SellersCreateWithoutTransactionsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get seller_name => (_$data['seller_name'] as String);
  String get seller_phone => (_$data['seller_phone'] as String);
  String get picture => (_$data['picture'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$seller_name = seller_name;
    result$data['seller_name'] = l$seller_name;
    final l$seller_phone = seller_phone;
    result$data['seller_phone'] = l$seller_phone;
    final l$picture = picture;
    result$data['picture'] = l$picture;
    return result$data;
  }

  CopyWith$Input$SellersCreateWithoutTransactionsInput<
          Input$SellersCreateWithoutTransactionsInput>
      get copyWith => CopyWith$Input$SellersCreateWithoutTransactionsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SellersCreateWithoutTransactionsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$seller_name = seller_name;
    final lOther$seller_name = other.seller_name;
    if (l$seller_name != lOther$seller_name) {
      return false;
    }
    final l$seller_phone = seller_phone;
    final lOther$seller_phone = other.seller_phone;
    if (l$seller_phone != lOther$seller_phone) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$seller_name = seller_name;
    final l$seller_phone = seller_phone;
    final l$picture = picture;
    return Object.hashAll([
      l$seller_name,
      l$seller_phone,
      l$picture,
    ]);
  }
}

abstract class CopyWith$Input$SellersCreateWithoutTransactionsInput<TRes> {
  factory CopyWith$Input$SellersCreateWithoutTransactionsInput(
    Input$SellersCreateWithoutTransactionsInput instance,
    TRes Function(Input$SellersCreateWithoutTransactionsInput) then,
  ) = _CopyWithImpl$Input$SellersCreateWithoutTransactionsInput;

  factory CopyWith$Input$SellersCreateWithoutTransactionsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SellersCreateWithoutTransactionsInput;

  TRes call({
    String? seller_name,
    String? seller_phone,
    String? picture,
  });
}

class _CopyWithImpl$Input$SellersCreateWithoutTransactionsInput<TRes>
    implements CopyWith$Input$SellersCreateWithoutTransactionsInput<TRes> {
  _CopyWithImpl$Input$SellersCreateWithoutTransactionsInput(
    this._instance,
    this._then,
  );

  final Input$SellersCreateWithoutTransactionsInput _instance;

  final TRes Function(Input$SellersCreateWithoutTransactionsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? seller_name = _undefined,
    Object? seller_phone = _undefined,
    Object? picture = _undefined,
  }) =>
      _then(Input$SellersCreateWithoutTransactionsInput._({
        ..._instance._$data,
        if (seller_name != _undefined && seller_name != null)
          'seller_name': (seller_name as String),
        if (seller_phone != _undefined && seller_phone != null)
          'seller_phone': (seller_phone as String),
        if (picture != _undefined && picture != null)
          'picture': (picture as String),
      }));
}

class _CopyWithStubImpl$Input$SellersCreateWithoutTransactionsInput<TRes>
    implements CopyWith$Input$SellersCreateWithoutTransactionsInput<TRes> {
  _CopyWithStubImpl$Input$SellersCreateWithoutTransactionsInput(this._res);

  TRes _res;

  call({
    String? seller_name,
    String? seller_phone,
    String? picture,
  }) =>
      _res;
}

class Input$SellersCreateOrConnectWithoutTransactionsInput {
  factory Input$SellersCreateOrConnectWithoutTransactionsInput({
    required Input$SellersWhereUniqueInput where,
    required Input$SellersCreateWithoutTransactionsInput create,
  }) =>
      Input$SellersCreateOrConnectWithoutTransactionsInput._({
        r'where': where,
        r'create': create,
      });

  Input$SellersCreateOrConnectWithoutTransactionsInput._(this._$data);

  factory Input$SellersCreateOrConnectWithoutTransactionsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$SellersWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] =
        Input$SellersCreateWithoutTransactionsInput.fromJson(
            (l$create as Map<String, dynamic>));
    return Input$SellersCreateOrConnectWithoutTransactionsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SellersWhereUniqueInput get where =>
      (_$data['where'] as Input$SellersWhereUniqueInput);
  Input$SellersCreateWithoutTransactionsInput get create =>
      (_$data['create'] as Input$SellersCreateWithoutTransactionsInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$SellersCreateOrConnectWithoutTransactionsInput<
          Input$SellersCreateOrConnectWithoutTransactionsInput>
      get copyWith =>
          CopyWith$Input$SellersCreateOrConnectWithoutTransactionsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SellersCreateOrConnectWithoutTransactionsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (l$create != lOther$create) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$create = create;
    return Object.hashAll([
      l$where,
      l$create,
    ]);
  }
}

abstract class CopyWith$Input$SellersCreateOrConnectWithoutTransactionsInput<
    TRes> {
  factory CopyWith$Input$SellersCreateOrConnectWithoutTransactionsInput(
    Input$SellersCreateOrConnectWithoutTransactionsInput instance,
    TRes Function(Input$SellersCreateOrConnectWithoutTransactionsInput) then,
  ) = _CopyWithImpl$Input$SellersCreateOrConnectWithoutTransactionsInput;

  factory CopyWith$Input$SellersCreateOrConnectWithoutTransactionsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$SellersCreateOrConnectWithoutTransactionsInput;

  TRes call({
    Input$SellersWhereUniqueInput? where,
    Input$SellersCreateWithoutTransactionsInput? create,
  });
  CopyWith$Input$SellersCreateWithoutTransactionsInput<TRes> get create;
}

class _CopyWithImpl$Input$SellersCreateOrConnectWithoutTransactionsInput<TRes>
    implements
        CopyWith$Input$SellersCreateOrConnectWithoutTransactionsInput<TRes> {
  _CopyWithImpl$Input$SellersCreateOrConnectWithoutTransactionsInput(
    this._instance,
    this._then,
  );

  final Input$SellersCreateOrConnectWithoutTransactionsInput _instance;

  final TRes Function(Input$SellersCreateOrConnectWithoutTransactionsInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$SellersCreateOrConnectWithoutTransactionsInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$SellersWhereUniqueInput),
        if (create != _undefined && create != null)
          'create': (create as Input$SellersCreateWithoutTransactionsInput),
      }));
  CopyWith$Input$SellersCreateWithoutTransactionsInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$SellersCreateWithoutTransactionsInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$SellersCreateOrConnectWithoutTransactionsInput<
        TRes>
    implements
        CopyWith$Input$SellersCreateOrConnectWithoutTransactionsInput<TRes> {
  _CopyWithStubImpl$Input$SellersCreateOrConnectWithoutTransactionsInput(
      this._res);

  TRes _res;

  call({
    Input$SellersWhereUniqueInput? where,
    Input$SellersCreateWithoutTransactionsInput? create,
  }) =>
      _res;
  CopyWith$Input$SellersCreateWithoutTransactionsInput<TRes> get create =>
      CopyWith$Input$SellersCreateWithoutTransactionsInput.stub(_res);
}

class Input$TransactionTypesCreateNestedOneWithoutTransactionsInput {
  factory Input$TransactionTypesCreateNestedOneWithoutTransactionsInput({
    Input$TransactionTypesCreateWithoutTransactionsInput? create,
    Input$TransactionTypesCreateOrConnectWithoutTransactionsInput?
        connectOrCreate,
    Input$TransactionTypesWhereUniqueInput? connect,
  }) =>
      Input$TransactionTypesCreateNestedOneWithoutTransactionsInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (connect != null) r'connect': connect,
      });

  Input$TransactionTypesCreateNestedOneWithoutTransactionsInput._(this._$data);

  factory Input$TransactionTypesCreateNestedOneWithoutTransactionsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = l$create == null
          ? null
          : Input$TransactionTypesCreateWithoutTransactionsInput.fromJson(
              (l$create as Map<String, dynamic>));
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = l$connectOrCreate == null
          ? null
          : Input$TransactionTypesCreateOrConnectWithoutTransactionsInput
              .fromJson((l$connectOrCreate as Map<String, dynamic>));
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = l$connect == null
          ? null
          : Input$TransactionTypesWhereUniqueInput.fromJson(
              (l$connect as Map<String, dynamic>));
    }
    return Input$TransactionTypesCreateNestedOneWithoutTransactionsInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionTypesCreateWithoutTransactionsInput? get create =>
      (_$data['create']
          as Input$TransactionTypesCreateWithoutTransactionsInput?);
  Input$TransactionTypesCreateOrConnectWithoutTransactionsInput?
      get connectOrCreate => (_$data['connectOrCreate']
          as Input$TransactionTypesCreateOrConnectWithoutTransactionsInput?);
  Input$TransactionTypesWhereUniqueInput? get connect =>
      (_$data['connect'] as Input$TransactionTypesWhereUniqueInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.toJson();
    }
    if (_$data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = connectOrCreate;
      result$data['connectOrCreate'] = l$connectOrCreate?.toJson();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionTypesCreateNestedOneWithoutTransactionsInput<
          Input$TransactionTypesCreateNestedOneWithoutTransactionsInput>
      get copyWith =>
          CopyWith$Input$TransactionTypesCreateNestedOneWithoutTransactionsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$TransactionTypesCreateNestedOneWithoutTransactionsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != lOther$create) {
      return false;
    }
    final l$connectOrCreate = connectOrCreate;
    final lOther$connectOrCreate = other.connectOrCreate;
    if (_$data.containsKey('connectOrCreate') !=
        other._$data.containsKey('connectOrCreate')) {
      return false;
    }
    if (l$connectOrCreate != lOther$connectOrCreate) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != lOther$connect) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connectOrCreate = connectOrCreate;
    final l$connect = connect;
    return Object.hashAll([
      _$data.containsKey('create') ? l$create : const {},
      _$data.containsKey('connectOrCreate') ? l$connectOrCreate : const {},
      _$data.containsKey('connect') ? l$connect : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionTypesCreateNestedOneWithoutTransactionsInput<
    TRes> {
  factory CopyWith$Input$TransactionTypesCreateNestedOneWithoutTransactionsInput(
    Input$TransactionTypesCreateNestedOneWithoutTransactionsInput instance,
    TRes Function(Input$TransactionTypesCreateNestedOneWithoutTransactionsInput)
        then,
  ) = _CopyWithImpl$Input$TransactionTypesCreateNestedOneWithoutTransactionsInput;

  factory CopyWith$Input$TransactionTypesCreateNestedOneWithoutTransactionsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionTypesCreateNestedOneWithoutTransactionsInput;

  TRes call({
    Input$TransactionTypesCreateWithoutTransactionsInput? create,
    Input$TransactionTypesCreateOrConnectWithoutTransactionsInput?
        connectOrCreate,
    Input$TransactionTypesWhereUniqueInput? connect,
  });
  CopyWith$Input$TransactionTypesCreateWithoutTransactionsInput<TRes>
      get create;
  CopyWith$Input$TransactionTypesCreateOrConnectWithoutTransactionsInput<TRes>
      get connectOrCreate;
}

class _CopyWithImpl$Input$TransactionTypesCreateNestedOneWithoutTransactionsInput<
        TRes>
    implements
        CopyWith$Input$TransactionTypesCreateNestedOneWithoutTransactionsInput<
            TRes> {
  _CopyWithImpl$Input$TransactionTypesCreateNestedOneWithoutTransactionsInput(
    this._instance,
    this._then,
  );

  final Input$TransactionTypesCreateNestedOneWithoutTransactionsInput _instance;

  final TRes Function(
      Input$TransactionTypesCreateNestedOneWithoutTransactionsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$TransactionTypesCreateNestedOneWithoutTransactionsInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create':
              (create as Input$TransactionTypesCreateWithoutTransactionsInput?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as Input$TransactionTypesCreateOrConnectWithoutTransactionsInput?),
        if (connect != _undefined)
          'connect': (connect as Input$TransactionTypesWhereUniqueInput?),
      }));
  CopyWith$Input$TransactionTypesCreateWithoutTransactionsInput<TRes>
      get create {
    final local$create = _instance.create;
    return local$create == null
        ? CopyWith$Input$TransactionTypesCreateWithoutTransactionsInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionTypesCreateWithoutTransactionsInput(
            local$create, (e) => call(create: e));
  }

  CopyWith$Input$TransactionTypesCreateOrConnectWithoutTransactionsInput<TRes>
      get connectOrCreate {
    final local$connectOrCreate = _instance.connectOrCreate;
    return local$connectOrCreate == null
        ? CopyWith$Input$TransactionTypesCreateOrConnectWithoutTransactionsInput
            .stub(_then(_instance))
        : CopyWith$Input$TransactionTypesCreateOrConnectWithoutTransactionsInput(
            local$connectOrCreate, (e) => call(connectOrCreate: e));
  }
}

class _CopyWithStubImpl$Input$TransactionTypesCreateNestedOneWithoutTransactionsInput<
        TRes>
    implements
        CopyWith$Input$TransactionTypesCreateNestedOneWithoutTransactionsInput<
            TRes> {
  _CopyWithStubImpl$Input$TransactionTypesCreateNestedOneWithoutTransactionsInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionTypesCreateWithoutTransactionsInput? create,
    Input$TransactionTypesCreateOrConnectWithoutTransactionsInput?
        connectOrCreate,
    Input$TransactionTypesWhereUniqueInput? connect,
  }) =>
      _res;
  CopyWith$Input$TransactionTypesCreateWithoutTransactionsInput<TRes>
      get create =>
          CopyWith$Input$TransactionTypesCreateWithoutTransactionsInput.stub(
              _res);
  CopyWith$Input$TransactionTypesCreateOrConnectWithoutTransactionsInput<TRes>
      get connectOrCreate =>
          CopyWith$Input$TransactionTypesCreateOrConnectWithoutTransactionsInput
              .stub(_res);
}

class Input$TransactionTypesCreateWithoutTransactionsInput {
  factory Input$TransactionTypesCreateWithoutTransactionsInput({
    required String type_name,
    required String description,
  }) =>
      Input$TransactionTypesCreateWithoutTransactionsInput._({
        r'type_name': type_name,
        r'description': description,
      });

  Input$TransactionTypesCreateWithoutTransactionsInput._(this._$data);

  factory Input$TransactionTypesCreateWithoutTransactionsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$type_name = data['type_name'];
    result$data['type_name'] = (l$type_name as String);
    final l$description = data['description'];
    result$data['description'] = (l$description as String);
    return Input$TransactionTypesCreateWithoutTransactionsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get type_name => (_$data['type_name'] as String);
  String get description => (_$data['description'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$type_name = type_name;
    result$data['type_name'] = l$type_name;
    final l$description = description;
    result$data['description'] = l$description;
    return result$data;
  }

  CopyWith$Input$TransactionTypesCreateWithoutTransactionsInput<
          Input$TransactionTypesCreateWithoutTransactionsInput>
      get copyWith =>
          CopyWith$Input$TransactionTypesCreateWithoutTransactionsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionTypesCreateWithoutTransactionsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type_name = type_name;
    final lOther$type_name = other.type_name;
    if (l$type_name != lOther$type_name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$type_name = type_name;
    final l$description = description;
    return Object.hashAll([
      l$type_name,
      l$description,
    ]);
  }
}

abstract class CopyWith$Input$TransactionTypesCreateWithoutTransactionsInput<
    TRes> {
  factory CopyWith$Input$TransactionTypesCreateWithoutTransactionsInput(
    Input$TransactionTypesCreateWithoutTransactionsInput instance,
    TRes Function(Input$TransactionTypesCreateWithoutTransactionsInput) then,
  ) = _CopyWithImpl$Input$TransactionTypesCreateWithoutTransactionsInput;

  factory CopyWith$Input$TransactionTypesCreateWithoutTransactionsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionTypesCreateWithoutTransactionsInput;

  TRes call({
    String? type_name,
    String? description,
  });
}

class _CopyWithImpl$Input$TransactionTypesCreateWithoutTransactionsInput<TRes>
    implements
        CopyWith$Input$TransactionTypesCreateWithoutTransactionsInput<TRes> {
  _CopyWithImpl$Input$TransactionTypesCreateWithoutTransactionsInput(
    this._instance,
    this._then,
  );

  final Input$TransactionTypesCreateWithoutTransactionsInput _instance;

  final TRes Function(Input$TransactionTypesCreateWithoutTransactionsInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type_name = _undefined,
    Object? description = _undefined,
  }) =>
      _then(Input$TransactionTypesCreateWithoutTransactionsInput._({
        ..._instance._$data,
        if (type_name != _undefined && type_name != null)
          'type_name': (type_name as String),
        if (description != _undefined && description != null)
          'description': (description as String),
      }));
}

class _CopyWithStubImpl$Input$TransactionTypesCreateWithoutTransactionsInput<
        TRes>
    implements
        CopyWith$Input$TransactionTypesCreateWithoutTransactionsInput<TRes> {
  _CopyWithStubImpl$Input$TransactionTypesCreateWithoutTransactionsInput(
      this._res);

  TRes _res;

  call({
    String? type_name,
    String? description,
  }) =>
      _res;
}

class Input$TransactionTypesCreateOrConnectWithoutTransactionsInput {
  factory Input$TransactionTypesCreateOrConnectWithoutTransactionsInput({
    required Input$TransactionTypesWhereUniqueInput where,
    required Input$TransactionTypesCreateWithoutTransactionsInput create,
  }) =>
      Input$TransactionTypesCreateOrConnectWithoutTransactionsInput._({
        r'where': where,
        r'create': create,
      });

  Input$TransactionTypesCreateOrConnectWithoutTransactionsInput._(this._$data);

  factory Input$TransactionTypesCreateOrConnectWithoutTransactionsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$TransactionTypesWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] =
        Input$TransactionTypesCreateWithoutTransactionsInput.fromJson(
            (l$create as Map<String, dynamic>));
    return Input$TransactionTypesCreateOrConnectWithoutTransactionsInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionTypesWhereUniqueInput get where =>
      (_$data['where'] as Input$TransactionTypesWhereUniqueInput);
  Input$TransactionTypesCreateWithoutTransactionsInput get create =>
      (_$data['create']
          as Input$TransactionTypesCreateWithoutTransactionsInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionTypesCreateOrConnectWithoutTransactionsInput<
          Input$TransactionTypesCreateOrConnectWithoutTransactionsInput>
      get copyWith =>
          CopyWith$Input$TransactionTypesCreateOrConnectWithoutTransactionsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$TransactionTypesCreateOrConnectWithoutTransactionsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (l$create != lOther$create) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$create = create;
    return Object.hashAll([
      l$where,
      l$create,
    ]);
  }
}

abstract class CopyWith$Input$TransactionTypesCreateOrConnectWithoutTransactionsInput<
    TRes> {
  factory CopyWith$Input$TransactionTypesCreateOrConnectWithoutTransactionsInput(
    Input$TransactionTypesCreateOrConnectWithoutTransactionsInput instance,
    TRes Function(Input$TransactionTypesCreateOrConnectWithoutTransactionsInput)
        then,
  ) = _CopyWithImpl$Input$TransactionTypesCreateOrConnectWithoutTransactionsInput;

  factory CopyWith$Input$TransactionTypesCreateOrConnectWithoutTransactionsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionTypesCreateOrConnectWithoutTransactionsInput;

  TRes call({
    Input$TransactionTypesWhereUniqueInput? where,
    Input$TransactionTypesCreateWithoutTransactionsInput? create,
  });
  CopyWith$Input$TransactionTypesCreateWithoutTransactionsInput<TRes>
      get create;
}

class _CopyWithImpl$Input$TransactionTypesCreateOrConnectWithoutTransactionsInput<
        TRes>
    implements
        CopyWith$Input$TransactionTypesCreateOrConnectWithoutTransactionsInput<
            TRes> {
  _CopyWithImpl$Input$TransactionTypesCreateOrConnectWithoutTransactionsInput(
    this._instance,
    this._then,
  );

  final Input$TransactionTypesCreateOrConnectWithoutTransactionsInput _instance;

  final TRes Function(
      Input$TransactionTypesCreateOrConnectWithoutTransactionsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$TransactionTypesCreateOrConnectWithoutTransactionsInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$TransactionTypesWhereUniqueInput),
        if (create != _undefined && create != null)
          'create':
              (create as Input$TransactionTypesCreateWithoutTransactionsInput),
      }));
  CopyWith$Input$TransactionTypesCreateWithoutTransactionsInput<TRes>
      get create {
    final local$create = _instance.create;
    return CopyWith$Input$TransactionTypesCreateWithoutTransactionsInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$TransactionTypesCreateOrConnectWithoutTransactionsInput<
        TRes>
    implements
        CopyWith$Input$TransactionTypesCreateOrConnectWithoutTransactionsInput<
            TRes> {
  _CopyWithStubImpl$Input$TransactionTypesCreateOrConnectWithoutTransactionsInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionTypesWhereUniqueInput? where,
    Input$TransactionTypesCreateWithoutTransactionsInput? create,
  }) =>
      _res;
  CopyWith$Input$TransactionTypesCreateWithoutTransactionsInput<TRes>
      get create =>
          CopyWith$Input$TransactionTypesCreateWithoutTransactionsInput.stub(
              _res);
}

class Input$TransactionStatusCreateNestedOneWithoutTransactionsInput {
  factory Input$TransactionStatusCreateNestedOneWithoutTransactionsInput({
    Input$TransactionStatusCreateWithoutTransactionsInput? create,
    Input$TransactionStatusCreateOrConnectWithoutTransactionsInput?
        connectOrCreate,
    Input$TransactionStatusWhereUniqueInput? connect,
  }) =>
      Input$TransactionStatusCreateNestedOneWithoutTransactionsInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (connect != null) r'connect': connect,
      });

  Input$TransactionStatusCreateNestedOneWithoutTransactionsInput._(this._$data);

  factory Input$TransactionStatusCreateNestedOneWithoutTransactionsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = l$create == null
          ? null
          : Input$TransactionStatusCreateWithoutTransactionsInput.fromJson(
              (l$create as Map<String, dynamic>));
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = l$connectOrCreate == null
          ? null
          : Input$TransactionStatusCreateOrConnectWithoutTransactionsInput
              .fromJson((l$connectOrCreate as Map<String, dynamic>));
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = l$connect == null
          ? null
          : Input$TransactionStatusWhereUniqueInput.fromJson(
              (l$connect as Map<String, dynamic>));
    }
    return Input$TransactionStatusCreateNestedOneWithoutTransactionsInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionStatusCreateWithoutTransactionsInput? get create =>
      (_$data['create']
          as Input$TransactionStatusCreateWithoutTransactionsInput?);
  Input$TransactionStatusCreateOrConnectWithoutTransactionsInput?
      get connectOrCreate => (_$data['connectOrCreate']
          as Input$TransactionStatusCreateOrConnectWithoutTransactionsInput?);
  Input$TransactionStatusWhereUniqueInput? get connect =>
      (_$data['connect'] as Input$TransactionStatusWhereUniqueInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.toJson();
    }
    if (_$data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = connectOrCreate;
      result$data['connectOrCreate'] = l$connectOrCreate?.toJson();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionStatusCreateNestedOneWithoutTransactionsInput<
          Input$TransactionStatusCreateNestedOneWithoutTransactionsInput>
      get copyWith =>
          CopyWith$Input$TransactionStatusCreateNestedOneWithoutTransactionsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$TransactionStatusCreateNestedOneWithoutTransactionsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != lOther$create) {
      return false;
    }
    final l$connectOrCreate = connectOrCreate;
    final lOther$connectOrCreate = other.connectOrCreate;
    if (_$data.containsKey('connectOrCreate') !=
        other._$data.containsKey('connectOrCreate')) {
      return false;
    }
    if (l$connectOrCreate != lOther$connectOrCreate) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != lOther$connect) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connectOrCreate = connectOrCreate;
    final l$connect = connect;
    return Object.hashAll([
      _$data.containsKey('create') ? l$create : const {},
      _$data.containsKey('connectOrCreate') ? l$connectOrCreate : const {},
      _$data.containsKey('connect') ? l$connect : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionStatusCreateNestedOneWithoutTransactionsInput<
    TRes> {
  factory CopyWith$Input$TransactionStatusCreateNestedOneWithoutTransactionsInput(
    Input$TransactionStatusCreateNestedOneWithoutTransactionsInput instance,
    TRes Function(
            Input$TransactionStatusCreateNestedOneWithoutTransactionsInput)
        then,
  ) = _CopyWithImpl$Input$TransactionStatusCreateNestedOneWithoutTransactionsInput;

  factory CopyWith$Input$TransactionStatusCreateNestedOneWithoutTransactionsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionStatusCreateNestedOneWithoutTransactionsInput;

  TRes call({
    Input$TransactionStatusCreateWithoutTransactionsInput? create,
    Input$TransactionStatusCreateOrConnectWithoutTransactionsInput?
        connectOrCreate,
    Input$TransactionStatusWhereUniqueInput? connect,
  });
  CopyWith$Input$TransactionStatusCreateWithoutTransactionsInput<TRes>
      get create;
  CopyWith$Input$TransactionStatusCreateOrConnectWithoutTransactionsInput<TRes>
      get connectOrCreate;
}

class _CopyWithImpl$Input$TransactionStatusCreateNestedOneWithoutTransactionsInput<
        TRes>
    implements
        CopyWith$Input$TransactionStatusCreateNestedOneWithoutTransactionsInput<
            TRes> {
  _CopyWithImpl$Input$TransactionStatusCreateNestedOneWithoutTransactionsInput(
    this._instance,
    this._then,
  );

  final Input$TransactionStatusCreateNestedOneWithoutTransactionsInput
      _instance;

  final TRes Function(
      Input$TransactionStatusCreateNestedOneWithoutTransactionsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$TransactionStatusCreateNestedOneWithoutTransactionsInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create
              as Input$TransactionStatusCreateWithoutTransactionsInput?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as Input$TransactionStatusCreateOrConnectWithoutTransactionsInput?),
        if (connect != _undefined)
          'connect': (connect as Input$TransactionStatusWhereUniqueInput?),
      }));
  CopyWith$Input$TransactionStatusCreateWithoutTransactionsInput<TRes>
      get create {
    final local$create = _instance.create;
    return local$create == null
        ? CopyWith$Input$TransactionStatusCreateWithoutTransactionsInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionStatusCreateWithoutTransactionsInput(
            local$create, (e) => call(create: e));
  }

  CopyWith$Input$TransactionStatusCreateOrConnectWithoutTransactionsInput<TRes>
      get connectOrCreate {
    final local$connectOrCreate = _instance.connectOrCreate;
    return local$connectOrCreate == null
        ? CopyWith$Input$TransactionStatusCreateOrConnectWithoutTransactionsInput
            .stub(_then(_instance))
        : CopyWith$Input$TransactionStatusCreateOrConnectWithoutTransactionsInput(
            local$connectOrCreate, (e) => call(connectOrCreate: e));
  }
}

class _CopyWithStubImpl$Input$TransactionStatusCreateNestedOneWithoutTransactionsInput<
        TRes>
    implements
        CopyWith$Input$TransactionStatusCreateNestedOneWithoutTransactionsInput<
            TRes> {
  _CopyWithStubImpl$Input$TransactionStatusCreateNestedOneWithoutTransactionsInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionStatusCreateWithoutTransactionsInput? create,
    Input$TransactionStatusCreateOrConnectWithoutTransactionsInput?
        connectOrCreate,
    Input$TransactionStatusWhereUniqueInput? connect,
  }) =>
      _res;
  CopyWith$Input$TransactionStatusCreateWithoutTransactionsInput<TRes>
      get create =>
          CopyWith$Input$TransactionStatusCreateWithoutTransactionsInput.stub(
              _res);
  CopyWith$Input$TransactionStatusCreateOrConnectWithoutTransactionsInput<TRes>
      get connectOrCreate =>
          CopyWith$Input$TransactionStatusCreateOrConnectWithoutTransactionsInput
              .stub(_res);
}

class Input$TransactionStatusCreateWithoutTransactionsInput {
  factory Input$TransactionStatusCreateWithoutTransactionsInput({
    required String name,
    required String description,
  }) =>
      Input$TransactionStatusCreateWithoutTransactionsInput._({
        r'name': name,
        r'description': description,
      });

  Input$TransactionStatusCreateWithoutTransactionsInput._(this._$data);

  factory Input$TransactionStatusCreateWithoutTransactionsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$description = data['description'];
    result$data['description'] = (l$description as String);
    return Input$TransactionStatusCreateWithoutTransactionsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  String get description => (_$data['description'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$description = description;
    result$data['description'] = l$description;
    return result$data;
  }

  CopyWith$Input$TransactionStatusCreateWithoutTransactionsInput<
          Input$TransactionStatusCreateWithoutTransactionsInput>
      get copyWith =>
          CopyWith$Input$TransactionStatusCreateWithoutTransactionsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionStatusCreateWithoutTransactionsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$description = description;
    return Object.hashAll([
      l$name,
      l$description,
    ]);
  }
}

abstract class CopyWith$Input$TransactionStatusCreateWithoutTransactionsInput<
    TRes> {
  factory CopyWith$Input$TransactionStatusCreateWithoutTransactionsInput(
    Input$TransactionStatusCreateWithoutTransactionsInput instance,
    TRes Function(Input$TransactionStatusCreateWithoutTransactionsInput) then,
  ) = _CopyWithImpl$Input$TransactionStatusCreateWithoutTransactionsInput;

  factory CopyWith$Input$TransactionStatusCreateWithoutTransactionsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionStatusCreateWithoutTransactionsInput;

  TRes call({
    String? name,
    String? description,
  });
}

class _CopyWithImpl$Input$TransactionStatusCreateWithoutTransactionsInput<TRes>
    implements
        CopyWith$Input$TransactionStatusCreateWithoutTransactionsInput<TRes> {
  _CopyWithImpl$Input$TransactionStatusCreateWithoutTransactionsInput(
    this._instance,
    this._then,
  );

  final Input$TransactionStatusCreateWithoutTransactionsInput _instance;

  final TRes Function(Input$TransactionStatusCreateWithoutTransactionsInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? description = _undefined,
  }) =>
      _then(Input$TransactionStatusCreateWithoutTransactionsInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (description != _undefined && description != null)
          'description': (description as String),
      }));
}

class _CopyWithStubImpl$Input$TransactionStatusCreateWithoutTransactionsInput<
        TRes>
    implements
        CopyWith$Input$TransactionStatusCreateWithoutTransactionsInput<TRes> {
  _CopyWithStubImpl$Input$TransactionStatusCreateWithoutTransactionsInput(
      this._res);

  TRes _res;

  call({
    String? name,
    String? description,
  }) =>
      _res;
}

class Input$TransactionStatusCreateOrConnectWithoutTransactionsInput {
  factory Input$TransactionStatusCreateOrConnectWithoutTransactionsInput({
    required Input$TransactionStatusWhereUniqueInput where,
    required Input$TransactionStatusCreateWithoutTransactionsInput create,
  }) =>
      Input$TransactionStatusCreateOrConnectWithoutTransactionsInput._({
        r'where': where,
        r'create': create,
      });

  Input$TransactionStatusCreateOrConnectWithoutTransactionsInput._(this._$data);

  factory Input$TransactionStatusCreateOrConnectWithoutTransactionsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$TransactionStatusWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] =
        Input$TransactionStatusCreateWithoutTransactionsInput.fromJson(
            (l$create as Map<String, dynamic>));
    return Input$TransactionStatusCreateOrConnectWithoutTransactionsInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionStatusWhereUniqueInput get where =>
      (_$data['where'] as Input$TransactionStatusWhereUniqueInput);
  Input$TransactionStatusCreateWithoutTransactionsInput get create =>
      (_$data['create']
          as Input$TransactionStatusCreateWithoutTransactionsInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionStatusCreateOrConnectWithoutTransactionsInput<
          Input$TransactionStatusCreateOrConnectWithoutTransactionsInput>
      get copyWith =>
          CopyWith$Input$TransactionStatusCreateOrConnectWithoutTransactionsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$TransactionStatusCreateOrConnectWithoutTransactionsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (l$create != lOther$create) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$create = create;
    return Object.hashAll([
      l$where,
      l$create,
    ]);
  }
}

abstract class CopyWith$Input$TransactionStatusCreateOrConnectWithoutTransactionsInput<
    TRes> {
  factory CopyWith$Input$TransactionStatusCreateOrConnectWithoutTransactionsInput(
    Input$TransactionStatusCreateOrConnectWithoutTransactionsInput instance,
    TRes Function(
            Input$TransactionStatusCreateOrConnectWithoutTransactionsInput)
        then,
  ) = _CopyWithImpl$Input$TransactionStatusCreateOrConnectWithoutTransactionsInput;

  factory CopyWith$Input$TransactionStatusCreateOrConnectWithoutTransactionsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionStatusCreateOrConnectWithoutTransactionsInput;

  TRes call({
    Input$TransactionStatusWhereUniqueInput? where,
    Input$TransactionStatusCreateWithoutTransactionsInput? create,
  });
  CopyWith$Input$TransactionStatusCreateWithoutTransactionsInput<TRes>
      get create;
}

class _CopyWithImpl$Input$TransactionStatusCreateOrConnectWithoutTransactionsInput<
        TRes>
    implements
        CopyWith$Input$TransactionStatusCreateOrConnectWithoutTransactionsInput<
            TRes> {
  _CopyWithImpl$Input$TransactionStatusCreateOrConnectWithoutTransactionsInput(
    this._instance,
    this._then,
  );

  final Input$TransactionStatusCreateOrConnectWithoutTransactionsInput
      _instance;

  final TRes Function(
      Input$TransactionStatusCreateOrConnectWithoutTransactionsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$TransactionStatusCreateOrConnectWithoutTransactionsInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$TransactionStatusWhereUniqueInput),
        if (create != _undefined && create != null)
          'create':
              (create as Input$TransactionStatusCreateWithoutTransactionsInput),
      }));
  CopyWith$Input$TransactionStatusCreateWithoutTransactionsInput<TRes>
      get create {
    final local$create = _instance.create;
    return CopyWith$Input$TransactionStatusCreateWithoutTransactionsInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$TransactionStatusCreateOrConnectWithoutTransactionsInput<
        TRes>
    implements
        CopyWith$Input$TransactionStatusCreateOrConnectWithoutTransactionsInput<
            TRes> {
  _CopyWithStubImpl$Input$TransactionStatusCreateOrConnectWithoutTransactionsInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionStatusWhereUniqueInput? where,
    Input$TransactionStatusCreateWithoutTransactionsInput? create,
  }) =>
      _res;
  CopyWith$Input$TransactionStatusCreateWithoutTransactionsInput<TRes>
      get create =>
          CopyWith$Input$TransactionStatusCreateWithoutTransactionsInput.stub(
              _res);
}

class Input$PayementsCreateNestedManyWithoutTransactionInput {
  factory Input$PayementsCreateNestedManyWithoutTransactionInput({
    List<Input$PayementsCreateWithoutTransactionInput>? create,
    List<Input$PayementsCreateOrConnectWithoutTransactionInput>?
        connectOrCreate,
    List<Input$PayementsWhereUniqueInput>? connect,
  }) =>
      Input$PayementsCreateNestedManyWithoutTransactionInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (connect != null) r'connect': connect,
      });

  Input$PayementsCreateNestedManyWithoutTransactionInput._(this._$data);

  factory Input$PayementsCreateNestedManyWithoutTransactionInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = (l$create as List<dynamic>?)
          ?.map((e) => Input$PayementsCreateWithoutTransactionInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = (l$connectOrCreate as List<dynamic>?)
          ?.map((e) =>
              Input$PayementsCreateOrConnectWithoutTransactionInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = (l$connect as List<dynamic>?)
          ?.map((e) => Input$PayementsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$PayementsCreateNestedManyWithoutTransactionInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$PayementsCreateWithoutTransactionInput>? get create =>
      (_$data['create'] as List<Input$PayementsCreateWithoutTransactionInput>?);
  List<Input$PayementsCreateOrConnectWithoutTransactionInput>?
      get connectOrCreate => (_$data['connectOrCreate']
          as List<Input$PayementsCreateOrConnectWithoutTransactionInput>?);
  List<Input$PayementsWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$PayementsWhereUniqueInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = connectOrCreate;
      result$data['connectOrCreate'] =
          l$connectOrCreate?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$PayementsCreateNestedManyWithoutTransactionInput<
          Input$PayementsCreateNestedManyWithoutTransactionInput>
      get copyWith =>
          CopyWith$Input$PayementsCreateNestedManyWithoutTransactionInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PayementsCreateNestedManyWithoutTransactionInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != null && lOther$create != null) {
      if (l$create.length != lOther$create.length) {
        return false;
      }
      for (int i = 0; i < l$create.length; i++) {
        final l$create$entry = l$create[i];
        final lOther$create$entry = lOther$create[i];
        if (l$create$entry != lOther$create$entry) {
          return false;
        }
      }
    } else if (l$create != lOther$create) {
      return false;
    }
    final l$connectOrCreate = connectOrCreate;
    final lOther$connectOrCreate = other.connectOrCreate;
    if (_$data.containsKey('connectOrCreate') !=
        other._$data.containsKey('connectOrCreate')) {
      return false;
    }
    if (l$connectOrCreate != null && lOther$connectOrCreate != null) {
      if (l$connectOrCreate.length != lOther$connectOrCreate.length) {
        return false;
      }
      for (int i = 0; i < l$connectOrCreate.length; i++) {
        final l$connectOrCreate$entry = l$connectOrCreate[i];
        final lOther$connectOrCreate$entry = lOther$connectOrCreate[i];
        if (l$connectOrCreate$entry != lOther$connectOrCreate$entry) {
          return false;
        }
      }
    } else if (l$connectOrCreate != lOther$connectOrCreate) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != null && lOther$connect != null) {
      if (l$connect.length != lOther$connect.length) {
        return false;
      }
      for (int i = 0; i < l$connect.length; i++) {
        final l$connect$entry = l$connect[i];
        final lOther$connect$entry = lOther$connect[i];
        if (l$connect$entry != lOther$connect$entry) {
          return false;
        }
      }
    } else if (l$connect != lOther$connect) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connectOrCreate = connectOrCreate;
    final l$connect = connect;
    return Object.hashAll([
      _$data.containsKey('create')
          ? l$create == null
              ? null
              : Object.hashAll(l$create.map((v) => v))
          : const {},
      _$data.containsKey('connectOrCreate')
          ? l$connectOrCreate == null
              ? null
              : Object.hashAll(l$connectOrCreate.map((v) => v))
          : const {},
      _$data.containsKey('connect')
          ? l$connect == null
              ? null
              : Object.hashAll(l$connect.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$PayementsCreateNestedManyWithoutTransactionInput<
    TRes> {
  factory CopyWith$Input$PayementsCreateNestedManyWithoutTransactionInput(
    Input$PayementsCreateNestedManyWithoutTransactionInput instance,
    TRes Function(Input$PayementsCreateNestedManyWithoutTransactionInput) then,
  ) = _CopyWithImpl$Input$PayementsCreateNestedManyWithoutTransactionInput;

  factory CopyWith$Input$PayementsCreateNestedManyWithoutTransactionInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$PayementsCreateNestedManyWithoutTransactionInput;

  TRes call({
    List<Input$PayementsCreateWithoutTransactionInput>? create,
    List<Input$PayementsCreateOrConnectWithoutTransactionInput>?
        connectOrCreate,
    List<Input$PayementsWhereUniqueInput>? connect,
  });
  TRes create(
      Iterable<Input$PayementsCreateWithoutTransactionInput>? Function(
              Iterable<
                  CopyWith$Input$PayementsCreateWithoutTransactionInput<
                      Input$PayementsCreateWithoutTransactionInput>>?)
          _fn);
  TRes connectOrCreate(
      Iterable<Input$PayementsCreateOrConnectWithoutTransactionInput>? Function(
              Iterable<
                  CopyWith$Input$PayementsCreateOrConnectWithoutTransactionInput<
                      Input$PayementsCreateOrConnectWithoutTransactionInput>>?)
          _fn);
}

class _CopyWithImpl$Input$PayementsCreateNestedManyWithoutTransactionInput<TRes>
    implements
        CopyWith$Input$PayementsCreateNestedManyWithoutTransactionInput<TRes> {
  _CopyWithImpl$Input$PayementsCreateNestedManyWithoutTransactionInput(
    this._instance,
    this._then,
  );

  final Input$PayementsCreateNestedManyWithoutTransactionInput _instance;

  final TRes Function(Input$PayementsCreateNestedManyWithoutTransactionInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$PayementsCreateNestedManyWithoutTransactionInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create':
              (create as List<Input$PayementsCreateWithoutTransactionInput>?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as List<Input$PayementsCreateOrConnectWithoutTransactionInput>?),
        if (connect != _undefined)
          'connect': (connect as List<Input$PayementsWhereUniqueInput>?),
      }));
  TRes create(
          Iterable<Input$PayementsCreateWithoutTransactionInput>? Function(
                  Iterable<
                      CopyWith$Input$PayementsCreateWithoutTransactionInput<
                          Input$PayementsCreateWithoutTransactionInput>>?)
              _fn) =>
      call(
          create: _fn(_instance.create?.map(
              (e) => CopyWith$Input$PayementsCreateWithoutTransactionInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes connectOrCreate(
          Iterable<Input$PayementsCreateOrConnectWithoutTransactionInput>? Function(
                  Iterable<
                      CopyWith$Input$PayementsCreateOrConnectWithoutTransactionInput<
                          Input$PayementsCreateOrConnectWithoutTransactionInput>>?)
              _fn) =>
      call(
          connectOrCreate: _fn(_instance.connectOrCreate?.map((e) =>
              CopyWith$Input$PayementsCreateOrConnectWithoutTransactionInput(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Input$PayementsCreateNestedManyWithoutTransactionInput<
        TRes>
    implements
        CopyWith$Input$PayementsCreateNestedManyWithoutTransactionInput<TRes> {
  _CopyWithStubImpl$Input$PayementsCreateNestedManyWithoutTransactionInput(
      this._res);

  TRes _res;

  call({
    List<Input$PayementsCreateWithoutTransactionInput>? create,
    List<Input$PayementsCreateOrConnectWithoutTransactionInput>?
        connectOrCreate,
    List<Input$PayementsWhereUniqueInput>? connect,
  }) =>
      _res;
  create(_fn) => _res;
  connectOrCreate(_fn) => _res;
}

class Input$PayementsCreateWithoutTransactionInput {
  factory Input$PayementsCreateWithoutTransactionInput({
    required int payement_id,
    required double payement,
  }) =>
      Input$PayementsCreateWithoutTransactionInput._({
        r'payement_id': payement_id,
        r'payement': payement,
      });

  Input$PayementsCreateWithoutTransactionInput._(this._$data);

  factory Input$PayementsCreateWithoutTransactionInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$payement_id = data['payement_id'];
    result$data['payement_id'] = (l$payement_id as int);
    final l$payement = data['payement'];
    result$data['payement'] = (l$payement as num).toDouble();
    return Input$PayementsCreateWithoutTransactionInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get payement_id => (_$data['payement_id'] as int);
  double get payement => (_$data['payement'] as double);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$payement_id = payement_id;
    result$data['payement_id'] = l$payement_id;
    final l$payement = payement;
    result$data['payement'] = l$payement;
    return result$data;
  }

  CopyWith$Input$PayementsCreateWithoutTransactionInput<
          Input$PayementsCreateWithoutTransactionInput>
      get copyWith => CopyWith$Input$PayementsCreateWithoutTransactionInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PayementsCreateWithoutTransactionInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payement_id = payement_id;
    final lOther$payement_id = other.payement_id;
    if (l$payement_id != lOther$payement_id) {
      return false;
    }
    final l$payement = payement;
    final lOther$payement = other.payement;
    if (l$payement != lOther$payement) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$payement_id = payement_id;
    final l$payement = payement;
    return Object.hashAll([
      l$payement_id,
      l$payement,
    ]);
  }
}

abstract class CopyWith$Input$PayementsCreateWithoutTransactionInput<TRes> {
  factory CopyWith$Input$PayementsCreateWithoutTransactionInput(
    Input$PayementsCreateWithoutTransactionInput instance,
    TRes Function(Input$PayementsCreateWithoutTransactionInput) then,
  ) = _CopyWithImpl$Input$PayementsCreateWithoutTransactionInput;

  factory CopyWith$Input$PayementsCreateWithoutTransactionInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PayementsCreateWithoutTransactionInput;

  TRes call({
    int? payement_id,
    double? payement,
  });
}

class _CopyWithImpl$Input$PayementsCreateWithoutTransactionInput<TRes>
    implements CopyWith$Input$PayementsCreateWithoutTransactionInput<TRes> {
  _CopyWithImpl$Input$PayementsCreateWithoutTransactionInput(
    this._instance,
    this._then,
  );

  final Input$PayementsCreateWithoutTransactionInput _instance;

  final TRes Function(Input$PayementsCreateWithoutTransactionInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payement_id = _undefined,
    Object? payement = _undefined,
  }) =>
      _then(Input$PayementsCreateWithoutTransactionInput._({
        ..._instance._$data,
        if (payement_id != _undefined && payement_id != null)
          'payement_id': (payement_id as int),
        if (payement != _undefined && payement != null)
          'payement': (payement as double),
      }));
}

class _CopyWithStubImpl$Input$PayementsCreateWithoutTransactionInput<TRes>
    implements CopyWith$Input$PayementsCreateWithoutTransactionInput<TRes> {
  _CopyWithStubImpl$Input$PayementsCreateWithoutTransactionInput(this._res);

  TRes _res;

  call({
    int? payement_id,
    double? payement,
  }) =>
      _res;
}

class Input$PayementsCreateOrConnectWithoutTransactionInput {
  factory Input$PayementsCreateOrConnectWithoutTransactionInput({
    required Input$PayementsWhereUniqueInput where,
    required Input$PayementsCreateWithoutTransactionInput create,
  }) =>
      Input$PayementsCreateOrConnectWithoutTransactionInput._({
        r'where': where,
        r'create': create,
      });

  Input$PayementsCreateOrConnectWithoutTransactionInput._(this._$data);

  factory Input$PayementsCreateOrConnectWithoutTransactionInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$PayementsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] =
        Input$PayementsCreateWithoutTransactionInput.fromJson(
            (l$create as Map<String, dynamic>));
    return Input$PayementsCreateOrConnectWithoutTransactionInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PayementsWhereUniqueInput get where =>
      (_$data['where'] as Input$PayementsWhereUniqueInput);
  Input$PayementsCreateWithoutTransactionInput get create =>
      (_$data['create'] as Input$PayementsCreateWithoutTransactionInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$PayementsCreateOrConnectWithoutTransactionInput<
          Input$PayementsCreateOrConnectWithoutTransactionInput>
      get copyWith =>
          CopyWith$Input$PayementsCreateOrConnectWithoutTransactionInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PayementsCreateOrConnectWithoutTransactionInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (l$create != lOther$create) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$create = create;
    return Object.hashAll([
      l$where,
      l$create,
    ]);
  }
}

abstract class CopyWith$Input$PayementsCreateOrConnectWithoutTransactionInput<
    TRes> {
  factory CopyWith$Input$PayementsCreateOrConnectWithoutTransactionInput(
    Input$PayementsCreateOrConnectWithoutTransactionInput instance,
    TRes Function(Input$PayementsCreateOrConnectWithoutTransactionInput) then,
  ) = _CopyWithImpl$Input$PayementsCreateOrConnectWithoutTransactionInput;

  factory CopyWith$Input$PayementsCreateOrConnectWithoutTransactionInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$PayementsCreateOrConnectWithoutTransactionInput;

  TRes call({
    Input$PayementsWhereUniqueInput? where,
    Input$PayementsCreateWithoutTransactionInput? create,
  });
  CopyWith$Input$PayementsCreateWithoutTransactionInput<TRes> get create;
}

class _CopyWithImpl$Input$PayementsCreateOrConnectWithoutTransactionInput<TRes>
    implements
        CopyWith$Input$PayementsCreateOrConnectWithoutTransactionInput<TRes> {
  _CopyWithImpl$Input$PayementsCreateOrConnectWithoutTransactionInput(
    this._instance,
    this._then,
  );

  final Input$PayementsCreateOrConnectWithoutTransactionInput _instance;

  final TRes Function(Input$PayementsCreateOrConnectWithoutTransactionInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$PayementsCreateOrConnectWithoutTransactionInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$PayementsWhereUniqueInput),
        if (create != _undefined && create != null)
          'create': (create as Input$PayementsCreateWithoutTransactionInput),
      }));
  CopyWith$Input$PayementsCreateWithoutTransactionInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$PayementsCreateWithoutTransactionInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$PayementsCreateOrConnectWithoutTransactionInput<
        TRes>
    implements
        CopyWith$Input$PayementsCreateOrConnectWithoutTransactionInput<TRes> {
  _CopyWithStubImpl$Input$PayementsCreateOrConnectWithoutTransactionInput(
      this._res);

  TRes _res;

  call({
    Input$PayementsWhereUniqueInput? where,
    Input$PayementsCreateWithoutTransactionInput? create,
  }) =>
      _res;
  CopyWith$Input$PayementsCreateWithoutTransactionInput<TRes> get create =>
      CopyWith$Input$PayementsCreateWithoutTransactionInput.stub(_res);
}

class Input$TransactionsCreateOrConnectWithoutCityInput {
  factory Input$TransactionsCreateOrConnectWithoutCityInput({
    required Input$TransactionsWhereUniqueInput where,
    required Input$TransactionsCreateWithoutCityInput create,
  }) =>
      Input$TransactionsCreateOrConnectWithoutCityInput._({
        r'where': where,
        r'create': create,
      });

  Input$TransactionsCreateOrConnectWithoutCityInput._(this._$data);

  factory Input$TransactionsCreateOrConnectWithoutCityInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$TransactionsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] = Input$TransactionsCreateWithoutCityInput.fromJson(
        (l$create as Map<String, dynamic>));
    return Input$TransactionsCreateOrConnectWithoutCityInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionsWhereUniqueInput get where =>
      (_$data['where'] as Input$TransactionsWhereUniqueInput);
  Input$TransactionsCreateWithoutCityInput get create =>
      (_$data['create'] as Input$TransactionsCreateWithoutCityInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionsCreateOrConnectWithoutCityInput<
          Input$TransactionsCreateOrConnectWithoutCityInput>
      get copyWith =>
          CopyWith$Input$TransactionsCreateOrConnectWithoutCityInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsCreateOrConnectWithoutCityInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (l$create != lOther$create) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$create = create;
    return Object.hashAll([
      l$where,
      l$create,
    ]);
  }
}

abstract class CopyWith$Input$TransactionsCreateOrConnectWithoutCityInput<
    TRes> {
  factory CopyWith$Input$TransactionsCreateOrConnectWithoutCityInput(
    Input$TransactionsCreateOrConnectWithoutCityInput instance,
    TRes Function(Input$TransactionsCreateOrConnectWithoutCityInput) then,
  ) = _CopyWithImpl$Input$TransactionsCreateOrConnectWithoutCityInput;

  factory CopyWith$Input$TransactionsCreateOrConnectWithoutCityInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsCreateOrConnectWithoutCityInput;

  TRes call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsCreateWithoutCityInput? create,
  });
  CopyWith$Input$TransactionsCreateWithoutCityInput<TRes> get create;
}

class _CopyWithImpl$Input$TransactionsCreateOrConnectWithoutCityInput<TRes>
    implements
        CopyWith$Input$TransactionsCreateOrConnectWithoutCityInput<TRes> {
  _CopyWithImpl$Input$TransactionsCreateOrConnectWithoutCityInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsCreateOrConnectWithoutCityInput _instance;

  final TRes Function(Input$TransactionsCreateOrConnectWithoutCityInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$TransactionsCreateOrConnectWithoutCityInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$TransactionsWhereUniqueInput),
        if (create != _undefined && create != null)
          'create': (create as Input$TransactionsCreateWithoutCityInput),
      }));
  CopyWith$Input$TransactionsCreateWithoutCityInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$TransactionsCreateWithoutCityInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsCreateOrConnectWithoutCityInput<TRes>
    implements
        CopyWith$Input$TransactionsCreateOrConnectWithoutCityInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsCreateOrConnectWithoutCityInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsCreateWithoutCityInput? create,
  }) =>
      _res;
  CopyWith$Input$TransactionsCreateWithoutCityInput<TRes> get create =>
      CopyWith$Input$TransactionsCreateWithoutCityInput.stub(_res);
}

class Input$CityUpdateManyMutationInput {
  factory Input$CityUpdateManyMutationInput({
    Input$IntFieldUpdateOperationsInput? city_id,
    Input$StringFieldUpdateOperationsInput? city_name,
  }) =>
      Input$CityUpdateManyMutationInput._({
        if (city_id != null) r'city_id': city_id,
        if (city_name != null) r'city_name': city_name,
      });

  Input$CityUpdateManyMutationInput._(this._$data);

  factory Input$CityUpdateManyMutationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('city_id')) {
      final l$city_id = data['city_id'];
      result$data['city_id'] = l$city_id == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$city_id as Map<String, dynamic>));
    }
    if (data.containsKey('city_name')) {
      final l$city_name = data['city_name'];
      result$data['city_name'] = l$city_name == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$city_name as Map<String, dynamic>));
    }
    return Input$CityUpdateManyMutationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get city_id =>
      (_$data['city_id'] as Input$IntFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get city_name =>
      (_$data['city_name'] as Input$StringFieldUpdateOperationsInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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

  CopyWith$Input$CityUpdateManyMutationInput<Input$CityUpdateManyMutationInput>
      get copyWith => CopyWith$Input$CityUpdateManyMutationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CityUpdateManyMutationInput) ||
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

abstract class CopyWith$Input$CityUpdateManyMutationInput<TRes> {
  factory CopyWith$Input$CityUpdateManyMutationInput(
    Input$CityUpdateManyMutationInput instance,
    TRes Function(Input$CityUpdateManyMutationInput) then,
  ) = _CopyWithImpl$Input$CityUpdateManyMutationInput;

  factory CopyWith$Input$CityUpdateManyMutationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CityUpdateManyMutationInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? city_id,
    Input$StringFieldUpdateOperationsInput? city_name,
  });
  CopyWith$Input$IntFieldUpdateOperationsInput<TRes> get city_id;
  CopyWith$Input$StringFieldUpdateOperationsInput<TRes> get city_name;
}

class _CopyWithImpl$Input$CityUpdateManyMutationInput<TRes>
    implements CopyWith$Input$CityUpdateManyMutationInput<TRes> {
  _CopyWithImpl$Input$CityUpdateManyMutationInput(
    this._instance,
    this._then,
  );

  final Input$CityUpdateManyMutationInput _instance;

  final TRes Function(Input$CityUpdateManyMutationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? city_id = _undefined,
    Object? city_name = _undefined,
  }) =>
      _then(Input$CityUpdateManyMutationInput._({
        ..._instance._$data,
        if (city_id != _undefined)
          'city_id': (city_id as Input$IntFieldUpdateOperationsInput?),
        if (city_name != _undefined)
          'city_name': (city_name as Input$StringFieldUpdateOperationsInput?),
      }));
  CopyWith$Input$IntFieldUpdateOperationsInput<TRes> get city_id {
    final local$city_id = _instance.city_id;
    return local$city_id == null
        ? CopyWith$Input$IntFieldUpdateOperationsInput.stub(_then(_instance))
        : CopyWith$Input$IntFieldUpdateOperationsInput(
            local$city_id, (e) => call(city_id: e));
  }

  CopyWith$Input$StringFieldUpdateOperationsInput<TRes> get city_name {
    final local$city_name = _instance.city_name;
    return local$city_name == null
        ? CopyWith$Input$StringFieldUpdateOperationsInput.stub(_then(_instance))
        : CopyWith$Input$StringFieldUpdateOperationsInput(
            local$city_name, (e) => call(city_name: e));
  }
}

class _CopyWithStubImpl$Input$CityUpdateManyMutationInput<TRes>
    implements CopyWith$Input$CityUpdateManyMutationInput<TRes> {
  _CopyWithStubImpl$Input$CityUpdateManyMutationInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? city_id,
    Input$StringFieldUpdateOperationsInput? city_name,
  }) =>
      _res;
  CopyWith$Input$IntFieldUpdateOperationsInput<TRes> get city_id =>
      CopyWith$Input$IntFieldUpdateOperationsInput.stub(_res);
  CopyWith$Input$StringFieldUpdateOperationsInput<TRes> get city_name =>
      CopyWith$Input$StringFieldUpdateOperationsInput.stub(_res);
}

class Input$IntFieldUpdateOperationsInput {
  factory Input$IntFieldUpdateOperationsInput({
    int? $set,
    int? increment,
    int? decrement,
    int? multiply,
    int? divide,
  }) =>
      Input$IntFieldUpdateOperationsInput._({
        if ($set != null) r'set': $set,
        if (increment != null) r'increment': increment,
        if (decrement != null) r'decrement': decrement,
        if (multiply != null) r'multiply': multiply,
        if (divide != null) r'divide': divide,
      });

  Input$IntFieldUpdateOperationsInput._(this._$data);

  factory Input$IntFieldUpdateOperationsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('set')) {
      final l$$set = data['set'];
      result$data['set'] = (l$$set as int?);
    }
    if (data.containsKey('increment')) {
      final l$increment = data['increment'];
      result$data['increment'] = (l$increment as int?);
    }
    if (data.containsKey('decrement')) {
      final l$decrement = data['decrement'];
      result$data['decrement'] = (l$decrement as int?);
    }
    if (data.containsKey('multiply')) {
      final l$multiply = data['multiply'];
      result$data['multiply'] = (l$multiply as int?);
    }
    if (data.containsKey('divide')) {
      final l$divide = data['divide'];
      result$data['divide'] = (l$divide as int?);
    }
    return Input$IntFieldUpdateOperationsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get $set => (_$data['set'] as int?);
  int? get increment => (_$data['increment'] as int?);
  int? get decrement => (_$data['decrement'] as int?);
  int? get multiply => (_$data['multiply'] as int?);
  int? get divide => (_$data['divide'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('set')) {
      final l$$set = $set;
      result$data['set'] = l$$set;
    }
    if (_$data.containsKey('increment')) {
      final l$increment = increment;
      result$data['increment'] = l$increment;
    }
    if (_$data.containsKey('decrement')) {
      final l$decrement = decrement;
      result$data['decrement'] = l$decrement;
    }
    if (_$data.containsKey('multiply')) {
      final l$multiply = multiply;
      result$data['multiply'] = l$multiply;
    }
    if (_$data.containsKey('divide')) {
      final l$divide = divide;
      result$data['divide'] = l$divide;
    }
    return result$data;
  }

  CopyWith$Input$IntFieldUpdateOperationsInput<
          Input$IntFieldUpdateOperationsInput>
      get copyWith => CopyWith$Input$IntFieldUpdateOperationsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$IntFieldUpdateOperationsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (_$data.containsKey('set') != other._$data.containsKey('set')) {
      return false;
    }
    if (l$$set != lOther$$set) {
      return false;
    }
    final l$increment = increment;
    final lOther$increment = other.increment;
    if (_$data.containsKey('increment') !=
        other._$data.containsKey('increment')) {
      return false;
    }
    if (l$increment != lOther$increment) {
      return false;
    }
    final l$decrement = decrement;
    final lOther$decrement = other.decrement;
    if (_$data.containsKey('decrement') !=
        other._$data.containsKey('decrement')) {
      return false;
    }
    if (l$decrement != lOther$decrement) {
      return false;
    }
    final l$multiply = multiply;
    final lOther$multiply = other.multiply;
    if (_$data.containsKey('multiply') !=
        other._$data.containsKey('multiply')) {
      return false;
    }
    if (l$multiply != lOther$multiply) {
      return false;
    }
    final l$divide = divide;
    final lOther$divide = other.divide;
    if (_$data.containsKey('divide') != other._$data.containsKey('divide')) {
      return false;
    }
    if (l$divide != lOther$divide) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$set = $set;
    final l$increment = increment;
    final l$decrement = decrement;
    final l$multiply = multiply;
    final l$divide = divide;
    return Object.hashAll([
      _$data.containsKey('set') ? l$$set : const {},
      _$data.containsKey('increment') ? l$increment : const {},
      _$data.containsKey('decrement') ? l$decrement : const {},
      _$data.containsKey('multiply') ? l$multiply : const {},
      _$data.containsKey('divide') ? l$divide : const {},
    ]);
  }
}

abstract class CopyWith$Input$IntFieldUpdateOperationsInput<TRes> {
  factory CopyWith$Input$IntFieldUpdateOperationsInput(
    Input$IntFieldUpdateOperationsInput instance,
    TRes Function(Input$IntFieldUpdateOperationsInput) then,
  ) = _CopyWithImpl$Input$IntFieldUpdateOperationsInput;

  factory CopyWith$Input$IntFieldUpdateOperationsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$IntFieldUpdateOperationsInput;

  TRes call({
    int? $set,
    int? increment,
    int? decrement,
    int? multiply,
    int? divide,
  });
}

class _CopyWithImpl$Input$IntFieldUpdateOperationsInput<TRes>
    implements CopyWith$Input$IntFieldUpdateOperationsInput<TRes> {
  _CopyWithImpl$Input$IntFieldUpdateOperationsInput(
    this._instance,
    this._then,
  );

  final Input$IntFieldUpdateOperationsInput _instance;

  final TRes Function(Input$IntFieldUpdateOperationsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $set = _undefined,
    Object? increment = _undefined,
    Object? decrement = _undefined,
    Object? multiply = _undefined,
    Object? divide = _undefined,
  }) =>
      _then(Input$IntFieldUpdateOperationsInput._({
        ..._instance._$data,
        if ($set != _undefined) 'set': ($set as int?),
        if (increment != _undefined) 'increment': (increment as int?),
        if (decrement != _undefined) 'decrement': (decrement as int?),
        if (multiply != _undefined) 'multiply': (multiply as int?),
        if (divide != _undefined) 'divide': (divide as int?),
      }));
}

class _CopyWithStubImpl$Input$IntFieldUpdateOperationsInput<TRes>
    implements CopyWith$Input$IntFieldUpdateOperationsInput<TRes> {
  _CopyWithStubImpl$Input$IntFieldUpdateOperationsInput(this._res);

  TRes _res;

  call({
    int? $set,
    int? increment,
    int? decrement,
    int? multiply,
    int? divide,
  }) =>
      _res;
}

class Input$StringFieldUpdateOperationsInput {
  factory Input$StringFieldUpdateOperationsInput({String? $set}) =>
      Input$StringFieldUpdateOperationsInput._({
        if ($set != null) r'set': $set,
      });

  Input$StringFieldUpdateOperationsInput._(this._$data);

  factory Input$StringFieldUpdateOperationsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('set')) {
      final l$$set = data['set'];
      result$data['set'] = (l$$set as String?);
    }
    return Input$StringFieldUpdateOperationsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get $set => (_$data['set'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('set')) {
      final l$$set = $set;
      result$data['set'] = l$$set;
    }
    return result$data;
  }

  CopyWith$Input$StringFieldUpdateOperationsInput<
          Input$StringFieldUpdateOperationsInput>
      get copyWith => CopyWith$Input$StringFieldUpdateOperationsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$StringFieldUpdateOperationsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (_$data.containsKey('set') != other._$data.containsKey('set')) {
      return false;
    }
    if (l$$set != lOther$$set) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$set = $set;
    return Object.hashAll([_$data.containsKey('set') ? l$$set : const {}]);
  }
}

abstract class CopyWith$Input$StringFieldUpdateOperationsInput<TRes> {
  factory CopyWith$Input$StringFieldUpdateOperationsInput(
    Input$StringFieldUpdateOperationsInput instance,
    TRes Function(Input$StringFieldUpdateOperationsInput) then,
  ) = _CopyWithImpl$Input$StringFieldUpdateOperationsInput;

  factory CopyWith$Input$StringFieldUpdateOperationsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$StringFieldUpdateOperationsInput;

  TRes call({String? $set});
}

class _CopyWithImpl$Input$StringFieldUpdateOperationsInput<TRes>
    implements CopyWith$Input$StringFieldUpdateOperationsInput<TRes> {
  _CopyWithImpl$Input$StringFieldUpdateOperationsInput(
    this._instance,
    this._then,
  );

  final Input$StringFieldUpdateOperationsInput _instance;

  final TRes Function(Input$StringFieldUpdateOperationsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $set = _undefined}) =>
      _then(Input$StringFieldUpdateOperationsInput._({
        ..._instance._$data,
        if ($set != _undefined) 'set': ($set as String?),
      }));
}

class _CopyWithStubImpl$Input$StringFieldUpdateOperationsInput<TRes>
    implements CopyWith$Input$StringFieldUpdateOperationsInput<TRes> {
  _CopyWithStubImpl$Input$StringFieldUpdateOperationsInput(this._res);

  TRes _res;

  call({String? $set}) => _res;
}

class Input$CityUpdateInput {
  factory Input$CityUpdateInput({
    Input$IntFieldUpdateOperationsInput? city_id,
    Input$StringFieldUpdateOperationsInput? city_name,
    Input$TransactionsUpdateManyWithoutCityNestedInput? Transactions,
  }) =>
      Input$CityUpdateInput._({
        if (city_id != null) r'city_id': city_id,
        if (city_name != null) r'city_name': city_name,
        if (Transactions != null) r'Transactions': Transactions,
      });

  Input$CityUpdateInput._(this._$data);

  factory Input$CityUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('city_id')) {
      final l$city_id = data['city_id'];
      result$data['city_id'] = l$city_id == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$city_id as Map<String, dynamic>));
    }
    if (data.containsKey('city_name')) {
      final l$city_name = data['city_name'];
      result$data['city_name'] = l$city_name == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$city_name as Map<String, dynamic>));
    }
    if (data.containsKey('Transactions')) {
      final l$Transactions = data['Transactions'];
      result$data['Transactions'] = l$Transactions == null
          ? null
          : Input$TransactionsUpdateManyWithoutCityNestedInput.fromJson(
              (l$Transactions as Map<String, dynamic>));
    }
    return Input$CityUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get city_id =>
      (_$data['city_id'] as Input$IntFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get city_name =>
      (_$data['city_name'] as Input$StringFieldUpdateOperationsInput?);
  Input$TransactionsUpdateManyWithoutCityNestedInput? get Transactions =>
      (_$data['Transactions']
          as Input$TransactionsUpdateManyWithoutCityNestedInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('city_id')) {
      final l$city_id = city_id;
      result$data['city_id'] = l$city_id?.toJson();
    }
    if (_$data.containsKey('city_name')) {
      final l$city_name = city_name;
      result$data['city_name'] = l$city_name?.toJson();
    }
    if (_$data.containsKey('Transactions')) {
      final l$Transactions = Transactions;
      result$data['Transactions'] = l$Transactions?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$CityUpdateInput<Input$CityUpdateInput> get copyWith =>
      CopyWith$Input$CityUpdateInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CityUpdateInput) || runtimeType != other.runtimeType) {
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
    final l$Transactions = Transactions;
    final lOther$Transactions = other.Transactions;
    if (_$data.containsKey('Transactions') !=
        other._$data.containsKey('Transactions')) {
      return false;
    }
    if (l$Transactions != lOther$Transactions) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$city_id = city_id;
    final l$city_name = city_name;
    final l$Transactions = Transactions;
    return Object.hashAll([
      _$data.containsKey('city_id') ? l$city_id : const {},
      _$data.containsKey('city_name') ? l$city_name : const {},
      _$data.containsKey('Transactions') ? l$Transactions : const {},
    ]);
  }
}

abstract class CopyWith$Input$CityUpdateInput<TRes> {
  factory CopyWith$Input$CityUpdateInput(
    Input$CityUpdateInput instance,
    TRes Function(Input$CityUpdateInput) then,
  ) = _CopyWithImpl$Input$CityUpdateInput;

  factory CopyWith$Input$CityUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CityUpdateInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? city_id,
    Input$StringFieldUpdateOperationsInput? city_name,
    Input$TransactionsUpdateManyWithoutCityNestedInput? Transactions,
  });
  CopyWith$Input$IntFieldUpdateOperationsInput<TRes> get city_id;
  CopyWith$Input$StringFieldUpdateOperationsInput<TRes> get city_name;
  CopyWith$Input$TransactionsUpdateManyWithoutCityNestedInput<TRes>
      get Transactions;
}

class _CopyWithImpl$Input$CityUpdateInput<TRes>
    implements CopyWith$Input$CityUpdateInput<TRes> {
  _CopyWithImpl$Input$CityUpdateInput(
    this._instance,
    this._then,
  );

  final Input$CityUpdateInput _instance;

  final TRes Function(Input$CityUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? city_id = _undefined,
    Object? city_name = _undefined,
    Object? Transactions = _undefined,
  }) =>
      _then(Input$CityUpdateInput._({
        ..._instance._$data,
        if (city_id != _undefined)
          'city_id': (city_id as Input$IntFieldUpdateOperationsInput?),
        if (city_name != _undefined)
          'city_name': (city_name as Input$StringFieldUpdateOperationsInput?),
        if (Transactions != _undefined)
          'Transactions': (Transactions
              as Input$TransactionsUpdateManyWithoutCityNestedInput?),
      }));
  CopyWith$Input$IntFieldUpdateOperationsInput<TRes> get city_id {
    final local$city_id = _instance.city_id;
    return local$city_id == null
        ? CopyWith$Input$IntFieldUpdateOperationsInput.stub(_then(_instance))
        : CopyWith$Input$IntFieldUpdateOperationsInput(
            local$city_id, (e) => call(city_id: e));
  }

  CopyWith$Input$StringFieldUpdateOperationsInput<TRes> get city_name {
    final local$city_name = _instance.city_name;
    return local$city_name == null
        ? CopyWith$Input$StringFieldUpdateOperationsInput.stub(_then(_instance))
        : CopyWith$Input$StringFieldUpdateOperationsInput(
            local$city_name, (e) => call(city_name: e));
  }

  CopyWith$Input$TransactionsUpdateManyWithoutCityNestedInput<TRes>
      get Transactions {
    final local$Transactions = _instance.Transactions;
    return local$Transactions == null
        ? CopyWith$Input$TransactionsUpdateManyWithoutCityNestedInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionsUpdateManyWithoutCityNestedInput(
            local$Transactions, (e) => call(Transactions: e));
  }
}

class _CopyWithStubImpl$Input$CityUpdateInput<TRes>
    implements CopyWith$Input$CityUpdateInput<TRes> {
  _CopyWithStubImpl$Input$CityUpdateInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? city_id,
    Input$StringFieldUpdateOperationsInput? city_name,
    Input$TransactionsUpdateManyWithoutCityNestedInput? Transactions,
  }) =>
      _res;
  CopyWith$Input$IntFieldUpdateOperationsInput<TRes> get city_id =>
      CopyWith$Input$IntFieldUpdateOperationsInput.stub(_res);
  CopyWith$Input$StringFieldUpdateOperationsInput<TRes> get city_name =>
      CopyWith$Input$StringFieldUpdateOperationsInput.stub(_res);
  CopyWith$Input$TransactionsUpdateManyWithoutCityNestedInput<TRes>
      get Transactions =>
          CopyWith$Input$TransactionsUpdateManyWithoutCityNestedInput.stub(
              _res);
}

class Input$TransactionsUpdateManyWithoutCityNestedInput {
  factory Input$TransactionsUpdateManyWithoutCityNestedInput({
    List<Input$TransactionsCreateWithoutCityInput>? create,
    List<Input$TransactionsCreateOrConnectWithoutCityInput>? connectOrCreate,
    List<Input$TransactionsUpsertWithWhereUniqueWithoutCityInput>? upsert,
    List<Input$TransactionsWhereUniqueInput>? $set,
    List<Input$TransactionsWhereUniqueInput>? disconnect,
    List<Input$TransactionsWhereUniqueInput>? delete,
    List<Input$TransactionsWhereUniqueInput>? connect,
    List<Input$TransactionsUpdateWithWhereUniqueWithoutCityInput>? update,
    List<Input$TransactionsUpdateManyWithWhereWithoutCityInput>? updateMany,
    List<Input$TransactionsScalarWhereInput>? deleteMany,
  }) =>
      Input$TransactionsUpdateManyWithoutCityNestedInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (upsert != null) r'upsert': upsert,
        if ($set != null) r'set': $set,
        if (disconnect != null) r'disconnect': disconnect,
        if (delete != null) r'delete': delete,
        if (connect != null) r'connect': connect,
        if (update != null) r'update': update,
        if (updateMany != null) r'updateMany': updateMany,
        if (deleteMany != null) r'deleteMany': deleteMany,
      });

  Input$TransactionsUpdateManyWithoutCityNestedInput._(this._$data);

  factory Input$TransactionsUpdateManyWithoutCityNestedInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = (l$create as List<dynamic>?)
          ?.map((e) => Input$TransactionsCreateWithoutCityInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = (l$connectOrCreate as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionsCreateOrConnectWithoutCityInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('upsert')) {
      final l$upsert = data['upsert'];
      result$data['upsert'] = (l$upsert as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionsUpsertWithWhereUniqueWithoutCityInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('set')) {
      final l$$set = data['set'];
      result$data['set'] = (l$$set as List<dynamic>?)
          ?.map((e) => Input$TransactionsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('disconnect')) {
      final l$disconnect = data['disconnect'];
      result$data['disconnect'] = (l$disconnect as List<dynamic>?)
          ?.map((e) => Input$TransactionsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('delete')) {
      final l$delete = data['delete'];
      result$data['delete'] = (l$delete as List<dynamic>?)
          ?.map((e) => Input$TransactionsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = (l$connect as List<dynamic>?)
          ?.map((e) => Input$TransactionsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('update')) {
      final l$update = data['update'];
      result$data['update'] = (l$update as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionsUpdateWithWhereUniqueWithoutCityInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('updateMany')) {
      final l$updateMany = data['updateMany'];
      result$data['updateMany'] = (l$updateMany as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionsUpdateManyWithWhereWithoutCityInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('deleteMany')) {
      final l$deleteMany = data['deleteMany'];
      result$data['deleteMany'] = (l$deleteMany as List<dynamic>?)
          ?.map((e) => Input$TransactionsScalarWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$TransactionsUpdateManyWithoutCityNestedInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TransactionsCreateWithoutCityInput>? get create =>
      (_$data['create'] as List<Input$TransactionsCreateWithoutCityInput>?);
  List<Input$TransactionsCreateOrConnectWithoutCityInput>?
      get connectOrCreate => (_$data['connectOrCreate']
          as List<Input$TransactionsCreateOrConnectWithoutCityInput>?);
  List<Input$TransactionsUpsertWithWhereUniqueWithoutCityInput>? get upsert =>
      (_$data['upsert']
          as List<Input$TransactionsUpsertWithWhereUniqueWithoutCityInput>?);
  List<Input$TransactionsWhereUniqueInput>? get $set =>
      (_$data['set'] as List<Input$TransactionsWhereUniqueInput>?);
  List<Input$TransactionsWhereUniqueInput>? get disconnect =>
      (_$data['disconnect'] as List<Input$TransactionsWhereUniqueInput>?);
  List<Input$TransactionsWhereUniqueInput>? get delete =>
      (_$data['delete'] as List<Input$TransactionsWhereUniqueInput>?);
  List<Input$TransactionsWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$TransactionsWhereUniqueInput>?);
  List<Input$TransactionsUpdateWithWhereUniqueWithoutCityInput>? get update =>
      (_$data['update']
          as List<Input$TransactionsUpdateWithWhereUniqueWithoutCityInput>?);
  List<Input$TransactionsUpdateManyWithWhereWithoutCityInput>? get updateMany =>
      (_$data['updateMany']
          as List<Input$TransactionsUpdateManyWithWhereWithoutCityInput>?);
  List<Input$TransactionsScalarWhereInput>? get deleteMany =>
      (_$data['deleteMany'] as List<Input$TransactionsScalarWhereInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = connectOrCreate;
      result$data['connectOrCreate'] =
          l$connectOrCreate?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('upsert')) {
      final l$upsert = upsert;
      result$data['upsert'] = l$upsert?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('set')) {
      final l$$set = $set;
      result$data['set'] = l$$set?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('disconnect')) {
      final l$disconnect = disconnect;
      result$data['disconnect'] = l$disconnect?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('delete')) {
      final l$delete = delete;
      result$data['delete'] = l$delete?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('update')) {
      final l$update = update;
      result$data['update'] = l$update?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('updateMany')) {
      final l$updateMany = updateMany;
      result$data['updateMany'] = l$updateMany?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('deleteMany')) {
      final l$deleteMany = deleteMany;
      result$data['deleteMany'] = l$deleteMany?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$TransactionsUpdateManyWithoutCityNestedInput<
          Input$TransactionsUpdateManyWithoutCityNestedInput>
      get copyWith =>
          CopyWith$Input$TransactionsUpdateManyWithoutCityNestedInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsUpdateManyWithoutCityNestedInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != null && lOther$create != null) {
      if (l$create.length != lOther$create.length) {
        return false;
      }
      for (int i = 0; i < l$create.length; i++) {
        final l$create$entry = l$create[i];
        final lOther$create$entry = lOther$create[i];
        if (l$create$entry != lOther$create$entry) {
          return false;
        }
      }
    } else if (l$create != lOther$create) {
      return false;
    }
    final l$connectOrCreate = connectOrCreate;
    final lOther$connectOrCreate = other.connectOrCreate;
    if (_$data.containsKey('connectOrCreate') !=
        other._$data.containsKey('connectOrCreate')) {
      return false;
    }
    if (l$connectOrCreate != null && lOther$connectOrCreate != null) {
      if (l$connectOrCreate.length != lOther$connectOrCreate.length) {
        return false;
      }
      for (int i = 0; i < l$connectOrCreate.length; i++) {
        final l$connectOrCreate$entry = l$connectOrCreate[i];
        final lOther$connectOrCreate$entry = lOther$connectOrCreate[i];
        if (l$connectOrCreate$entry != lOther$connectOrCreate$entry) {
          return false;
        }
      }
    } else if (l$connectOrCreate != lOther$connectOrCreate) {
      return false;
    }
    final l$upsert = upsert;
    final lOther$upsert = other.upsert;
    if (_$data.containsKey('upsert') != other._$data.containsKey('upsert')) {
      return false;
    }
    if (l$upsert != null && lOther$upsert != null) {
      if (l$upsert.length != lOther$upsert.length) {
        return false;
      }
      for (int i = 0; i < l$upsert.length; i++) {
        final l$upsert$entry = l$upsert[i];
        final lOther$upsert$entry = lOther$upsert[i];
        if (l$upsert$entry != lOther$upsert$entry) {
          return false;
        }
      }
    } else if (l$upsert != lOther$upsert) {
      return false;
    }
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (_$data.containsKey('set') != other._$data.containsKey('set')) {
      return false;
    }
    if (l$$set != null && lOther$$set != null) {
      if (l$$set.length != lOther$$set.length) {
        return false;
      }
      for (int i = 0; i < l$$set.length; i++) {
        final l$$set$entry = l$$set[i];
        final lOther$$set$entry = lOther$$set[i];
        if (l$$set$entry != lOther$$set$entry) {
          return false;
        }
      }
    } else if (l$$set != lOther$$set) {
      return false;
    }
    final l$disconnect = disconnect;
    final lOther$disconnect = other.disconnect;
    if (_$data.containsKey('disconnect') !=
        other._$data.containsKey('disconnect')) {
      return false;
    }
    if (l$disconnect != null && lOther$disconnect != null) {
      if (l$disconnect.length != lOther$disconnect.length) {
        return false;
      }
      for (int i = 0; i < l$disconnect.length; i++) {
        final l$disconnect$entry = l$disconnect[i];
        final lOther$disconnect$entry = lOther$disconnect[i];
        if (l$disconnect$entry != lOther$disconnect$entry) {
          return false;
        }
      }
    } else if (l$disconnect != lOther$disconnect) {
      return false;
    }
    final l$delete = delete;
    final lOther$delete = other.delete;
    if (_$data.containsKey('delete') != other._$data.containsKey('delete')) {
      return false;
    }
    if (l$delete != null && lOther$delete != null) {
      if (l$delete.length != lOther$delete.length) {
        return false;
      }
      for (int i = 0; i < l$delete.length; i++) {
        final l$delete$entry = l$delete[i];
        final lOther$delete$entry = lOther$delete[i];
        if (l$delete$entry != lOther$delete$entry) {
          return false;
        }
      }
    } else if (l$delete != lOther$delete) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != null && lOther$connect != null) {
      if (l$connect.length != lOther$connect.length) {
        return false;
      }
      for (int i = 0; i < l$connect.length; i++) {
        final l$connect$entry = l$connect[i];
        final lOther$connect$entry = lOther$connect[i];
        if (l$connect$entry != lOther$connect$entry) {
          return false;
        }
      }
    } else if (l$connect != lOther$connect) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (_$data.containsKey('update') != other._$data.containsKey('update')) {
      return false;
    }
    if (l$update != null && lOther$update != null) {
      if (l$update.length != lOther$update.length) {
        return false;
      }
      for (int i = 0; i < l$update.length; i++) {
        final l$update$entry = l$update[i];
        final lOther$update$entry = lOther$update[i];
        if (l$update$entry != lOther$update$entry) {
          return false;
        }
      }
    } else if (l$update != lOther$update) {
      return false;
    }
    final l$updateMany = updateMany;
    final lOther$updateMany = other.updateMany;
    if (_$data.containsKey('updateMany') !=
        other._$data.containsKey('updateMany')) {
      return false;
    }
    if (l$updateMany != null && lOther$updateMany != null) {
      if (l$updateMany.length != lOther$updateMany.length) {
        return false;
      }
      for (int i = 0; i < l$updateMany.length; i++) {
        final l$updateMany$entry = l$updateMany[i];
        final lOther$updateMany$entry = lOther$updateMany[i];
        if (l$updateMany$entry != lOther$updateMany$entry) {
          return false;
        }
      }
    } else if (l$updateMany != lOther$updateMany) {
      return false;
    }
    final l$deleteMany = deleteMany;
    final lOther$deleteMany = other.deleteMany;
    if (_$data.containsKey('deleteMany') !=
        other._$data.containsKey('deleteMany')) {
      return false;
    }
    if (l$deleteMany != null && lOther$deleteMany != null) {
      if (l$deleteMany.length != lOther$deleteMany.length) {
        return false;
      }
      for (int i = 0; i < l$deleteMany.length; i++) {
        final l$deleteMany$entry = l$deleteMany[i];
        final lOther$deleteMany$entry = lOther$deleteMany[i];
        if (l$deleteMany$entry != lOther$deleteMany$entry) {
          return false;
        }
      }
    } else if (l$deleteMany != lOther$deleteMany) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connectOrCreate = connectOrCreate;
    final l$upsert = upsert;
    final l$$set = $set;
    final l$disconnect = disconnect;
    final l$delete = delete;
    final l$connect = connect;
    final l$update = update;
    final l$updateMany = updateMany;
    final l$deleteMany = deleteMany;
    return Object.hashAll([
      _$data.containsKey('create')
          ? l$create == null
              ? null
              : Object.hashAll(l$create.map((v) => v))
          : const {},
      _$data.containsKey('connectOrCreate')
          ? l$connectOrCreate == null
              ? null
              : Object.hashAll(l$connectOrCreate.map((v) => v))
          : const {},
      _$data.containsKey('upsert')
          ? l$upsert == null
              ? null
              : Object.hashAll(l$upsert.map((v) => v))
          : const {},
      _$data.containsKey('set')
          ? l$$set == null
              ? null
              : Object.hashAll(l$$set.map((v) => v))
          : const {},
      _$data.containsKey('disconnect')
          ? l$disconnect == null
              ? null
              : Object.hashAll(l$disconnect.map((v) => v))
          : const {},
      _$data.containsKey('delete')
          ? l$delete == null
              ? null
              : Object.hashAll(l$delete.map((v) => v))
          : const {},
      _$data.containsKey('connect')
          ? l$connect == null
              ? null
              : Object.hashAll(l$connect.map((v) => v))
          : const {},
      _$data.containsKey('update')
          ? l$update == null
              ? null
              : Object.hashAll(l$update.map((v) => v))
          : const {},
      _$data.containsKey('updateMany')
          ? l$updateMany == null
              ? null
              : Object.hashAll(l$updateMany.map((v) => v))
          : const {},
      _$data.containsKey('deleteMany')
          ? l$deleteMany == null
              ? null
              : Object.hashAll(l$deleteMany.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsUpdateManyWithoutCityNestedInput<
    TRes> {
  factory CopyWith$Input$TransactionsUpdateManyWithoutCityNestedInput(
    Input$TransactionsUpdateManyWithoutCityNestedInput instance,
    TRes Function(Input$TransactionsUpdateManyWithoutCityNestedInput) then,
  ) = _CopyWithImpl$Input$TransactionsUpdateManyWithoutCityNestedInput;

  factory CopyWith$Input$TransactionsUpdateManyWithoutCityNestedInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpdateManyWithoutCityNestedInput;

  TRes call({
    List<Input$TransactionsCreateWithoutCityInput>? create,
    List<Input$TransactionsCreateOrConnectWithoutCityInput>? connectOrCreate,
    List<Input$TransactionsUpsertWithWhereUniqueWithoutCityInput>? upsert,
    List<Input$TransactionsWhereUniqueInput>? $set,
    List<Input$TransactionsWhereUniqueInput>? disconnect,
    List<Input$TransactionsWhereUniqueInput>? delete,
    List<Input$TransactionsWhereUniqueInput>? connect,
    List<Input$TransactionsUpdateWithWhereUniqueWithoutCityInput>? update,
    List<Input$TransactionsUpdateManyWithWhereWithoutCityInput>? updateMany,
    List<Input$TransactionsScalarWhereInput>? deleteMany,
  });
  TRes create(
      Iterable<Input$TransactionsCreateWithoutCityInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsCreateWithoutCityInput<
                      Input$TransactionsCreateWithoutCityInput>>?)
          _fn);
  TRes connectOrCreate(
      Iterable<Input$TransactionsCreateOrConnectWithoutCityInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsCreateOrConnectWithoutCityInput<
                      Input$TransactionsCreateOrConnectWithoutCityInput>>?)
          _fn);
  TRes upsert(
      Iterable<Input$TransactionsUpsertWithWhereUniqueWithoutCityInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutCityInput<
                      Input$TransactionsUpsertWithWhereUniqueWithoutCityInput>>?)
          _fn);
}

class _CopyWithImpl$Input$TransactionsUpdateManyWithoutCityNestedInput<TRes>
    implements
        CopyWith$Input$TransactionsUpdateManyWithoutCityNestedInput<TRes> {
  _CopyWithImpl$Input$TransactionsUpdateManyWithoutCityNestedInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpdateManyWithoutCityNestedInput _instance;

  final TRes Function(Input$TransactionsUpdateManyWithoutCityNestedInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? upsert = _undefined,
    Object? $set = _undefined,
    Object? disconnect = _undefined,
    Object? delete = _undefined,
    Object? connect = _undefined,
    Object? update = _undefined,
    Object? updateMany = _undefined,
    Object? deleteMany = _undefined,
  }) =>
      _then(Input$TransactionsUpdateManyWithoutCityNestedInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create as List<Input$TransactionsCreateWithoutCityInput>?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as List<Input$TransactionsCreateOrConnectWithoutCityInput>?),
        if (upsert != _undefined)
          'upsert': (upsert as List<
              Input$TransactionsUpsertWithWhereUniqueWithoutCityInput>?),
        if ($set != _undefined)
          'set': ($set as List<Input$TransactionsWhereUniqueInput>?),
        if (disconnect != _undefined)
          'disconnect':
              (disconnect as List<Input$TransactionsWhereUniqueInput>?),
        if (delete != _undefined)
          'delete': (delete as List<Input$TransactionsWhereUniqueInput>?),
        if (connect != _undefined)
          'connect': (connect as List<Input$TransactionsWhereUniqueInput>?),
        if (update != _undefined)
          'update': (update as List<
              Input$TransactionsUpdateWithWhereUniqueWithoutCityInput>?),
        if (updateMany != _undefined)
          'updateMany': (updateMany
              as List<Input$TransactionsUpdateManyWithWhereWithoutCityInput>?),
        if (deleteMany != _undefined)
          'deleteMany':
              (deleteMany as List<Input$TransactionsScalarWhereInput>?),
      }));
  TRes create(
          Iterable<Input$TransactionsCreateWithoutCityInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsCreateWithoutCityInput<
                          Input$TransactionsCreateWithoutCityInput>>?)
              _fn) =>
      call(
          create: _fn(_instance.create
              ?.map((e) => CopyWith$Input$TransactionsCreateWithoutCityInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes connectOrCreate(
          Iterable<Input$TransactionsCreateOrConnectWithoutCityInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsCreateOrConnectWithoutCityInput<
                          Input$TransactionsCreateOrConnectWithoutCityInput>>?)
              _fn) =>
      call(
          connectOrCreate: _fn(_instance.connectOrCreate?.map(
              (e) => CopyWith$Input$TransactionsCreateOrConnectWithoutCityInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes upsert(
          Iterable<Input$TransactionsUpsertWithWhereUniqueWithoutCityInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutCityInput<
                          Input$TransactionsUpsertWithWhereUniqueWithoutCityInput>>?)
              _fn) =>
      call(
          upsert: _fn(_instance.upsert?.map((e) =>
              CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutCityInput(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Input$TransactionsUpdateManyWithoutCityNestedInput<TRes>
    implements
        CopyWith$Input$TransactionsUpdateManyWithoutCityNestedInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsUpdateManyWithoutCityNestedInput(
      this._res);

  TRes _res;

  call({
    List<Input$TransactionsCreateWithoutCityInput>? create,
    List<Input$TransactionsCreateOrConnectWithoutCityInput>? connectOrCreate,
    List<Input$TransactionsUpsertWithWhereUniqueWithoutCityInput>? upsert,
    List<Input$TransactionsWhereUniqueInput>? $set,
    List<Input$TransactionsWhereUniqueInput>? disconnect,
    List<Input$TransactionsWhereUniqueInput>? delete,
    List<Input$TransactionsWhereUniqueInput>? connect,
    List<Input$TransactionsUpdateWithWhereUniqueWithoutCityInput>? update,
    List<Input$TransactionsUpdateManyWithWhereWithoutCityInput>? updateMany,
    List<Input$TransactionsScalarWhereInput>? deleteMany,
  }) =>
      _res;
  create(_fn) => _res;
  connectOrCreate(_fn) => _res;
  upsert(_fn) => _res;
}

class Input$TransactionsUpsertWithWhereUniqueWithoutCityInput {
  factory Input$TransactionsUpsertWithWhereUniqueWithoutCityInput({
    required Input$TransactionsWhereUniqueInput where,
    required Input$TransactionsUpdateWithoutCityInput update,
    required Input$TransactionsCreateWithoutCityInput create,
  }) =>
      Input$TransactionsUpsertWithWhereUniqueWithoutCityInput._({
        r'where': where,
        r'update': update,
        r'create': create,
      });

  Input$TransactionsUpsertWithWhereUniqueWithoutCityInput._(this._$data);

  factory Input$TransactionsUpsertWithWhereUniqueWithoutCityInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$TransactionsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$update = data['update'];
    result$data['update'] = Input$TransactionsUpdateWithoutCityInput.fromJson(
        (l$update as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] = Input$TransactionsCreateWithoutCityInput.fromJson(
        (l$create as Map<String, dynamic>));
    return Input$TransactionsUpsertWithWhereUniqueWithoutCityInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionsWhereUniqueInput get where =>
      (_$data['where'] as Input$TransactionsWhereUniqueInput);
  Input$TransactionsUpdateWithoutCityInput get update =>
      (_$data['update'] as Input$TransactionsUpdateWithoutCityInput);
  Input$TransactionsCreateWithoutCityInput get create =>
      (_$data['create'] as Input$TransactionsCreateWithoutCityInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$update = update;
    result$data['update'] = l$update.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutCityInput<
          Input$TransactionsUpsertWithWhereUniqueWithoutCityInput>
      get copyWith =>
          CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutCityInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsUpsertWithWhereUniqueWithoutCityInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (l$update != lOther$update) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (l$create != lOther$create) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$update = update;
    final l$create = create;
    return Object.hashAll([
      l$where,
      l$update,
      l$create,
    ]);
  }
}

abstract class CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutCityInput<
    TRes> {
  factory CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutCityInput(
    Input$TransactionsUpsertWithWhereUniqueWithoutCityInput instance,
    TRes Function(Input$TransactionsUpsertWithWhereUniqueWithoutCityInput) then,
  ) = _CopyWithImpl$Input$TransactionsUpsertWithWhereUniqueWithoutCityInput;

  factory CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutCityInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpsertWithWhereUniqueWithoutCityInput;

  TRes call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsUpdateWithoutCityInput? update,
    Input$TransactionsCreateWithoutCityInput? create,
  });
  CopyWith$Input$TransactionsUpdateWithoutCityInput<TRes> get update;
  CopyWith$Input$TransactionsCreateWithoutCityInput<TRes> get create;
}

class _CopyWithImpl$Input$TransactionsUpsertWithWhereUniqueWithoutCityInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutCityInput<TRes> {
  _CopyWithImpl$Input$TransactionsUpsertWithWhereUniqueWithoutCityInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpsertWithWhereUniqueWithoutCityInput _instance;

  final TRes Function(Input$TransactionsUpsertWithWhereUniqueWithoutCityInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? update = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$TransactionsUpsertWithWhereUniqueWithoutCityInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$TransactionsWhereUniqueInput),
        if (update != _undefined && update != null)
          'update': (update as Input$TransactionsUpdateWithoutCityInput),
        if (create != _undefined && create != null)
          'create': (create as Input$TransactionsCreateWithoutCityInput),
      }));
  CopyWith$Input$TransactionsUpdateWithoutCityInput<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Input$TransactionsUpdateWithoutCityInput(
        local$update, (e) => call(update: e));
  }

  CopyWith$Input$TransactionsCreateWithoutCityInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$TransactionsCreateWithoutCityInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsUpsertWithWhereUniqueWithoutCityInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutCityInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsUpsertWithWhereUniqueWithoutCityInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsUpdateWithoutCityInput? update,
    Input$TransactionsCreateWithoutCityInput? create,
  }) =>
      _res;
  CopyWith$Input$TransactionsUpdateWithoutCityInput<TRes> get update =>
      CopyWith$Input$TransactionsUpdateWithoutCityInput.stub(_res);
  CopyWith$Input$TransactionsCreateWithoutCityInput<TRes> get create =>
      CopyWith$Input$TransactionsCreateWithoutCityInput.stub(_res);
}

class Input$TransactionsUpdateWithoutCityInput {
  factory Input$TransactionsUpdateWithoutCityInput({
    Input$IntFieldUpdateOperationsInput? transaction_id,
    Input$IntFieldUpdateOperationsInput? product_id,
    Input$StringFieldUpdateOperationsInput? customer_name,
    Input$StringFieldUpdateOperationsInput? customer_phone,
    Input$StringFieldUpdateOperationsInput? address,
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$DateTimeFieldUpdateOperationsInput? date,
    Input$FloatFieldUpdateOperationsInput? remainingPayement,
    Input$FloatFieldUpdateOperationsInput? totalPayement,
    Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput? seller,
    Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput?
        transaction_type,
    Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput?
        status,
    Input$PayementsUpdateManyWithoutTransactionNestedInput? Payements,
  }) =>
      Input$TransactionsUpdateWithoutCityInput._({
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (product_id != null) r'product_id': product_id,
        if (customer_name != null) r'customer_name': customer_name,
        if (customer_phone != null) r'customer_phone': customer_phone,
        if (address != null) r'address': address,
        if (quantity != null) r'quantity': quantity,
        if (date != null) r'date': date,
        if (remainingPayement != null) r'remainingPayement': remainingPayement,
        if (totalPayement != null) r'totalPayement': totalPayement,
        if (seller != null) r'seller': seller,
        if (transaction_type != null) r'transaction_type': transaction_type,
        if (status != null) r'status': status,
        if (Payements != null) r'Payements': Payements,
      });

  Input$TransactionsUpdateWithoutCityInput._(this._$data);

  factory Input$TransactionsUpdateWithoutCityInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$transaction_id as Map<String, dynamic>));
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$product_id as Map<String, dynamic>));
    }
    if (data.containsKey('customer_name')) {
      final l$customer_name = data['customer_name'];
      result$data['customer_name'] = l$customer_name == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$customer_name as Map<String, dynamic>));
    }
    if (data.containsKey('customer_phone')) {
      final l$customer_phone = data['customer_phone'];
      result$data['customer_phone'] = l$customer_phone == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$customer_phone as Map<String, dynamic>));
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$address as Map<String, dynamic>));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$quantity as Map<String, dynamic>));
    }
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] = l$date == null
          ? null
          : Input$DateTimeFieldUpdateOperationsInput.fromJson(
              (l$date as Map<String, dynamic>));
    }
    if (data.containsKey('remainingPayement')) {
      final l$remainingPayement = data['remainingPayement'];
      result$data['remainingPayement'] = l$remainingPayement == null
          ? null
          : Input$FloatFieldUpdateOperationsInput.fromJson(
              (l$remainingPayement as Map<String, dynamic>));
    }
    if (data.containsKey('totalPayement')) {
      final l$totalPayement = data['totalPayement'];
      result$data['totalPayement'] = l$totalPayement == null
          ? null
          : Input$FloatFieldUpdateOperationsInput.fromJson(
              (l$totalPayement as Map<String, dynamic>));
    }
    if (data.containsKey('seller')) {
      final l$seller = data['seller'];
      result$data['seller'] = l$seller == null
          ? null
          : Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput
              .fromJson((l$seller as Map<String, dynamic>));
    }
    if (data.containsKey('transaction_type')) {
      final l$transaction_type = data['transaction_type'];
      result$data['transaction_type'] = l$transaction_type == null
          ? null
          : Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput
              .fromJson((l$transaction_type as Map<String, dynamic>));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput
              .fromJson((l$status as Map<String, dynamic>));
    }
    if (data.containsKey('Payements')) {
      final l$Payements = data['Payements'];
      result$data['Payements'] = l$Payements == null
          ? null
          : Input$PayementsUpdateManyWithoutTransactionNestedInput.fromJson(
              (l$Payements as Map<String, dynamic>));
    }
    return Input$TransactionsUpdateWithoutCityInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get transaction_id =>
      (_$data['transaction_id'] as Input$IntFieldUpdateOperationsInput?);
  Input$IntFieldUpdateOperationsInput? get product_id =>
      (_$data['product_id'] as Input$IntFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get customer_name =>
      (_$data['customer_name'] as Input$StringFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get customer_phone =>
      (_$data['customer_phone'] as Input$StringFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get address =>
      (_$data['address'] as Input$StringFieldUpdateOperationsInput?);
  Input$IntFieldUpdateOperationsInput? get quantity =>
      (_$data['quantity'] as Input$IntFieldUpdateOperationsInput?);
  Input$DateTimeFieldUpdateOperationsInput? get date =>
      (_$data['date'] as Input$DateTimeFieldUpdateOperationsInput?);
  Input$FloatFieldUpdateOperationsInput? get remainingPayement =>
      (_$data['remainingPayement'] as Input$FloatFieldUpdateOperationsInput?);
  Input$FloatFieldUpdateOperationsInput? get totalPayement =>
      (_$data['totalPayement'] as Input$FloatFieldUpdateOperationsInput?);
  Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput? get seller =>
      (_$data['seller']
          as Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput?);
  Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput?
      get transaction_type => (_$data['transaction_type']
          as Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput?);
  Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput?
      get status => (_$data['status']
          as Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput?);
  Input$PayementsUpdateManyWithoutTransactionNestedInput? get Payements =>
      (_$data['Payements']
          as Input$PayementsUpdateManyWithoutTransactionNestedInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_id')) {
      final l$transaction_id = transaction_id;
      result$data['transaction_id'] = l$transaction_id?.toJson();
    }
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] = l$product_id?.toJson();
    }
    if (_$data.containsKey('customer_name')) {
      final l$customer_name = customer_name;
      result$data['customer_name'] = l$customer_name?.toJson();
    }
    if (_$data.containsKey('customer_phone')) {
      final l$customer_phone = customer_phone;
      result$data['customer_phone'] = l$customer_phone?.toJson();
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] = l$quantity?.toJson();
    }
    if (_$data.containsKey('date')) {
      final l$date = date;
      result$data['date'] = l$date?.toJson();
    }
    if (_$data.containsKey('remainingPayement')) {
      final l$remainingPayement = remainingPayement;
      result$data['remainingPayement'] = l$remainingPayement?.toJson();
    }
    if (_$data.containsKey('totalPayement')) {
      final l$totalPayement = totalPayement;
      result$data['totalPayement'] = l$totalPayement?.toJson();
    }
    if (_$data.containsKey('seller')) {
      final l$seller = seller;
      result$data['seller'] = l$seller?.toJson();
    }
    if (_$data.containsKey('transaction_type')) {
      final l$transaction_type = transaction_type;
      result$data['transaction_type'] = l$transaction_type?.toJson();
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status?.toJson();
    }
    if (_$data.containsKey('Payements')) {
      final l$Payements = Payements;
      result$data['Payements'] = l$Payements?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionsUpdateWithoutCityInput<
          Input$TransactionsUpdateWithoutCityInput>
      get copyWith => CopyWith$Input$TransactionsUpdateWithoutCityInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsUpdateWithoutCityInput) ||
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
    final l$customer_name = customer_name;
    final lOther$customer_name = other.customer_name;
    if (_$data.containsKey('customer_name') !=
        other._$data.containsKey('customer_name')) {
      return false;
    }
    if (l$customer_name != lOther$customer_name) {
      return false;
    }
    final l$customer_phone = customer_phone;
    final lOther$customer_phone = other.customer_phone;
    if (_$data.containsKey('customer_phone') !=
        other._$data.containsKey('customer_phone')) {
      return false;
    }
    if (l$customer_phone != lOther$customer_phone) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
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
    final l$date = date;
    final lOther$date = other.date;
    if (_$data.containsKey('date') != other._$data.containsKey('date')) {
      return false;
    }
    if (l$date != lOther$date) {
      return false;
    }
    final l$remainingPayement = remainingPayement;
    final lOther$remainingPayement = other.remainingPayement;
    if (_$data.containsKey('remainingPayement') !=
        other._$data.containsKey('remainingPayement')) {
      return false;
    }
    if (l$remainingPayement != lOther$remainingPayement) {
      return false;
    }
    final l$totalPayement = totalPayement;
    final lOther$totalPayement = other.totalPayement;
    if (_$data.containsKey('totalPayement') !=
        other._$data.containsKey('totalPayement')) {
      return false;
    }
    if (l$totalPayement != lOther$totalPayement) {
      return false;
    }
    final l$seller = seller;
    final lOther$seller = other.seller;
    if (_$data.containsKey('seller') != other._$data.containsKey('seller')) {
      return false;
    }
    if (l$seller != lOther$seller) {
      return false;
    }
    final l$transaction_type = transaction_type;
    final lOther$transaction_type = other.transaction_type;
    if (_$data.containsKey('transaction_type') !=
        other._$data.containsKey('transaction_type')) {
      return false;
    }
    if (l$transaction_type != lOther$transaction_type) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$Payements = Payements;
    final lOther$Payements = other.Payements;
    if (_$data.containsKey('Payements') !=
        other._$data.containsKey('Payements')) {
      return false;
    }
    if (l$Payements != lOther$Payements) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_id = transaction_id;
    final l$product_id = product_id;
    final l$customer_name = customer_name;
    final l$customer_phone = customer_phone;
    final l$address = address;
    final l$quantity = quantity;
    final l$date = date;
    final l$remainingPayement = remainingPayement;
    final l$totalPayement = totalPayement;
    final l$seller = seller;
    final l$transaction_type = transaction_type;
    final l$status = status;
    final l$Payements = Payements;
    return Object.hashAll([
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('customer_name') ? l$customer_name : const {},
      _$data.containsKey('customer_phone') ? l$customer_phone : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('date') ? l$date : const {},
      _$data.containsKey('remainingPayement') ? l$remainingPayement : const {},
      _$data.containsKey('totalPayement') ? l$totalPayement : const {},
      _$data.containsKey('seller') ? l$seller : const {},
      _$data.containsKey('transaction_type') ? l$transaction_type : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('Payements') ? l$Payements : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsUpdateWithoutCityInput<TRes> {
  factory CopyWith$Input$TransactionsUpdateWithoutCityInput(
    Input$TransactionsUpdateWithoutCityInput instance,
    TRes Function(Input$TransactionsUpdateWithoutCityInput) then,
  ) = _CopyWithImpl$Input$TransactionsUpdateWithoutCityInput;

  factory CopyWith$Input$TransactionsUpdateWithoutCityInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpdateWithoutCityInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? transaction_id,
    Input$IntFieldUpdateOperationsInput? product_id,
    Input$StringFieldUpdateOperationsInput? customer_name,
    Input$StringFieldUpdateOperationsInput? customer_phone,
    Input$StringFieldUpdateOperationsInput? address,
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$DateTimeFieldUpdateOperationsInput? date,
    Input$FloatFieldUpdateOperationsInput? remainingPayement,
    Input$FloatFieldUpdateOperationsInput? totalPayement,
    Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput? seller,
    Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput?
        transaction_type,
    Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput?
        status,
    Input$PayementsUpdateManyWithoutTransactionNestedInput? Payements,
  });
  CopyWith$Input$IntFieldUpdateOperationsInput<TRes> get transaction_id;
  CopyWith$Input$IntFieldUpdateOperationsInput<TRes> get product_id;
  CopyWith$Input$StringFieldUpdateOperationsInput<TRes> get customer_name;
  CopyWith$Input$StringFieldUpdateOperationsInput<TRes> get customer_phone;
  CopyWith$Input$StringFieldUpdateOperationsInput<TRes> get address;
  CopyWith$Input$IntFieldUpdateOperationsInput<TRes> get quantity;
  CopyWith$Input$DateTimeFieldUpdateOperationsInput<TRes> get date;
  CopyWith$Input$FloatFieldUpdateOperationsInput<TRes> get remainingPayement;
  CopyWith$Input$FloatFieldUpdateOperationsInput<TRes> get totalPayement;
}

class _CopyWithImpl$Input$TransactionsUpdateWithoutCityInput<TRes>
    implements CopyWith$Input$TransactionsUpdateWithoutCityInput<TRes> {
  _CopyWithImpl$Input$TransactionsUpdateWithoutCityInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpdateWithoutCityInput _instance;

  final TRes Function(Input$TransactionsUpdateWithoutCityInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? product_id = _undefined,
    Object? customer_name = _undefined,
    Object? customer_phone = _undefined,
    Object? address = _undefined,
    Object? quantity = _undefined,
    Object? date = _undefined,
    Object? remainingPayement = _undefined,
    Object? totalPayement = _undefined,
    Object? seller = _undefined,
    Object? transaction_type = _undefined,
    Object? status = _undefined,
    Object? Payements = _undefined,
  }) =>
      _then(Input$TransactionsUpdateWithoutCityInput._({
        ..._instance._$data,
        if (transaction_id != _undefined)
          'transaction_id':
              (transaction_id as Input$IntFieldUpdateOperationsInput?),
        if (product_id != _undefined)
          'product_id': (product_id as Input$IntFieldUpdateOperationsInput?),
        if (customer_name != _undefined)
          'customer_name':
              (customer_name as Input$StringFieldUpdateOperationsInput?),
        if (customer_phone != _undefined)
          'customer_phone':
              (customer_phone as Input$StringFieldUpdateOperationsInput?),
        if (address != _undefined)
          'address': (address as Input$StringFieldUpdateOperationsInput?),
        if (quantity != _undefined)
          'quantity': (quantity as Input$IntFieldUpdateOperationsInput?),
        if (date != _undefined)
          'date': (date as Input$DateTimeFieldUpdateOperationsInput?),
        if (remainingPayement != _undefined)
          'remainingPayement':
              (remainingPayement as Input$FloatFieldUpdateOperationsInput?),
        if (totalPayement != _undefined)
          'totalPayement':
              (totalPayement as Input$FloatFieldUpdateOperationsInput?),
        if (seller != _undefined)
          'seller': (seller
              as Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput?),
        if (transaction_type != _undefined)
          'transaction_type': (transaction_type
              as Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput?),
        if (status != _undefined)
          'status': (status
              as Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput?),
        if (Payements != _undefined)
          'Payements': (Payements
              as Input$PayementsUpdateManyWithoutTransactionNestedInput?),
      }));
  CopyWith$Input$IntFieldUpdateOperationsInput<TRes> get transaction_id {
    final local$transaction_id = _instance.transaction_id;
    return local$transaction_id == null
        ? CopyWith$Input$IntFieldUpdateOperationsInput.stub(_then(_instance))
        : CopyWith$Input$IntFieldUpdateOperationsInput(
            local$transaction_id, (e) => call(transaction_id: e));
  }

  CopyWith$Input$IntFieldUpdateOperationsInput<TRes> get product_id {
    final local$product_id = _instance.product_id;
    return local$product_id == null
        ? CopyWith$Input$IntFieldUpdateOperationsInput.stub(_then(_instance))
        : CopyWith$Input$IntFieldUpdateOperationsInput(
            local$product_id, (e) => call(product_id: e));
  }

  CopyWith$Input$StringFieldUpdateOperationsInput<TRes> get customer_name {
    final local$customer_name = _instance.customer_name;
    return local$customer_name == null
        ? CopyWith$Input$StringFieldUpdateOperationsInput.stub(_then(_instance))
        : CopyWith$Input$StringFieldUpdateOperationsInput(
            local$customer_name, (e) => call(customer_name: e));
  }

  CopyWith$Input$StringFieldUpdateOperationsInput<TRes> get customer_phone {
    final local$customer_phone = _instance.customer_phone;
    return local$customer_phone == null
        ? CopyWith$Input$StringFieldUpdateOperationsInput.stub(_then(_instance))
        : CopyWith$Input$StringFieldUpdateOperationsInput(
            local$customer_phone, (e) => call(customer_phone: e));
  }

  CopyWith$Input$StringFieldUpdateOperationsInput<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith$Input$StringFieldUpdateOperationsInput.stub(_then(_instance))
        : CopyWith$Input$StringFieldUpdateOperationsInput(
            local$address, (e) => call(address: e));
  }

  CopyWith$Input$IntFieldUpdateOperationsInput<TRes> get quantity {
    final local$quantity = _instance.quantity;
    return local$quantity == null
        ? CopyWith$Input$IntFieldUpdateOperationsInput.stub(_then(_instance))
        : CopyWith$Input$IntFieldUpdateOperationsInput(
            local$quantity, (e) => call(quantity: e));
  }

  CopyWith$Input$DateTimeFieldUpdateOperationsInput<TRes> get date {
    final local$date = _instance.date;
    return local$date == null
        ? CopyWith$Input$DateTimeFieldUpdateOperationsInput.stub(
            _then(_instance))
        : CopyWith$Input$DateTimeFieldUpdateOperationsInput(
            local$date, (e) => call(date: e));
  }

  CopyWith$Input$FloatFieldUpdateOperationsInput<TRes> get remainingPayement {
    final local$remainingPayement = _instance.remainingPayement;
    return local$remainingPayement == null
        ? CopyWith$Input$FloatFieldUpdateOperationsInput.stub(_then(_instance))
        : CopyWith$Input$FloatFieldUpdateOperationsInput(
            local$remainingPayement, (e) => call(remainingPayement: e));
  }

  CopyWith$Input$FloatFieldUpdateOperationsInput<TRes> get totalPayement {
    final local$totalPayement = _instance.totalPayement;
    return local$totalPayement == null
        ? CopyWith$Input$FloatFieldUpdateOperationsInput.stub(_then(_instance))
        : CopyWith$Input$FloatFieldUpdateOperationsInput(
            local$totalPayement, (e) => call(totalPayement: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsUpdateWithoutCityInput<TRes>
    implements CopyWith$Input$TransactionsUpdateWithoutCityInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsUpdateWithoutCityInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? transaction_id,
    Input$IntFieldUpdateOperationsInput? product_id,
    Input$StringFieldUpdateOperationsInput? customer_name,
    Input$StringFieldUpdateOperationsInput? customer_phone,
    Input$StringFieldUpdateOperationsInput? address,
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$DateTimeFieldUpdateOperationsInput? date,
    Input$FloatFieldUpdateOperationsInput? remainingPayement,
    Input$FloatFieldUpdateOperationsInput? totalPayement,
    Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput? seller,
    Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput?
        transaction_type,
    Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput?
        status,
    Input$PayementsUpdateManyWithoutTransactionNestedInput? Payements,
  }) =>
      _res;
  CopyWith$Input$IntFieldUpdateOperationsInput<TRes> get transaction_id =>
      CopyWith$Input$IntFieldUpdateOperationsInput.stub(_res);
  CopyWith$Input$IntFieldUpdateOperationsInput<TRes> get product_id =>
      CopyWith$Input$IntFieldUpdateOperationsInput.stub(_res);
  CopyWith$Input$StringFieldUpdateOperationsInput<TRes> get customer_name =>
      CopyWith$Input$StringFieldUpdateOperationsInput.stub(_res);
  CopyWith$Input$StringFieldUpdateOperationsInput<TRes> get customer_phone =>
      CopyWith$Input$StringFieldUpdateOperationsInput.stub(_res);
  CopyWith$Input$StringFieldUpdateOperationsInput<TRes> get address =>
      CopyWith$Input$StringFieldUpdateOperationsInput.stub(_res);
  CopyWith$Input$IntFieldUpdateOperationsInput<TRes> get quantity =>
      CopyWith$Input$IntFieldUpdateOperationsInput.stub(_res);
  CopyWith$Input$DateTimeFieldUpdateOperationsInput<TRes> get date =>
      CopyWith$Input$DateTimeFieldUpdateOperationsInput.stub(_res);
  CopyWith$Input$FloatFieldUpdateOperationsInput<TRes> get remainingPayement =>
      CopyWith$Input$FloatFieldUpdateOperationsInput.stub(_res);
  CopyWith$Input$FloatFieldUpdateOperationsInput<TRes> get totalPayement =>
      CopyWith$Input$FloatFieldUpdateOperationsInput.stub(_res);
}

class Input$DateTimeFieldUpdateOperationsInput {
  factory Input$DateTimeFieldUpdateOperationsInput({String? $set}) =>
      Input$DateTimeFieldUpdateOperationsInput._({
        if ($set != null) r'set': $set,
      });

  Input$DateTimeFieldUpdateOperationsInput._(this._$data);

  factory Input$DateTimeFieldUpdateOperationsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('set')) {
      final l$$set = data['set'];
      result$data['set'] = (l$$set as String?);
    }
    return Input$DateTimeFieldUpdateOperationsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get $set => (_$data['set'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('set')) {
      final l$$set = $set;
      result$data['set'] = l$$set;
    }
    return result$data;
  }

  CopyWith$Input$DateTimeFieldUpdateOperationsInput<
          Input$DateTimeFieldUpdateOperationsInput>
      get copyWith => CopyWith$Input$DateTimeFieldUpdateOperationsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DateTimeFieldUpdateOperationsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (_$data.containsKey('set') != other._$data.containsKey('set')) {
      return false;
    }
    if (l$$set != lOther$$set) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$set = $set;
    return Object.hashAll([_$data.containsKey('set') ? l$$set : const {}]);
  }
}

abstract class CopyWith$Input$DateTimeFieldUpdateOperationsInput<TRes> {
  factory CopyWith$Input$DateTimeFieldUpdateOperationsInput(
    Input$DateTimeFieldUpdateOperationsInput instance,
    TRes Function(Input$DateTimeFieldUpdateOperationsInput) then,
  ) = _CopyWithImpl$Input$DateTimeFieldUpdateOperationsInput;

  factory CopyWith$Input$DateTimeFieldUpdateOperationsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DateTimeFieldUpdateOperationsInput;

  TRes call({String? $set});
}

class _CopyWithImpl$Input$DateTimeFieldUpdateOperationsInput<TRes>
    implements CopyWith$Input$DateTimeFieldUpdateOperationsInput<TRes> {
  _CopyWithImpl$Input$DateTimeFieldUpdateOperationsInput(
    this._instance,
    this._then,
  );

  final Input$DateTimeFieldUpdateOperationsInput _instance;

  final TRes Function(Input$DateTimeFieldUpdateOperationsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $set = _undefined}) =>
      _then(Input$DateTimeFieldUpdateOperationsInput._({
        ..._instance._$data,
        if ($set != _undefined) 'set': ($set as String?),
      }));
}

class _CopyWithStubImpl$Input$DateTimeFieldUpdateOperationsInput<TRes>
    implements CopyWith$Input$DateTimeFieldUpdateOperationsInput<TRes> {
  _CopyWithStubImpl$Input$DateTimeFieldUpdateOperationsInput(this._res);

  TRes _res;

  call({String? $set}) => _res;
}

class Input$FloatFieldUpdateOperationsInput {
  factory Input$FloatFieldUpdateOperationsInput({
    double? $set,
    double? increment,
    double? decrement,
    double? multiply,
    double? divide,
  }) =>
      Input$FloatFieldUpdateOperationsInput._({
        if ($set != null) r'set': $set,
        if (increment != null) r'increment': increment,
        if (decrement != null) r'decrement': decrement,
        if (multiply != null) r'multiply': multiply,
        if (divide != null) r'divide': divide,
      });

  Input$FloatFieldUpdateOperationsInput._(this._$data);

  factory Input$FloatFieldUpdateOperationsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('set')) {
      final l$$set = data['set'];
      result$data['set'] = (l$$set as num?)?.toDouble();
    }
    if (data.containsKey('increment')) {
      final l$increment = data['increment'];
      result$data['increment'] = (l$increment as num?)?.toDouble();
    }
    if (data.containsKey('decrement')) {
      final l$decrement = data['decrement'];
      result$data['decrement'] = (l$decrement as num?)?.toDouble();
    }
    if (data.containsKey('multiply')) {
      final l$multiply = data['multiply'];
      result$data['multiply'] = (l$multiply as num?)?.toDouble();
    }
    if (data.containsKey('divide')) {
      final l$divide = data['divide'];
      result$data['divide'] = (l$divide as num?)?.toDouble();
    }
    return Input$FloatFieldUpdateOperationsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  double? get $set => (_$data['set'] as double?);
  double? get increment => (_$data['increment'] as double?);
  double? get decrement => (_$data['decrement'] as double?);
  double? get multiply => (_$data['multiply'] as double?);
  double? get divide => (_$data['divide'] as double?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('set')) {
      final l$$set = $set;
      result$data['set'] = l$$set;
    }
    if (_$data.containsKey('increment')) {
      final l$increment = increment;
      result$data['increment'] = l$increment;
    }
    if (_$data.containsKey('decrement')) {
      final l$decrement = decrement;
      result$data['decrement'] = l$decrement;
    }
    if (_$data.containsKey('multiply')) {
      final l$multiply = multiply;
      result$data['multiply'] = l$multiply;
    }
    if (_$data.containsKey('divide')) {
      final l$divide = divide;
      result$data['divide'] = l$divide;
    }
    return result$data;
  }

  CopyWith$Input$FloatFieldUpdateOperationsInput<
          Input$FloatFieldUpdateOperationsInput>
      get copyWith => CopyWith$Input$FloatFieldUpdateOperationsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$FloatFieldUpdateOperationsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (_$data.containsKey('set') != other._$data.containsKey('set')) {
      return false;
    }
    if (l$$set != lOther$$set) {
      return false;
    }
    final l$increment = increment;
    final lOther$increment = other.increment;
    if (_$data.containsKey('increment') !=
        other._$data.containsKey('increment')) {
      return false;
    }
    if (l$increment != lOther$increment) {
      return false;
    }
    final l$decrement = decrement;
    final lOther$decrement = other.decrement;
    if (_$data.containsKey('decrement') !=
        other._$data.containsKey('decrement')) {
      return false;
    }
    if (l$decrement != lOther$decrement) {
      return false;
    }
    final l$multiply = multiply;
    final lOther$multiply = other.multiply;
    if (_$data.containsKey('multiply') !=
        other._$data.containsKey('multiply')) {
      return false;
    }
    if (l$multiply != lOther$multiply) {
      return false;
    }
    final l$divide = divide;
    final lOther$divide = other.divide;
    if (_$data.containsKey('divide') != other._$data.containsKey('divide')) {
      return false;
    }
    if (l$divide != lOther$divide) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$set = $set;
    final l$increment = increment;
    final l$decrement = decrement;
    final l$multiply = multiply;
    final l$divide = divide;
    return Object.hashAll([
      _$data.containsKey('set') ? l$$set : const {},
      _$data.containsKey('increment') ? l$increment : const {},
      _$data.containsKey('decrement') ? l$decrement : const {},
      _$data.containsKey('multiply') ? l$multiply : const {},
      _$data.containsKey('divide') ? l$divide : const {},
    ]);
  }
}

abstract class CopyWith$Input$FloatFieldUpdateOperationsInput<TRes> {
  factory CopyWith$Input$FloatFieldUpdateOperationsInput(
    Input$FloatFieldUpdateOperationsInput instance,
    TRes Function(Input$FloatFieldUpdateOperationsInput) then,
  ) = _CopyWithImpl$Input$FloatFieldUpdateOperationsInput;

  factory CopyWith$Input$FloatFieldUpdateOperationsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$FloatFieldUpdateOperationsInput;

  TRes call({
    double? $set,
    double? increment,
    double? decrement,
    double? multiply,
    double? divide,
  });
}

class _CopyWithImpl$Input$FloatFieldUpdateOperationsInput<TRes>
    implements CopyWith$Input$FloatFieldUpdateOperationsInput<TRes> {
  _CopyWithImpl$Input$FloatFieldUpdateOperationsInput(
    this._instance,
    this._then,
  );

  final Input$FloatFieldUpdateOperationsInput _instance;

  final TRes Function(Input$FloatFieldUpdateOperationsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $set = _undefined,
    Object? increment = _undefined,
    Object? decrement = _undefined,
    Object? multiply = _undefined,
    Object? divide = _undefined,
  }) =>
      _then(Input$FloatFieldUpdateOperationsInput._({
        ..._instance._$data,
        if ($set != _undefined) 'set': ($set as double?),
        if (increment != _undefined) 'increment': (increment as double?),
        if (decrement != _undefined) 'decrement': (decrement as double?),
        if (multiply != _undefined) 'multiply': (multiply as double?),
        if (divide != _undefined) 'divide': (divide as double?),
      }));
}

class _CopyWithStubImpl$Input$FloatFieldUpdateOperationsInput<TRes>
    implements CopyWith$Input$FloatFieldUpdateOperationsInput<TRes> {
  _CopyWithStubImpl$Input$FloatFieldUpdateOperationsInput(this._res);

  TRes _res;

  call({
    double? $set,
    double? increment,
    double? decrement,
    double? multiply,
    double? divide,
  }) =>
      _res;
}
