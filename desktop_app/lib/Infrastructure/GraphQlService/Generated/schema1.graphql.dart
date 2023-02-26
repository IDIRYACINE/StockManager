class Input$CityWhereInput {
  factory Input$CityWhereInput({
    List<Input$CityWhereInput>? AND,
    List<Input$CityWhereInput>? OR,
    List<Input$CityWhereInput>? NOT,
    Input$IntFilter? city_id,
    Input$StringFilter? city_name,
    Input$TransactionsListRelationFilter? Transactions,
  }) =>
      Input$CityWhereInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (city_id != null) r'city_id': city_id,
        if (city_name != null) r'city_name': city_name,
        if (Transactions != null) r'Transactions': Transactions,
      });

  Input$CityWhereInput._(this._$data);

  factory Input$CityWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map(
              (e) => Input$CityWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map(
              (e) => Input$CityWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map(
              (e) => Input$CityWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('city_id')) {
      final l$city_id = data['city_id'];
      result$data['city_id'] = l$city_id == null
          ? null
          : Input$IntFilter.fromJson((l$city_id as Map<String, dynamic>));
    }
    if (data.containsKey('city_name')) {
      final l$city_name = data['city_name'];
      result$data['city_name'] = l$city_name == null
          ? null
          : Input$StringFilter.fromJson((l$city_name as Map<String, dynamic>));
    }
    if (data.containsKey('Transactions')) {
      final l$Transactions = data['Transactions'];
      result$data['Transactions'] = l$Transactions == null
          ? null
          : Input$TransactionsListRelationFilter.fromJson(
              (l$Transactions as Map<String, dynamic>));
    }
    return Input$CityWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$CityWhereInput>? get AND =>
      (_$data['AND'] as List<Input$CityWhereInput>?);
  List<Input$CityWhereInput>? get OR =>
      (_$data['OR'] as List<Input$CityWhereInput>?);
  List<Input$CityWhereInput>? get NOT =>
      (_$data['NOT'] as List<Input$CityWhereInput>?);
  Input$IntFilter? get city_id => (_$data['city_id'] as Input$IntFilter?);
  Input$StringFilter? get city_name =>
      (_$data['city_name'] as Input$StringFilter?);
  Input$TransactionsListRelationFilter? get Transactions =>
      (_$data['Transactions'] as Input$TransactionsListRelationFilter?);
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
    if (_$data.containsKey('Transactions')) {
      final l$Transactions = Transactions;
      result$data['Transactions'] = l$Transactions?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$CityWhereInput<Input$CityWhereInput> get copyWith =>
      CopyWith$Input$CityWhereInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CityWhereInput) || runtimeType != other.runtimeType) {
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
    final l$AND = AND;
    final l$OR = OR;
    final l$NOT = NOT;
    final l$city_id = city_id;
    final l$city_name = city_name;
    final l$Transactions = Transactions;
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
      _$data.containsKey('Transactions') ? l$Transactions : const {},
    ]);
  }
}

abstract class CopyWith$Input$CityWhereInput<TRes> {
  factory CopyWith$Input$CityWhereInput(
    Input$CityWhereInput instance,
    TRes Function(Input$CityWhereInput) then,
  ) = _CopyWithImpl$Input$CityWhereInput;

  factory CopyWith$Input$CityWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CityWhereInput;

  TRes call({
    List<Input$CityWhereInput>? AND,
    List<Input$CityWhereInput>? OR,
    List<Input$CityWhereInput>? NOT,
    Input$IntFilter? city_id,
    Input$StringFilter? city_name,
    Input$TransactionsListRelationFilter? Transactions,
  });
  TRes AND(
      Iterable<Input$CityWhereInput>? Function(
              Iterable<CopyWith$Input$CityWhereInput<Input$CityWhereInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$CityWhereInput>? Function(
              Iterable<CopyWith$Input$CityWhereInput<Input$CityWhereInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$CityWhereInput>? Function(
              Iterable<CopyWith$Input$CityWhereInput<Input$CityWhereInput>>?)
          _fn);
  CopyWith$Input$IntFilter<TRes> get city_id;
  CopyWith$Input$StringFilter<TRes> get city_name;
  CopyWith$Input$TransactionsListRelationFilter<TRes> get Transactions;
}

class _CopyWithImpl$Input$CityWhereInput<TRes>
    implements CopyWith$Input$CityWhereInput<TRes> {
  _CopyWithImpl$Input$CityWhereInput(
    this._instance,
    this._then,
  );

  final Input$CityWhereInput _instance;

  final TRes Function(Input$CityWhereInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? city_id = _undefined,
    Object? city_name = _undefined,
    Object? Transactions = _undefined,
  }) =>
      _then(Input$CityWhereInput._({
        ..._instance._$data,
        if (AND != _undefined) 'AND': (AND as List<Input$CityWhereInput>?),
        if (OR != _undefined) 'OR': (OR as List<Input$CityWhereInput>?),
        if (NOT != _undefined) 'NOT': (NOT as List<Input$CityWhereInput>?),
        if (city_id != _undefined) 'city_id': (city_id as Input$IntFilter?),
        if (city_name != _undefined)
          'city_name': (city_name as Input$StringFilter?),
        if (Transactions != _undefined)
          'Transactions':
              (Transactions as Input$TransactionsListRelationFilter?),
      }));
  TRes AND(
          Iterable<Input$CityWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$CityWhereInput<Input$CityWhereInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND?.map((e) => CopyWith$Input$CityWhereInput(
                e,
                (i) => i,
              )))?.toList());
  TRes OR(
          Iterable<Input$CityWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$CityWhereInput<Input$CityWhereInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR?.map((e) => CopyWith$Input$CityWhereInput(
                e,
                (i) => i,
              )))?.toList());
  TRes NOT(
          Iterable<Input$CityWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$CityWhereInput<Input$CityWhereInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT?.map((e) => CopyWith$Input$CityWhereInput(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Input$IntFilter<TRes> get city_id {
    final local$city_id = _instance.city_id;
    return local$city_id == null
        ? CopyWith$Input$IntFilter.stub(_then(_instance))
        : CopyWith$Input$IntFilter(local$city_id, (e) => call(city_id: e));
  }

  CopyWith$Input$StringFilter<TRes> get city_name {
    final local$city_name = _instance.city_name;
    return local$city_name == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(
            local$city_name, (e) => call(city_name: e));
  }

  CopyWith$Input$TransactionsListRelationFilter<TRes> get Transactions {
    final local$Transactions = _instance.Transactions;
    return local$Transactions == null
        ? CopyWith$Input$TransactionsListRelationFilter.stub(_then(_instance))
        : CopyWith$Input$TransactionsListRelationFilter(
            local$Transactions, (e) => call(Transactions: e));
  }
}

class _CopyWithStubImpl$Input$CityWhereInput<TRes>
    implements CopyWith$Input$CityWhereInput<TRes> {
  _CopyWithStubImpl$Input$CityWhereInput(this._res);

  TRes _res;

  call({
    List<Input$CityWhereInput>? AND,
    List<Input$CityWhereInput>? OR,
    List<Input$CityWhereInput>? NOT,
    Input$IntFilter? city_id,
    Input$StringFilter? city_name,
    Input$TransactionsListRelationFilter? Transactions,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
  CopyWith$Input$IntFilter<TRes> get city_id =>
      CopyWith$Input$IntFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get city_name =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$TransactionsListRelationFilter<TRes> get Transactions =>
      CopyWith$Input$TransactionsListRelationFilter.stub(_res);
}

class Input$IntFilter {
  factory Input$IntFilter({
    int? equals,
    List<int>? $in,
    List<int>? notIn,
    int? lt,
    int? lte,
    int? gt,
    int? gte,
    Input$NestedIntFilter? not,
  }) =>
      Input$IntFilter._({
        if (equals != null) r'equals': equals,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (not != null) r'not': not,
      });

  Input$IntFilter._(this._$data);

  factory Input$IntFilter.fromJson(Map<String, dynamic> data) {
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
          : Input$NestedIntFilter.fromJson((l$not as Map<String, dynamic>));
    }
    return Input$IntFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get equals => (_$data['equals'] as int?);
  List<int>? get $in => (_$data['in'] as List<int>?);
  List<int>? get notIn => (_$data['notIn'] as List<int>?);
  int? get lt => (_$data['lt'] as int?);
  int? get lte => (_$data['lte'] as int?);
  int? get gt => (_$data['gt'] as int?);
  int? get gte => (_$data['gte'] as int?);
  Input$NestedIntFilter? get not => (_$data['not'] as Input$NestedIntFilter?);
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
    return result$data;
  }

  CopyWith$Input$IntFilter<Input$IntFilter> get copyWith =>
      CopyWith$Input$IntFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$IntFilter) || runtimeType != other.runtimeType) {
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
    ]);
  }
}

abstract class CopyWith$Input$IntFilter<TRes> {
  factory CopyWith$Input$IntFilter(
    Input$IntFilter instance,
    TRes Function(Input$IntFilter) then,
  ) = _CopyWithImpl$Input$IntFilter;

  factory CopyWith$Input$IntFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$IntFilter;

  TRes call({
    int? equals,
    List<int>? $in,
    List<int>? notIn,
    int? lt,
    int? lte,
    int? gt,
    int? gte,
    Input$NestedIntFilter? not,
  });
  CopyWith$Input$NestedIntFilter<TRes> get not;
}

class _CopyWithImpl$Input$IntFilter<TRes>
    implements CopyWith$Input$IntFilter<TRes> {
  _CopyWithImpl$Input$IntFilter(
    this._instance,
    this._then,
  );

  final Input$IntFilter _instance;

  final TRes Function(Input$IntFilter) _then;

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
  }) =>
      _then(Input$IntFilter._({
        ..._instance._$data,
        if (equals != _undefined) 'equals': (equals as int?),
        if ($in != _undefined) 'in': ($in as List<int>?),
        if (notIn != _undefined) 'notIn': (notIn as List<int>?),
        if (lt != _undefined) 'lt': (lt as int?),
        if (lte != _undefined) 'lte': (lte as int?),
        if (gt != _undefined) 'gt': (gt as int?),
        if (gte != _undefined) 'gte': (gte as int?),
        if (not != _undefined) 'not': (not as Input$NestedIntFilter?),
      }));
  CopyWith$Input$NestedIntFilter<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$NestedIntFilter.stub(_then(_instance))
        : CopyWith$Input$NestedIntFilter(local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$IntFilter<TRes>
    implements CopyWith$Input$IntFilter<TRes> {
  _CopyWithStubImpl$Input$IntFilter(this._res);

  TRes _res;

  call({
    int? equals,
    List<int>? $in,
    List<int>? notIn,
    int? lt,
    int? lte,
    int? gt,
    int? gte,
    Input$NestedIntFilter? not,
  }) =>
      _res;
  CopyWith$Input$NestedIntFilter<TRes> get not =>
      CopyWith$Input$NestedIntFilter.stub(_res);
}

class Input$NestedIntFilter {
  factory Input$NestedIntFilter({
    int? equals,
    List<int>? $in,
    List<int>? notIn,
    int? lt,
    int? lte,
    int? gt,
    int? gte,
    Input$NestedIntFilter? not,
  }) =>
      Input$NestedIntFilter._({
        if (equals != null) r'equals': equals,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (not != null) r'not': not,
      });

  Input$NestedIntFilter._(this._$data);

  factory Input$NestedIntFilter.fromJson(Map<String, dynamic> data) {
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
          : Input$NestedIntFilter.fromJson((l$not as Map<String, dynamic>));
    }
    return Input$NestedIntFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get equals => (_$data['equals'] as int?);
  List<int>? get $in => (_$data['in'] as List<int>?);
  List<int>? get notIn => (_$data['notIn'] as List<int>?);
  int? get lt => (_$data['lt'] as int?);
  int? get lte => (_$data['lte'] as int?);
  int? get gt => (_$data['gt'] as int?);
  int? get gte => (_$data['gte'] as int?);
  Input$NestedIntFilter? get not => (_$data['not'] as Input$NestedIntFilter?);
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
    return result$data;
  }

  CopyWith$Input$NestedIntFilter<Input$NestedIntFilter> get copyWith =>
      CopyWith$Input$NestedIntFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$NestedIntFilter) || runtimeType != other.runtimeType) {
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
    ]);
  }
}

abstract class CopyWith$Input$NestedIntFilter<TRes> {
  factory CopyWith$Input$NestedIntFilter(
    Input$NestedIntFilter instance,
    TRes Function(Input$NestedIntFilter) then,
  ) = _CopyWithImpl$Input$NestedIntFilter;

  factory CopyWith$Input$NestedIntFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$NestedIntFilter;

  TRes call({
    int? equals,
    List<int>? $in,
    List<int>? notIn,
    int? lt,
    int? lte,
    int? gt,
    int? gte,
    Input$NestedIntFilter? not,
  });
  CopyWith$Input$NestedIntFilter<TRes> get not;
}

class _CopyWithImpl$Input$NestedIntFilter<TRes>
    implements CopyWith$Input$NestedIntFilter<TRes> {
  _CopyWithImpl$Input$NestedIntFilter(
    this._instance,
    this._then,
  );

  final Input$NestedIntFilter _instance;

  final TRes Function(Input$NestedIntFilter) _then;

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
  }) =>
      _then(Input$NestedIntFilter._({
        ..._instance._$data,
        if (equals != _undefined) 'equals': (equals as int?),
        if ($in != _undefined) 'in': ($in as List<int>?),
        if (notIn != _undefined) 'notIn': (notIn as List<int>?),
        if (lt != _undefined) 'lt': (lt as int?),
        if (lte != _undefined) 'lte': (lte as int?),
        if (gt != _undefined) 'gt': (gt as int?),
        if (gte != _undefined) 'gte': (gte as int?),
        if (not != _undefined) 'not': (not as Input$NestedIntFilter?),
      }));
  CopyWith$Input$NestedIntFilter<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$NestedIntFilter.stub(_then(_instance))
        : CopyWith$Input$NestedIntFilter(local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$NestedIntFilter<TRes>
    implements CopyWith$Input$NestedIntFilter<TRes> {
  _CopyWithStubImpl$Input$NestedIntFilter(this._res);

  TRes _res;

  call({
    int? equals,
    List<int>? $in,
    List<int>? notIn,
    int? lt,
    int? lte,
    int? gt,
    int? gte,
    Input$NestedIntFilter? not,
  }) =>
      _res;
  CopyWith$Input$NestedIntFilter<TRes> get not =>
      CopyWith$Input$NestedIntFilter.stub(_res);
}

class Input$StringFilter {
  factory Input$StringFilter({
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
    Input$NestedStringFilter? not,
  }) =>
      Input$StringFilter._({
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
      });

  Input$StringFilter._(this._$data);

  factory Input$StringFilter.fromJson(Map<String, dynamic> data) {
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
          : Input$NestedStringFilter.fromJson((l$not as Map<String, dynamic>));
    }
    return Input$StringFilter._(result$data);
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
  Input$NestedStringFilter? get not =>
      (_$data['not'] as Input$NestedStringFilter?);
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
    return result$data;
  }

  CopyWith$Input$StringFilter<Input$StringFilter> get copyWith =>
      CopyWith$Input$StringFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$StringFilter) || runtimeType != other.runtimeType) {
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
    ]);
  }
}

abstract class CopyWith$Input$StringFilter<TRes> {
  factory CopyWith$Input$StringFilter(
    Input$StringFilter instance,
    TRes Function(Input$StringFilter) then,
  ) = _CopyWithImpl$Input$StringFilter;

  factory CopyWith$Input$StringFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$StringFilter;

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
    Input$NestedStringFilter? not,
  });
  CopyWith$Input$NestedStringFilter<TRes> get not;
}

class _CopyWithImpl$Input$StringFilter<TRes>
    implements CopyWith$Input$StringFilter<TRes> {
  _CopyWithImpl$Input$StringFilter(
    this._instance,
    this._then,
  );

  final Input$StringFilter _instance;

  final TRes Function(Input$StringFilter) _then;

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
  }) =>
      _then(Input$StringFilter._({
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
        if (not != _undefined) 'not': (not as Input$NestedStringFilter?),
      }));
  CopyWith$Input$NestedStringFilter<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$NestedStringFilter.stub(_then(_instance))
        : CopyWith$Input$NestedStringFilter(local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$StringFilter<TRes>
    implements CopyWith$Input$StringFilter<TRes> {
  _CopyWithStubImpl$Input$StringFilter(this._res);

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
    Input$NestedStringFilter? not,
  }) =>
      _res;
  CopyWith$Input$NestedStringFilter<TRes> get not =>
      CopyWith$Input$NestedStringFilter.stub(_res);
}

class Input$NestedStringFilter {
  factory Input$NestedStringFilter({
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
    Input$NestedStringFilter? not,
  }) =>
      Input$NestedStringFilter._({
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
      });

  Input$NestedStringFilter._(this._$data);

  factory Input$NestedStringFilter.fromJson(Map<String, dynamic> data) {
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
          : Input$NestedStringFilter.fromJson((l$not as Map<String, dynamic>));
    }
    return Input$NestedStringFilter._(result$data);
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
  Input$NestedStringFilter? get not =>
      (_$data['not'] as Input$NestedStringFilter?);
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
    return result$data;
  }

  CopyWith$Input$NestedStringFilter<Input$NestedStringFilter> get copyWith =>
      CopyWith$Input$NestedStringFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$NestedStringFilter) ||
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
    ]);
  }
}

abstract class CopyWith$Input$NestedStringFilter<TRes> {
  factory CopyWith$Input$NestedStringFilter(
    Input$NestedStringFilter instance,
    TRes Function(Input$NestedStringFilter) then,
  ) = _CopyWithImpl$Input$NestedStringFilter;

  factory CopyWith$Input$NestedStringFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$NestedStringFilter;

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
    Input$NestedStringFilter? not,
  });
  CopyWith$Input$NestedStringFilter<TRes> get not;
}

class _CopyWithImpl$Input$NestedStringFilter<TRes>
    implements CopyWith$Input$NestedStringFilter<TRes> {
  _CopyWithImpl$Input$NestedStringFilter(
    this._instance,
    this._then,
  );

  final Input$NestedStringFilter _instance;

  final TRes Function(Input$NestedStringFilter) _then;

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
  }) =>
      _then(Input$NestedStringFilter._({
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
        if (not != _undefined) 'not': (not as Input$NestedStringFilter?),
      }));
  CopyWith$Input$NestedStringFilter<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$NestedStringFilter.stub(_then(_instance))
        : CopyWith$Input$NestedStringFilter(local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$NestedStringFilter<TRes>
    implements CopyWith$Input$NestedStringFilter<TRes> {
  _CopyWithStubImpl$Input$NestedStringFilter(this._res);

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
    Input$NestedStringFilter? not,
  }) =>
      _res;
  CopyWith$Input$NestedStringFilter<TRes> get not =>
      CopyWith$Input$NestedStringFilter.stub(_res);
}

class Input$TransactionsListRelationFilter {
  factory Input$TransactionsListRelationFilter({
    Input$TransactionsWhereInput? every,
    Input$TransactionsWhereInput? some,
    Input$TransactionsWhereInput? none,
  }) =>
      Input$TransactionsListRelationFilter._({
        if (every != null) r'every': every,
        if (some != null) r'some': some,
        if (none != null) r'none': none,
      });

  Input$TransactionsListRelationFilter._(this._$data);

  factory Input$TransactionsListRelationFilter.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('every')) {
      final l$every = data['every'];
      result$data['every'] = l$every == null
          ? null
          : Input$TransactionsWhereInput.fromJson(
              (l$every as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$TransactionsWhereInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$TransactionsWhereInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    return Input$TransactionsListRelationFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionsWhereInput? get every =>
      (_$data['every'] as Input$TransactionsWhereInput?);
  Input$TransactionsWhereInput? get some =>
      (_$data['some'] as Input$TransactionsWhereInput?);
  Input$TransactionsWhereInput? get none =>
      (_$data['none'] as Input$TransactionsWhereInput?);
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

  CopyWith$Input$TransactionsListRelationFilter<
          Input$TransactionsListRelationFilter>
      get copyWith => CopyWith$Input$TransactionsListRelationFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsListRelationFilter) ||
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

abstract class CopyWith$Input$TransactionsListRelationFilter<TRes> {
  factory CopyWith$Input$TransactionsListRelationFilter(
    Input$TransactionsListRelationFilter instance,
    TRes Function(Input$TransactionsListRelationFilter) then,
  ) = _CopyWithImpl$Input$TransactionsListRelationFilter;

  factory CopyWith$Input$TransactionsListRelationFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionsListRelationFilter;

  TRes call({
    Input$TransactionsWhereInput? every,
    Input$TransactionsWhereInput? some,
    Input$TransactionsWhereInput? none,
  });
  CopyWith$Input$TransactionsWhereInput<TRes> get every;
  CopyWith$Input$TransactionsWhereInput<TRes> get some;
  CopyWith$Input$TransactionsWhereInput<TRes> get none;
}

class _CopyWithImpl$Input$TransactionsListRelationFilter<TRes>
    implements CopyWith$Input$TransactionsListRelationFilter<TRes> {
  _CopyWithImpl$Input$TransactionsListRelationFilter(
    this._instance,
    this._then,
  );

  final Input$TransactionsListRelationFilter _instance;

  final TRes Function(Input$TransactionsListRelationFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? every = _undefined,
    Object? some = _undefined,
    Object? none = _undefined,
  }) =>
      _then(Input$TransactionsListRelationFilter._({
        ..._instance._$data,
        if (every != _undefined)
          'every': (every as Input$TransactionsWhereInput?),
        if (some != _undefined) 'some': (some as Input$TransactionsWhereInput?),
        if (none != _undefined) 'none': (none as Input$TransactionsWhereInput?),
      }));
  CopyWith$Input$TransactionsWhereInput<TRes> get every {
    final local$every = _instance.every;
    return local$every == null
        ? CopyWith$Input$TransactionsWhereInput.stub(_then(_instance))
        : CopyWith$Input$TransactionsWhereInput(
            local$every, (e) => call(every: e));
  }

  CopyWith$Input$TransactionsWhereInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$TransactionsWhereInput.stub(_then(_instance))
        : CopyWith$Input$TransactionsWhereInput(
            local$some, (e) => call(some: e));
  }

  CopyWith$Input$TransactionsWhereInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$TransactionsWhereInput.stub(_then(_instance))
        : CopyWith$Input$TransactionsWhereInput(
            local$none, (e) => call(none: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsListRelationFilter<TRes>
    implements CopyWith$Input$TransactionsListRelationFilter<TRes> {
  _CopyWithStubImpl$Input$TransactionsListRelationFilter(this._res);

  TRes _res;

  call({
    Input$TransactionsWhereInput? every,
    Input$TransactionsWhereInput? some,
    Input$TransactionsWhereInput? none,
  }) =>
      _res;
  CopyWith$Input$TransactionsWhereInput<TRes> get every =>
      CopyWith$Input$TransactionsWhereInput.stub(_res);
  CopyWith$Input$TransactionsWhereInput<TRes> get some =>
      CopyWith$Input$TransactionsWhereInput.stub(_res);
  CopyWith$Input$TransactionsWhereInput<TRes> get none =>
      CopyWith$Input$TransactionsWhereInput.stub(_res);
}

class Input$TransactionsWhereInput {
  factory Input$TransactionsWhereInput({
    List<Input$TransactionsWhereInput>? AND,
    List<Input$TransactionsWhereInput>? OR,
    List<Input$TransactionsWhereInput>? NOT,
    Input$IntFilter? transaction_id,
    Input$IntFilter? seller_id,
    Input$IntFilter? product_id,
    Input$StringFilter? customer_name,
    Input$StringFilter? customer_phone,
    Input$IntFilter? city_id,
    Input$StringFilter? address,
    Input$IntFilter? quantity,
    Input$DateTimeFilter? date,
    Input$FloatFilter? remainingPayement,
    Input$FloatFilter? totalPayement,
    Input$SellersRelationFilter? seller,
    Input$CityRelationFilter? city,
    Input$IntFilter? transaction_type_id,
    Input$TransactionTypesRelationFilter? transaction_type,
    Input$IntFilter? status_id,
    Input$TransactionStatusRelationFilter? status,
    Input$PayementsListRelationFilter? Payements,
  }) =>
      Input$TransactionsWhereInput._({
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
        if (seller != null) r'seller': seller,
        if (city != null) r'city': city,
        if (transaction_type_id != null)
          r'transaction_type_id': transaction_type_id,
        if (transaction_type != null) r'transaction_type': transaction_type,
        if (status_id != null) r'status_id': status_id,
        if (status != null) r'status': status,
        if (Payements != null) r'Payements': Payements,
      });

  Input$TransactionsWhereInput._(this._$data);

  factory Input$TransactionsWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) => Input$TransactionsWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) => Input$TransactionsWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) => Input$TransactionsWhereInput.fromJson(
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
    if (data.containsKey('seller_id')) {
      final l$seller_id = data['seller_id'];
      result$data['seller_id'] = l$seller_id == null
          ? null
          : Input$IntFilter.fromJson((l$seller_id as Map<String, dynamic>));
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : Input$IntFilter.fromJson((l$product_id as Map<String, dynamic>));
    }
    if (data.containsKey('customer_name')) {
      final l$customer_name = data['customer_name'];
      result$data['customer_name'] = l$customer_name == null
          ? null
          : Input$StringFilter.fromJson(
              (l$customer_name as Map<String, dynamic>));
    }
    if (data.containsKey('customer_phone')) {
      final l$customer_phone = data['customer_phone'];
      result$data['customer_phone'] = l$customer_phone == null
          ? null
          : Input$StringFilter.fromJson(
              (l$customer_phone as Map<String, dynamic>));
    }
    if (data.containsKey('city_id')) {
      final l$city_id = data['city_id'];
      result$data['city_id'] = l$city_id == null
          ? null
          : Input$IntFilter.fromJson((l$city_id as Map<String, dynamic>));
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input$StringFilter.fromJson((l$address as Map<String, dynamic>));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : Input$IntFilter.fromJson((l$quantity as Map<String, dynamic>));
    }
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] = l$date == null
          ? null
          : Input$DateTimeFilter.fromJson((l$date as Map<String, dynamic>));
    }
    if (data.containsKey('remainingPayement')) {
      final l$remainingPayement = data['remainingPayement'];
      result$data['remainingPayement'] = l$remainingPayement == null
          ? null
          : Input$FloatFilter.fromJson(
              (l$remainingPayement as Map<String, dynamic>));
    }
    if (data.containsKey('totalPayement')) {
      final l$totalPayement = data['totalPayement'];
      result$data['totalPayement'] = l$totalPayement == null
          ? null
          : Input$FloatFilter.fromJson(
              (l$totalPayement as Map<String, dynamic>));
    }
    if (data.containsKey('seller')) {
      final l$seller = data['seller'];
      result$data['seller'] = l$seller == null
          ? null
          : Input$SellersRelationFilter.fromJson(
              (l$seller as Map<String, dynamic>));
    }
    if (data.containsKey('city')) {
      final l$city = data['city'];
      result$data['city'] = l$city == null
          ? null
          : Input$CityRelationFilter.fromJson((l$city as Map<String, dynamic>));
    }
    if (data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = data['transaction_type_id'];
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : Input$IntFilter.fromJson(
              (l$transaction_type_id as Map<String, dynamic>));
    }
    if (data.containsKey('transaction_type')) {
      final l$transaction_type = data['transaction_type'];
      result$data['transaction_type'] = l$transaction_type == null
          ? null
          : Input$TransactionTypesRelationFilter.fromJson(
              (l$transaction_type as Map<String, dynamic>));
    }
    if (data.containsKey('status_id')) {
      final l$status_id = data['status_id'];
      result$data['status_id'] = l$status_id == null
          ? null
          : Input$IntFilter.fromJson((l$status_id as Map<String, dynamic>));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : Input$TransactionStatusRelationFilter.fromJson(
              (l$status as Map<String, dynamic>));
    }
    if (data.containsKey('Payements')) {
      final l$Payements = data['Payements'];
      result$data['Payements'] = l$Payements == null
          ? null
          : Input$PayementsListRelationFilter.fromJson(
              (l$Payements as Map<String, dynamic>));
    }
    return Input$TransactionsWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TransactionsWhereInput>? get AND =>
      (_$data['AND'] as List<Input$TransactionsWhereInput>?);
  List<Input$TransactionsWhereInput>? get OR =>
      (_$data['OR'] as List<Input$TransactionsWhereInput>?);
  List<Input$TransactionsWhereInput>? get NOT =>
      (_$data['NOT'] as List<Input$TransactionsWhereInput>?);
  Input$IntFilter? get transaction_id =>
      (_$data['transaction_id'] as Input$IntFilter?);
  Input$IntFilter? get seller_id => (_$data['seller_id'] as Input$IntFilter?);
  Input$IntFilter? get product_id => (_$data['product_id'] as Input$IntFilter?);
  Input$StringFilter? get customer_name =>
      (_$data['customer_name'] as Input$StringFilter?);
  Input$StringFilter? get customer_phone =>
      (_$data['customer_phone'] as Input$StringFilter?);
  Input$IntFilter? get city_id => (_$data['city_id'] as Input$IntFilter?);
  Input$StringFilter? get address => (_$data['address'] as Input$StringFilter?);
  Input$IntFilter? get quantity => (_$data['quantity'] as Input$IntFilter?);
  Input$DateTimeFilter? get date => (_$data['date'] as Input$DateTimeFilter?);
  Input$FloatFilter? get remainingPayement =>
      (_$data['remainingPayement'] as Input$FloatFilter?);
  Input$FloatFilter? get totalPayement =>
      (_$data['totalPayement'] as Input$FloatFilter?);
  Input$SellersRelationFilter? get seller =>
      (_$data['seller'] as Input$SellersRelationFilter?);
  Input$CityRelationFilter? get city =>
      (_$data['city'] as Input$CityRelationFilter?);
  Input$IntFilter? get transaction_type_id =>
      (_$data['transaction_type_id'] as Input$IntFilter?);
  Input$TransactionTypesRelationFilter? get transaction_type =>
      (_$data['transaction_type'] as Input$TransactionTypesRelationFilter?);
  Input$IntFilter? get status_id => (_$data['status_id'] as Input$IntFilter?);
  Input$TransactionStatusRelationFilter? get status =>
      (_$data['status'] as Input$TransactionStatusRelationFilter?);
  Input$PayementsListRelationFilter? get Payements =>
      (_$data['Payements'] as Input$PayementsListRelationFilter?);
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
    if (_$data.containsKey('seller')) {
      final l$seller = seller;
      result$data['seller'] = l$seller?.toJson();
    }
    if (_$data.containsKey('city')) {
      final l$city = city;
      result$data['city'] = l$city?.toJson();
    }
    if (_$data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = transaction_type_id;
      result$data['transaction_type_id'] = l$transaction_type_id?.toJson();
    }
    if (_$data.containsKey('transaction_type')) {
      final l$transaction_type = transaction_type;
      result$data['transaction_type'] = l$transaction_type?.toJson();
    }
    if (_$data.containsKey('status_id')) {
      final l$status_id = status_id;
      result$data['status_id'] = l$status_id?.toJson();
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

  CopyWith$Input$TransactionsWhereInput<Input$TransactionsWhereInput>
      get copyWith => CopyWith$Input$TransactionsWhereInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsWhereInput) ||
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
    final l$seller = seller;
    final lOther$seller = other.seller;
    if (_$data.containsKey('seller') != other._$data.containsKey('seller')) {
      return false;
    }
    if (l$seller != lOther$seller) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (_$data.containsKey('city') != other._$data.containsKey('city')) {
      return false;
    }
    if (l$city != lOther$city) {
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
    final l$transaction_type = transaction_type;
    final lOther$transaction_type = other.transaction_type;
    if (_$data.containsKey('transaction_type') !=
        other._$data.containsKey('transaction_type')) {
      return false;
    }
    if (l$transaction_type != lOther$transaction_type) {
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
    final l$seller = seller;
    final l$city = city;
    final l$transaction_type_id = transaction_type_id;
    final l$transaction_type = transaction_type;
    final l$status_id = status_id;
    final l$status = status;
    final l$Payements = Payements;
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
      _$data.containsKey('seller') ? l$seller : const {},
      _$data.containsKey('city') ? l$city : const {},
      _$data.containsKey('transaction_type_id')
          ? l$transaction_type_id
          : const {},
      _$data.containsKey('transaction_type') ? l$transaction_type : const {},
      _$data.containsKey('status_id') ? l$status_id : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('Payements') ? l$Payements : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsWhereInput<TRes> {
  factory CopyWith$Input$TransactionsWhereInput(
    Input$TransactionsWhereInput instance,
    TRes Function(Input$TransactionsWhereInput) then,
  ) = _CopyWithImpl$Input$TransactionsWhereInput;

  factory CopyWith$Input$TransactionsWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionsWhereInput;

  TRes call({
    List<Input$TransactionsWhereInput>? AND,
    List<Input$TransactionsWhereInput>? OR,
    List<Input$TransactionsWhereInput>? NOT,
    Input$IntFilter? transaction_id,
    Input$IntFilter? seller_id,
    Input$IntFilter? product_id,
    Input$StringFilter? customer_name,
    Input$StringFilter? customer_phone,
    Input$IntFilter? city_id,
    Input$StringFilter? address,
    Input$IntFilter? quantity,
    Input$DateTimeFilter? date,
    Input$FloatFilter? remainingPayement,
    Input$FloatFilter? totalPayement,
    Input$SellersRelationFilter? seller,
    Input$CityRelationFilter? city,
    Input$IntFilter? transaction_type_id,
    Input$TransactionTypesRelationFilter? transaction_type,
    Input$IntFilter? status_id,
    Input$TransactionStatusRelationFilter? status,
    Input$PayementsListRelationFilter? Payements,
  });
  TRes AND(
      Iterable<Input$TransactionsWhereInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsWhereInput<
                      Input$TransactionsWhereInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$TransactionsWhereInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsWhereInput<
                      Input$TransactionsWhereInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$TransactionsWhereInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsWhereInput<
                      Input$TransactionsWhereInput>>?)
          _fn);
  CopyWith$Input$IntFilter<TRes> get transaction_id;
  CopyWith$Input$IntFilter<TRes> get seller_id;
  CopyWith$Input$IntFilter<TRes> get product_id;
  CopyWith$Input$StringFilter<TRes> get customer_name;
  CopyWith$Input$StringFilter<TRes> get customer_phone;
  CopyWith$Input$IntFilter<TRes> get city_id;
  CopyWith$Input$StringFilter<TRes> get address;
  CopyWith$Input$IntFilter<TRes> get quantity;
  CopyWith$Input$DateTimeFilter<TRes> get date;
  CopyWith$Input$FloatFilter<TRes> get remainingPayement;
  CopyWith$Input$FloatFilter<TRes> get totalPayement;
  CopyWith$Input$SellersRelationFilter<TRes> get seller;
  CopyWith$Input$CityRelationFilter<TRes> get city;
  CopyWith$Input$IntFilter<TRes> get transaction_type_id;
  CopyWith$Input$TransactionTypesRelationFilter<TRes> get transaction_type;
  CopyWith$Input$IntFilter<TRes> get status_id;
  CopyWith$Input$TransactionStatusRelationFilter<TRes> get status;
  CopyWith$Input$PayementsListRelationFilter<TRes> get Payements;
}

class _CopyWithImpl$Input$TransactionsWhereInput<TRes>
    implements CopyWith$Input$TransactionsWhereInput<TRes> {
  _CopyWithImpl$Input$TransactionsWhereInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsWhereInput _instance;

  final TRes Function(Input$TransactionsWhereInput) _then;

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
    Object? seller = _undefined,
    Object? city = _undefined,
    Object? transaction_type_id = _undefined,
    Object? transaction_type = _undefined,
    Object? status_id = _undefined,
    Object? status = _undefined,
    Object? Payements = _undefined,
  }) =>
      _then(Input$TransactionsWhereInput._({
        ..._instance._$data,
        if (AND != _undefined)
          'AND': (AND as List<Input$TransactionsWhereInput>?),
        if (OR != _undefined) 'OR': (OR as List<Input$TransactionsWhereInput>?),
        if (NOT != _undefined)
          'NOT': (NOT as List<Input$TransactionsWhereInput>?),
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Input$IntFilter?),
        if (seller_id != _undefined)
          'seller_id': (seller_id as Input$IntFilter?),
        if (product_id != _undefined)
          'product_id': (product_id as Input$IntFilter?),
        if (customer_name != _undefined)
          'customer_name': (customer_name as Input$StringFilter?),
        if (customer_phone != _undefined)
          'customer_phone': (customer_phone as Input$StringFilter?),
        if (city_id != _undefined) 'city_id': (city_id as Input$IntFilter?),
        if (address != _undefined) 'address': (address as Input$StringFilter?),
        if (quantity != _undefined) 'quantity': (quantity as Input$IntFilter?),
        if (date != _undefined) 'date': (date as Input$DateTimeFilter?),
        if (remainingPayement != _undefined)
          'remainingPayement': (remainingPayement as Input$FloatFilter?),
        if (totalPayement != _undefined)
          'totalPayement': (totalPayement as Input$FloatFilter?),
        if (seller != _undefined)
          'seller': (seller as Input$SellersRelationFilter?),
        if (city != _undefined) 'city': (city as Input$CityRelationFilter?),
        if (transaction_type_id != _undefined)
          'transaction_type_id': (transaction_type_id as Input$IntFilter?),
        if (transaction_type != _undefined)
          'transaction_type':
              (transaction_type as Input$TransactionTypesRelationFilter?),
        if (status_id != _undefined)
          'status_id': (status_id as Input$IntFilter?),
        if (status != _undefined)
          'status': (status as Input$TransactionStatusRelationFilter?),
        if (Payements != _undefined)
          'Payements': (Payements as Input$PayementsListRelationFilter?),
      }));
  TRes AND(
          Iterable<Input$TransactionsWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsWhereInput<
                          Input$TransactionsWhereInput>>?)
              _fn) =>
      call(
          AND: _fn(
              _instance.AND?.map((e) => CopyWith$Input$TransactionsWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes OR(
          Iterable<Input$TransactionsWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsWhereInput<
                          Input$TransactionsWhereInput>>?)
              _fn) =>
      call(
          OR: _fn(
              _instance.OR?.map((e) => CopyWith$Input$TransactionsWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes NOT(
          Iterable<Input$TransactionsWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsWhereInput<
                          Input$TransactionsWhereInput>>?)
              _fn) =>
      call(
          NOT: _fn(
              _instance.NOT?.map((e) => CopyWith$Input$TransactionsWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$IntFilter<TRes> get transaction_id {
    final local$transaction_id = _instance.transaction_id;
    return local$transaction_id == null
        ? CopyWith$Input$IntFilter.stub(_then(_instance))
        : CopyWith$Input$IntFilter(
            local$transaction_id, (e) => call(transaction_id: e));
  }

  CopyWith$Input$IntFilter<TRes> get seller_id {
    final local$seller_id = _instance.seller_id;
    return local$seller_id == null
        ? CopyWith$Input$IntFilter.stub(_then(_instance))
        : CopyWith$Input$IntFilter(local$seller_id, (e) => call(seller_id: e));
  }

  CopyWith$Input$IntFilter<TRes> get product_id {
    final local$product_id = _instance.product_id;
    return local$product_id == null
        ? CopyWith$Input$IntFilter.stub(_then(_instance))
        : CopyWith$Input$IntFilter(
            local$product_id, (e) => call(product_id: e));
  }

  CopyWith$Input$StringFilter<TRes> get customer_name {
    final local$customer_name = _instance.customer_name;
    return local$customer_name == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(
            local$customer_name, (e) => call(customer_name: e));
  }

  CopyWith$Input$StringFilter<TRes> get customer_phone {
    final local$customer_phone = _instance.customer_phone;
    return local$customer_phone == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(
            local$customer_phone, (e) => call(customer_phone: e));
  }

  CopyWith$Input$IntFilter<TRes> get city_id {
    final local$city_id = _instance.city_id;
    return local$city_id == null
        ? CopyWith$Input$IntFilter.stub(_then(_instance))
        : CopyWith$Input$IntFilter(local$city_id, (e) => call(city_id: e));
  }

  CopyWith$Input$StringFilter<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$address, (e) => call(address: e));
  }

  CopyWith$Input$IntFilter<TRes> get quantity {
    final local$quantity = _instance.quantity;
    return local$quantity == null
        ? CopyWith$Input$IntFilter.stub(_then(_instance))
        : CopyWith$Input$IntFilter(local$quantity, (e) => call(quantity: e));
  }

  CopyWith$Input$DateTimeFilter<TRes> get date {
    final local$date = _instance.date;
    return local$date == null
        ? CopyWith$Input$DateTimeFilter.stub(_then(_instance))
        : CopyWith$Input$DateTimeFilter(local$date, (e) => call(date: e));
  }

  CopyWith$Input$FloatFilter<TRes> get remainingPayement {
    final local$remainingPayement = _instance.remainingPayement;
    return local$remainingPayement == null
        ? CopyWith$Input$FloatFilter.stub(_then(_instance))
        : CopyWith$Input$FloatFilter(
            local$remainingPayement, (e) => call(remainingPayement: e));
  }

  CopyWith$Input$FloatFilter<TRes> get totalPayement {
    final local$totalPayement = _instance.totalPayement;
    return local$totalPayement == null
        ? CopyWith$Input$FloatFilter.stub(_then(_instance))
        : CopyWith$Input$FloatFilter(
            local$totalPayement, (e) => call(totalPayement: e));
  }

  CopyWith$Input$SellersRelationFilter<TRes> get seller {
    final local$seller = _instance.seller;
    return local$seller == null
        ? CopyWith$Input$SellersRelationFilter.stub(_then(_instance))
        : CopyWith$Input$SellersRelationFilter(
            local$seller, (e) => call(seller: e));
  }

  CopyWith$Input$CityRelationFilter<TRes> get city {
    final local$city = _instance.city;
    return local$city == null
        ? CopyWith$Input$CityRelationFilter.stub(_then(_instance))
        : CopyWith$Input$CityRelationFilter(local$city, (e) => call(city: e));
  }

  CopyWith$Input$IntFilter<TRes> get transaction_type_id {
    final local$transaction_type_id = _instance.transaction_type_id;
    return local$transaction_type_id == null
        ? CopyWith$Input$IntFilter.stub(_then(_instance))
        : CopyWith$Input$IntFilter(
            local$transaction_type_id, (e) => call(transaction_type_id: e));
  }

  CopyWith$Input$TransactionTypesRelationFilter<TRes> get transaction_type {
    final local$transaction_type = _instance.transaction_type;
    return local$transaction_type == null
        ? CopyWith$Input$TransactionTypesRelationFilter.stub(_then(_instance))
        : CopyWith$Input$TransactionTypesRelationFilter(
            local$transaction_type, (e) => call(transaction_type: e));
  }

  CopyWith$Input$IntFilter<TRes> get status_id {
    final local$status_id = _instance.status_id;
    return local$status_id == null
        ? CopyWith$Input$IntFilter.stub(_then(_instance))
        : CopyWith$Input$IntFilter(local$status_id, (e) => call(status_id: e));
  }

  CopyWith$Input$TransactionStatusRelationFilter<TRes> get status {
    final local$status = _instance.status;
    return local$status == null
        ? CopyWith$Input$TransactionStatusRelationFilter.stub(_then(_instance))
        : CopyWith$Input$TransactionStatusRelationFilter(
            local$status, (e) => call(status: e));
  }

  CopyWith$Input$PayementsListRelationFilter<TRes> get Payements {
    final local$Payements = _instance.Payements;
    return local$Payements == null
        ? CopyWith$Input$PayementsListRelationFilter.stub(_then(_instance))
        : CopyWith$Input$PayementsListRelationFilter(
            local$Payements, (e) => call(Payements: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsWhereInput<TRes>
    implements CopyWith$Input$TransactionsWhereInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsWhereInput(this._res);

  TRes _res;

  call({
    List<Input$TransactionsWhereInput>? AND,
    List<Input$TransactionsWhereInput>? OR,
    List<Input$TransactionsWhereInput>? NOT,
    Input$IntFilter? transaction_id,
    Input$IntFilter? seller_id,
    Input$IntFilter? product_id,
    Input$StringFilter? customer_name,
    Input$StringFilter? customer_phone,
    Input$IntFilter? city_id,
    Input$StringFilter? address,
    Input$IntFilter? quantity,
    Input$DateTimeFilter? date,
    Input$FloatFilter? remainingPayement,
    Input$FloatFilter? totalPayement,
    Input$SellersRelationFilter? seller,
    Input$CityRelationFilter? city,
    Input$IntFilter? transaction_type_id,
    Input$TransactionTypesRelationFilter? transaction_type,
    Input$IntFilter? status_id,
    Input$TransactionStatusRelationFilter? status,
    Input$PayementsListRelationFilter? Payements,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
  CopyWith$Input$IntFilter<TRes> get transaction_id =>
      CopyWith$Input$IntFilter.stub(_res);
  CopyWith$Input$IntFilter<TRes> get seller_id =>
      CopyWith$Input$IntFilter.stub(_res);
  CopyWith$Input$IntFilter<TRes> get product_id =>
      CopyWith$Input$IntFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get customer_name =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get customer_phone =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$IntFilter<TRes> get city_id =>
      CopyWith$Input$IntFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get address =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$IntFilter<TRes> get quantity =>
      CopyWith$Input$IntFilter.stub(_res);
  CopyWith$Input$DateTimeFilter<TRes> get date =>
      CopyWith$Input$DateTimeFilter.stub(_res);
  CopyWith$Input$FloatFilter<TRes> get remainingPayement =>
      CopyWith$Input$FloatFilter.stub(_res);
  CopyWith$Input$FloatFilter<TRes> get totalPayement =>
      CopyWith$Input$FloatFilter.stub(_res);
  CopyWith$Input$SellersRelationFilter<TRes> get seller =>
      CopyWith$Input$SellersRelationFilter.stub(_res);
  CopyWith$Input$CityRelationFilter<TRes> get city =>
      CopyWith$Input$CityRelationFilter.stub(_res);
  CopyWith$Input$IntFilter<TRes> get transaction_type_id =>
      CopyWith$Input$IntFilter.stub(_res);
  CopyWith$Input$TransactionTypesRelationFilter<TRes> get transaction_type =>
      CopyWith$Input$TransactionTypesRelationFilter.stub(_res);
  CopyWith$Input$IntFilter<TRes> get status_id =>
      CopyWith$Input$IntFilter.stub(_res);
  CopyWith$Input$TransactionStatusRelationFilter<TRes> get status =>
      CopyWith$Input$TransactionStatusRelationFilter.stub(_res);
  CopyWith$Input$PayementsListRelationFilter<TRes> get Payements =>
      CopyWith$Input$PayementsListRelationFilter.stub(_res);
}

class Input$DateTimeFilter {
  factory Input$DateTimeFilter({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    Input$NestedDateTimeFilter? not,
  }) =>
      Input$DateTimeFilter._({
        if (equals != null) r'equals': equals,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (not != null) r'not': not,
      });

  Input$DateTimeFilter._(this._$data);

  factory Input$DateTimeFilter.fromJson(Map<String, dynamic> data) {
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
          : Input$NestedDateTimeFilter.fromJson(
              (l$not as Map<String, dynamic>));
    }
    return Input$DateTimeFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get equals => (_$data['equals'] as String?);
  List<String>? get $in => (_$data['in'] as List<String>?);
  List<String>? get notIn => (_$data['notIn'] as List<String>?);
  String? get lt => (_$data['lt'] as String?);
  String? get lte => (_$data['lte'] as String?);
  String? get gt => (_$data['gt'] as String?);
  String? get gte => (_$data['gte'] as String?);
  Input$NestedDateTimeFilter? get not =>
      (_$data['not'] as Input$NestedDateTimeFilter?);
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
    return result$data;
  }

  CopyWith$Input$DateTimeFilter<Input$DateTimeFilter> get copyWith =>
      CopyWith$Input$DateTimeFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DateTimeFilter) || runtimeType != other.runtimeType) {
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
    ]);
  }
}

abstract class CopyWith$Input$DateTimeFilter<TRes> {
  factory CopyWith$Input$DateTimeFilter(
    Input$DateTimeFilter instance,
    TRes Function(Input$DateTimeFilter) then,
  ) = _CopyWithImpl$Input$DateTimeFilter;

  factory CopyWith$Input$DateTimeFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$DateTimeFilter;

  TRes call({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    Input$NestedDateTimeFilter? not,
  });
  CopyWith$Input$NestedDateTimeFilter<TRes> get not;
}

class _CopyWithImpl$Input$DateTimeFilter<TRes>
    implements CopyWith$Input$DateTimeFilter<TRes> {
  _CopyWithImpl$Input$DateTimeFilter(
    this._instance,
    this._then,
  );

  final Input$DateTimeFilter _instance;

  final TRes Function(Input$DateTimeFilter) _then;

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
  }) =>
      _then(Input$DateTimeFilter._({
        ..._instance._$data,
        if (equals != _undefined) 'equals': (equals as String?),
        if ($in != _undefined) 'in': ($in as List<String>?),
        if (notIn != _undefined) 'notIn': (notIn as List<String>?),
        if (lt != _undefined) 'lt': (lt as String?),
        if (lte != _undefined) 'lte': (lte as String?),
        if (gt != _undefined) 'gt': (gt as String?),
        if (gte != _undefined) 'gte': (gte as String?),
        if (not != _undefined) 'not': (not as Input$NestedDateTimeFilter?),
      }));
  CopyWith$Input$NestedDateTimeFilter<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$NestedDateTimeFilter.stub(_then(_instance))
        : CopyWith$Input$NestedDateTimeFilter(local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$DateTimeFilter<TRes>
    implements CopyWith$Input$DateTimeFilter<TRes> {
  _CopyWithStubImpl$Input$DateTimeFilter(this._res);

  TRes _res;

  call({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    Input$NestedDateTimeFilter? not,
  }) =>
      _res;
  CopyWith$Input$NestedDateTimeFilter<TRes> get not =>
      CopyWith$Input$NestedDateTimeFilter.stub(_res);
}

class Input$NestedDateTimeFilter {
  factory Input$NestedDateTimeFilter({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    Input$NestedDateTimeFilter? not,
  }) =>
      Input$NestedDateTimeFilter._({
        if (equals != null) r'equals': equals,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (not != null) r'not': not,
      });

  Input$NestedDateTimeFilter._(this._$data);

  factory Input$NestedDateTimeFilter.fromJson(Map<String, dynamic> data) {
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
          : Input$NestedDateTimeFilter.fromJson(
              (l$not as Map<String, dynamic>));
    }
    return Input$NestedDateTimeFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get equals => (_$data['equals'] as String?);
  List<String>? get $in => (_$data['in'] as List<String>?);
  List<String>? get notIn => (_$data['notIn'] as List<String>?);
  String? get lt => (_$data['lt'] as String?);
  String? get lte => (_$data['lte'] as String?);
  String? get gt => (_$data['gt'] as String?);
  String? get gte => (_$data['gte'] as String?);
  Input$NestedDateTimeFilter? get not =>
      (_$data['not'] as Input$NestedDateTimeFilter?);
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
    return result$data;
  }

  CopyWith$Input$NestedDateTimeFilter<Input$NestedDateTimeFilter>
      get copyWith => CopyWith$Input$NestedDateTimeFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$NestedDateTimeFilter) ||
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
    ]);
  }
}

abstract class CopyWith$Input$NestedDateTimeFilter<TRes> {
  factory CopyWith$Input$NestedDateTimeFilter(
    Input$NestedDateTimeFilter instance,
    TRes Function(Input$NestedDateTimeFilter) then,
  ) = _CopyWithImpl$Input$NestedDateTimeFilter;

  factory CopyWith$Input$NestedDateTimeFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$NestedDateTimeFilter;

  TRes call({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    Input$NestedDateTimeFilter? not,
  });
  CopyWith$Input$NestedDateTimeFilter<TRes> get not;
}

class _CopyWithImpl$Input$NestedDateTimeFilter<TRes>
    implements CopyWith$Input$NestedDateTimeFilter<TRes> {
  _CopyWithImpl$Input$NestedDateTimeFilter(
    this._instance,
    this._then,
  );

  final Input$NestedDateTimeFilter _instance;

  final TRes Function(Input$NestedDateTimeFilter) _then;

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
  }) =>
      _then(Input$NestedDateTimeFilter._({
        ..._instance._$data,
        if (equals != _undefined) 'equals': (equals as String?),
        if ($in != _undefined) 'in': ($in as List<String>?),
        if (notIn != _undefined) 'notIn': (notIn as List<String>?),
        if (lt != _undefined) 'lt': (lt as String?),
        if (lte != _undefined) 'lte': (lte as String?),
        if (gt != _undefined) 'gt': (gt as String?),
        if (gte != _undefined) 'gte': (gte as String?),
        if (not != _undefined) 'not': (not as Input$NestedDateTimeFilter?),
      }));
  CopyWith$Input$NestedDateTimeFilter<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$NestedDateTimeFilter.stub(_then(_instance))
        : CopyWith$Input$NestedDateTimeFilter(local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$NestedDateTimeFilter<TRes>
    implements CopyWith$Input$NestedDateTimeFilter<TRes> {
  _CopyWithStubImpl$Input$NestedDateTimeFilter(this._res);

  TRes _res;

  call({
    String? equals,
    List<String>? $in,
    List<String>? notIn,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    Input$NestedDateTimeFilter? not,
  }) =>
      _res;
  CopyWith$Input$NestedDateTimeFilter<TRes> get not =>
      CopyWith$Input$NestedDateTimeFilter.stub(_res);
}

class Input$FloatFilter {
  factory Input$FloatFilter({
    double? equals,
    List<double>? $in,
    List<double>? notIn,
    double? lt,
    double? lte,
    double? gt,
    double? gte,
    Input$NestedFloatFilter? not,
  }) =>
      Input$FloatFilter._({
        if (equals != null) r'equals': equals,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (not != null) r'not': not,
      });

  Input$FloatFilter._(this._$data);

  factory Input$FloatFilter.fromJson(Map<String, dynamic> data) {
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
          : Input$NestedFloatFilter.fromJson((l$not as Map<String, dynamic>));
    }
    return Input$FloatFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  double? get equals => (_$data['equals'] as double?);
  List<double>? get $in => (_$data['in'] as List<double>?);
  List<double>? get notIn => (_$data['notIn'] as List<double>?);
  double? get lt => (_$data['lt'] as double?);
  double? get lte => (_$data['lte'] as double?);
  double? get gt => (_$data['gt'] as double?);
  double? get gte => (_$data['gte'] as double?);
  Input$NestedFloatFilter? get not =>
      (_$data['not'] as Input$NestedFloatFilter?);
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
    return result$data;
  }

  CopyWith$Input$FloatFilter<Input$FloatFilter> get copyWith =>
      CopyWith$Input$FloatFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$FloatFilter) || runtimeType != other.runtimeType) {
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
    ]);
  }
}

abstract class CopyWith$Input$FloatFilter<TRes> {
  factory CopyWith$Input$FloatFilter(
    Input$FloatFilter instance,
    TRes Function(Input$FloatFilter) then,
  ) = _CopyWithImpl$Input$FloatFilter;

  factory CopyWith$Input$FloatFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$FloatFilter;

  TRes call({
    double? equals,
    List<double>? $in,
    List<double>? notIn,
    double? lt,
    double? lte,
    double? gt,
    double? gte,
    Input$NestedFloatFilter? not,
  });
  CopyWith$Input$NestedFloatFilter<TRes> get not;
}

class _CopyWithImpl$Input$FloatFilter<TRes>
    implements CopyWith$Input$FloatFilter<TRes> {
  _CopyWithImpl$Input$FloatFilter(
    this._instance,
    this._then,
  );

  final Input$FloatFilter _instance;

  final TRes Function(Input$FloatFilter) _then;

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
  }) =>
      _then(Input$FloatFilter._({
        ..._instance._$data,
        if (equals != _undefined) 'equals': (equals as double?),
        if ($in != _undefined) 'in': ($in as List<double>?),
        if (notIn != _undefined) 'notIn': (notIn as List<double>?),
        if (lt != _undefined) 'lt': (lt as double?),
        if (lte != _undefined) 'lte': (lte as double?),
        if (gt != _undefined) 'gt': (gt as double?),
        if (gte != _undefined) 'gte': (gte as double?),
        if (not != _undefined) 'not': (not as Input$NestedFloatFilter?),
      }));
  CopyWith$Input$NestedFloatFilter<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$NestedFloatFilter.stub(_then(_instance))
        : CopyWith$Input$NestedFloatFilter(local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$FloatFilter<TRes>
    implements CopyWith$Input$FloatFilter<TRes> {
  _CopyWithStubImpl$Input$FloatFilter(this._res);

  TRes _res;

  call({
    double? equals,
    List<double>? $in,
    List<double>? notIn,
    double? lt,
    double? lte,
    double? gt,
    double? gte,
    Input$NestedFloatFilter? not,
  }) =>
      _res;
  CopyWith$Input$NestedFloatFilter<TRes> get not =>
      CopyWith$Input$NestedFloatFilter.stub(_res);
}

class Input$NestedFloatFilter {
  factory Input$NestedFloatFilter({
    double? equals,
    List<double>? $in,
    List<double>? notIn,
    double? lt,
    double? lte,
    double? gt,
    double? gte,
    Input$NestedFloatFilter? not,
  }) =>
      Input$NestedFloatFilter._({
        if (equals != null) r'equals': equals,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (not != null) r'not': not,
      });

  Input$NestedFloatFilter._(this._$data);

  factory Input$NestedFloatFilter.fromJson(Map<String, dynamic> data) {
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
          : Input$NestedFloatFilter.fromJson((l$not as Map<String, dynamic>));
    }
    return Input$NestedFloatFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  double? get equals => (_$data['equals'] as double?);
  List<double>? get $in => (_$data['in'] as List<double>?);
  List<double>? get notIn => (_$data['notIn'] as List<double>?);
  double? get lt => (_$data['lt'] as double?);
  double? get lte => (_$data['lte'] as double?);
  double? get gt => (_$data['gt'] as double?);
  double? get gte => (_$data['gte'] as double?);
  Input$NestedFloatFilter? get not =>
      (_$data['not'] as Input$NestedFloatFilter?);
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
    return result$data;
  }

  CopyWith$Input$NestedFloatFilter<Input$NestedFloatFilter> get copyWith =>
      CopyWith$Input$NestedFloatFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$NestedFloatFilter) ||
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
    ]);
  }
}

abstract class CopyWith$Input$NestedFloatFilter<TRes> {
  factory CopyWith$Input$NestedFloatFilter(
    Input$NestedFloatFilter instance,
    TRes Function(Input$NestedFloatFilter) then,
  ) = _CopyWithImpl$Input$NestedFloatFilter;

  factory CopyWith$Input$NestedFloatFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$NestedFloatFilter;

  TRes call({
    double? equals,
    List<double>? $in,
    List<double>? notIn,
    double? lt,
    double? lte,
    double? gt,
    double? gte,
    Input$NestedFloatFilter? not,
  });
  CopyWith$Input$NestedFloatFilter<TRes> get not;
}

class _CopyWithImpl$Input$NestedFloatFilter<TRes>
    implements CopyWith$Input$NestedFloatFilter<TRes> {
  _CopyWithImpl$Input$NestedFloatFilter(
    this._instance,
    this._then,
  );

  final Input$NestedFloatFilter _instance;

  final TRes Function(Input$NestedFloatFilter) _then;

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
  }) =>
      _then(Input$NestedFloatFilter._({
        ..._instance._$data,
        if (equals != _undefined) 'equals': (equals as double?),
        if ($in != _undefined) 'in': ($in as List<double>?),
        if (notIn != _undefined) 'notIn': (notIn as List<double>?),
        if (lt != _undefined) 'lt': (lt as double?),
        if (lte != _undefined) 'lte': (lte as double?),
        if (gt != _undefined) 'gt': (gt as double?),
        if (gte != _undefined) 'gte': (gte as double?),
        if (not != _undefined) 'not': (not as Input$NestedFloatFilter?),
      }));
  CopyWith$Input$NestedFloatFilter<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$NestedFloatFilter.stub(_then(_instance))
        : CopyWith$Input$NestedFloatFilter(local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$NestedFloatFilter<TRes>
    implements CopyWith$Input$NestedFloatFilter<TRes> {
  _CopyWithStubImpl$Input$NestedFloatFilter(this._res);

  TRes _res;

  call({
    double? equals,
    List<double>? $in,
    List<double>? notIn,
    double? lt,
    double? lte,
    double? gt,
    double? gte,
    Input$NestedFloatFilter? not,
  }) =>
      _res;
  CopyWith$Input$NestedFloatFilter<TRes> get not =>
      CopyWith$Input$NestedFloatFilter.stub(_res);
}

class Input$SellersRelationFilter {
  factory Input$SellersRelationFilter({
    Input$SellersWhereInput? $is,
    Input$SellersWhereInput? isNot,
  }) =>
      Input$SellersRelationFilter._({
        if ($is != null) r'is': $is,
        if (isNot != null) r'isNot': isNot,
      });

  Input$SellersRelationFilter._(this._$data);

  factory Input$SellersRelationFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('is')) {
      final l$$is = data['is'];
      result$data['is'] = l$$is == null
          ? null
          : Input$SellersWhereInput.fromJson((l$$is as Map<String, dynamic>));
    }
    if (data.containsKey('isNot')) {
      final l$isNot = data['isNot'];
      result$data['isNot'] = l$isNot == null
          ? null
          : Input$SellersWhereInput.fromJson((l$isNot as Map<String, dynamic>));
    }
    return Input$SellersRelationFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SellersWhereInput? get $is =>
      (_$data['is'] as Input$SellersWhereInput?);
  Input$SellersWhereInput? get isNot =>
      (_$data['isNot'] as Input$SellersWhereInput?);
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

  CopyWith$Input$SellersRelationFilter<Input$SellersRelationFilter>
      get copyWith => CopyWith$Input$SellersRelationFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SellersRelationFilter) ||
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

abstract class CopyWith$Input$SellersRelationFilter<TRes> {
  factory CopyWith$Input$SellersRelationFilter(
    Input$SellersRelationFilter instance,
    TRes Function(Input$SellersRelationFilter) then,
  ) = _CopyWithImpl$Input$SellersRelationFilter;

  factory CopyWith$Input$SellersRelationFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$SellersRelationFilter;

  TRes call({
    Input$SellersWhereInput? $is,
    Input$SellersWhereInput? isNot,
  });
  CopyWith$Input$SellersWhereInput<TRes> get $is;
  CopyWith$Input$SellersWhereInput<TRes> get isNot;
}

class _CopyWithImpl$Input$SellersRelationFilter<TRes>
    implements CopyWith$Input$SellersRelationFilter<TRes> {
  _CopyWithImpl$Input$SellersRelationFilter(
    this._instance,
    this._then,
  );

  final Input$SellersRelationFilter _instance;

  final TRes Function(Input$SellersRelationFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $is = _undefined,
    Object? isNot = _undefined,
  }) =>
      _then(Input$SellersRelationFilter._({
        ..._instance._$data,
        if ($is != _undefined) 'is': ($is as Input$SellersWhereInput?),
        if (isNot != _undefined) 'isNot': (isNot as Input$SellersWhereInput?),
      }));
  CopyWith$Input$SellersWhereInput<TRes> get $is {
    final local$$is = _instance.$is;
    return local$$is == null
        ? CopyWith$Input$SellersWhereInput.stub(_then(_instance))
        : CopyWith$Input$SellersWhereInput(local$$is, (e) => call($is: e));
  }

  CopyWith$Input$SellersWhereInput<TRes> get isNot {
    final local$isNot = _instance.isNot;
    return local$isNot == null
        ? CopyWith$Input$SellersWhereInput.stub(_then(_instance))
        : CopyWith$Input$SellersWhereInput(local$isNot, (e) => call(isNot: e));
  }
}

class _CopyWithStubImpl$Input$SellersRelationFilter<TRes>
    implements CopyWith$Input$SellersRelationFilter<TRes> {
  _CopyWithStubImpl$Input$SellersRelationFilter(this._res);

  TRes _res;

  call({
    Input$SellersWhereInput? $is,
    Input$SellersWhereInput? isNot,
  }) =>
      _res;
  CopyWith$Input$SellersWhereInput<TRes> get $is =>
      CopyWith$Input$SellersWhereInput.stub(_res);
  CopyWith$Input$SellersWhereInput<TRes> get isNot =>
      CopyWith$Input$SellersWhereInput.stub(_res);
}

class Input$SellersWhereInput {
  factory Input$SellersWhereInput({
    List<Input$SellersWhereInput>? AND,
    List<Input$SellersWhereInput>? OR,
    List<Input$SellersWhereInput>? NOT,
    Input$IntFilter? seller_id,
    Input$StringFilter? seller_name,
    Input$StringFilter? seller_phone,
    Input$StringFilter? picture,
    Input$TransactionsListRelationFilter? Transactions,
  }) =>
      Input$SellersWhereInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (seller_id != null) r'seller_id': seller_id,
        if (seller_name != null) r'seller_name': seller_name,
        if (seller_phone != null) r'seller_phone': seller_phone,
        if (picture != null) r'picture': picture,
        if (Transactions != null) r'Transactions': Transactions,
      });

  Input$SellersWhereInput._(this._$data);

  factory Input$SellersWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) =>
              Input$SellersWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) =>
              Input$SellersWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) =>
              Input$SellersWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('seller_id')) {
      final l$seller_id = data['seller_id'];
      result$data['seller_id'] = l$seller_id == null
          ? null
          : Input$IntFilter.fromJson((l$seller_id as Map<String, dynamic>));
    }
    if (data.containsKey('seller_name')) {
      final l$seller_name = data['seller_name'];
      result$data['seller_name'] = l$seller_name == null
          ? null
          : Input$StringFilter.fromJson(
              (l$seller_name as Map<String, dynamic>));
    }
    if (data.containsKey('seller_phone')) {
      final l$seller_phone = data['seller_phone'];
      result$data['seller_phone'] = l$seller_phone == null
          ? null
          : Input$StringFilter.fromJson(
              (l$seller_phone as Map<String, dynamic>));
    }
    if (data.containsKey('picture')) {
      final l$picture = data['picture'];
      result$data['picture'] = l$picture == null
          ? null
          : Input$StringFilter.fromJson((l$picture as Map<String, dynamic>));
    }
    if (data.containsKey('Transactions')) {
      final l$Transactions = data['Transactions'];
      result$data['Transactions'] = l$Transactions == null
          ? null
          : Input$TransactionsListRelationFilter.fromJson(
              (l$Transactions as Map<String, dynamic>));
    }
    return Input$SellersWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$SellersWhereInput>? get AND =>
      (_$data['AND'] as List<Input$SellersWhereInput>?);
  List<Input$SellersWhereInput>? get OR =>
      (_$data['OR'] as List<Input$SellersWhereInput>?);
  List<Input$SellersWhereInput>? get NOT =>
      (_$data['NOT'] as List<Input$SellersWhereInput>?);
  Input$IntFilter? get seller_id => (_$data['seller_id'] as Input$IntFilter?);
  Input$StringFilter? get seller_name =>
      (_$data['seller_name'] as Input$StringFilter?);
  Input$StringFilter? get seller_phone =>
      (_$data['seller_phone'] as Input$StringFilter?);
  Input$StringFilter? get picture => (_$data['picture'] as Input$StringFilter?);
  Input$TransactionsListRelationFilter? get Transactions =>
      (_$data['Transactions'] as Input$TransactionsListRelationFilter?);
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
    if (_$data.containsKey('Transactions')) {
      final l$Transactions = Transactions;
      result$data['Transactions'] = l$Transactions?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$SellersWhereInput<Input$SellersWhereInput> get copyWith =>
      CopyWith$Input$SellersWhereInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SellersWhereInput) ||
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
    final l$AND = AND;
    final l$OR = OR;
    final l$NOT = NOT;
    final l$seller_id = seller_id;
    final l$seller_name = seller_name;
    final l$seller_phone = seller_phone;
    final l$picture = picture;
    final l$Transactions = Transactions;
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
      _$data.containsKey('Transactions') ? l$Transactions : const {},
    ]);
  }
}

abstract class CopyWith$Input$SellersWhereInput<TRes> {
  factory CopyWith$Input$SellersWhereInput(
    Input$SellersWhereInput instance,
    TRes Function(Input$SellersWhereInput) then,
  ) = _CopyWithImpl$Input$SellersWhereInput;

  factory CopyWith$Input$SellersWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SellersWhereInput;

  TRes call({
    List<Input$SellersWhereInput>? AND,
    List<Input$SellersWhereInput>? OR,
    List<Input$SellersWhereInput>? NOT,
    Input$IntFilter? seller_id,
    Input$StringFilter? seller_name,
    Input$StringFilter? seller_phone,
    Input$StringFilter? picture,
    Input$TransactionsListRelationFilter? Transactions,
  });
  TRes AND(
      Iterable<Input$SellersWhereInput>? Function(
              Iterable<
                  CopyWith$Input$SellersWhereInput<Input$SellersWhereInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$SellersWhereInput>? Function(
              Iterable<
                  CopyWith$Input$SellersWhereInput<Input$SellersWhereInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$SellersWhereInput>? Function(
              Iterable<
                  CopyWith$Input$SellersWhereInput<Input$SellersWhereInput>>?)
          _fn);
  CopyWith$Input$IntFilter<TRes> get seller_id;
  CopyWith$Input$StringFilter<TRes> get seller_name;
  CopyWith$Input$StringFilter<TRes> get seller_phone;
  CopyWith$Input$StringFilter<TRes> get picture;
  CopyWith$Input$TransactionsListRelationFilter<TRes> get Transactions;
}

class _CopyWithImpl$Input$SellersWhereInput<TRes>
    implements CopyWith$Input$SellersWhereInput<TRes> {
  _CopyWithImpl$Input$SellersWhereInput(
    this._instance,
    this._then,
  );

  final Input$SellersWhereInput _instance;

  final TRes Function(Input$SellersWhereInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? seller_id = _undefined,
    Object? seller_name = _undefined,
    Object? seller_phone = _undefined,
    Object? picture = _undefined,
    Object? Transactions = _undefined,
  }) =>
      _then(Input$SellersWhereInput._({
        ..._instance._$data,
        if (AND != _undefined) 'AND': (AND as List<Input$SellersWhereInput>?),
        if (OR != _undefined) 'OR': (OR as List<Input$SellersWhereInput>?),
        if (NOT != _undefined) 'NOT': (NOT as List<Input$SellersWhereInput>?),
        if (seller_id != _undefined)
          'seller_id': (seller_id as Input$IntFilter?),
        if (seller_name != _undefined)
          'seller_name': (seller_name as Input$StringFilter?),
        if (seller_phone != _undefined)
          'seller_phone': (seller_phone as Input$StringFilter?),
        if (picture != _undefined) 'picture': (picture as Input$StringFilter?),
        if (Transactions != _undefined)
          'Transactions':
              (Transactions as Input$TransactionsListRelationFilter?),
      }));
  TRes AND(
          Iterable<Input$SellersWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$SellersWhereInput<
                          Input$SellersWhereInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND?.map((e) => CopyWith$Input$SellersWhereInput(
                e,
                (i) => i,
              )))?.toList());
  TRes OR(
          Iterable<Input$SellersWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$SellersWhereInput<
                          Input$SellersWhereInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR?.map((e) => CopyWith$Input$SellersWhereInput(
                e,
                (i) => i,
              )))?.toList());
  TRes NOT(
          Iterable<Input$SellersWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$SellersWhereInput<
                          Input$SellersWhereInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT?.map((e) => CopyWith$Input$SellersWhereInput(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Input$IntFilter<TRes> get seller_id {
    final local$seller_id = _instance.seller_id;
    return local$seller_id == null
        ? CopyWith$Input$IntFilter.stub(_then(_instance))
        : CopyWith$Input$IntFilter(local$seller_id, (e) => call(seller_id: e));
  }

  CopyWith$Input$StringFilter<TRes> get seller_name {
    final local$seller_name = _instance.seller_name;
    return local$seller_name == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(
            local$seller_name, (e) => call(seller_name: e));
  }

  CopyWith$Input$StringFilter<TRes> get seller_phone {
    final local$seller_phone = _instance.seller_phone;
    return local$seller_phone == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(
            local$seller_phone, (e) => call(seller_phone: e));
  }

  CopyWith$Input$StringFilter<TRes> get picture {
    final local$picture = _instance.picture;
    return local$picture == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$picture, (e) => call(picture: e));
  }

  CopyWith$Input$TransactionsListRelationFilter<TRes> get Transactions {
    final local$Transactions = _instance.Transactions;
    return local$Transactions == null
        ? CopyWith$Input$TransactionsListRelationFilter.stub(_then(_instance))
        : CopyWith$Input$TransactionsListRelationFilter(
            local$Transactions, (e) => call(Transactions: e));
  }
}

class _CopyWithStubImpl$Input$SellersWhereInput<TRes>
    implements CopyWith$Input$SellersWhereInput<TRes> {
  _CopyWithStubImpl$Input$SellersWhereInput(this._res);

  TRes _res;

  call({
    List<Input$SellersWhereInput>? AND,
    List<Input$SellersWhereInput>? OR,
    List<Input$SellersWhereInput>? NOT,
    Input$IntFilter? seller_id,
    Input$StringFilter? seller_name,
    Input$StringFilter? seller_phone,
    Input$StringFilter? picture,
    Input$TransactionsListRelationFilter? Transactions,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
  CopyWith$Input$IntFilter<TRes> get seller_id =>
      CopyWith$Input$IntFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get seller_name =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get seller_phone =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get picture =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$TransactionsListRelationFilter<TRes> get Transactions =>
      CopyWith$Input$TransactionsListRelationFilter.stub(_res);
}

class Input$CityRelationFilter {
  factory Input$CityRelationFilter({
    Input$CityWhereInput? $is,
    Input$CityWhereInput? isNot,
  }) =>
      Input$CityRelationFilter._({
        if ($is != null) r'is': $is,
        if (isNot != null) r'isNot': isNot,
      });

  Input$CityRelationFilter._(this._$data);

  factory Input$CityRelationFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('is')) {
      final l$$is = data['is'];
      result$data['is'] = l$$is == null
          ? null
          : Input$CityWhereInput.fromJson((l$$is as Map<String, dynamic>));
    }
    if (data.containsKey('isNot')) {
      final l$isNot = data['isNot'];
      result$data['isNot'] = l$isNot == null
          ? null
          : Input$CityWhereInput.fromJson((l$isNot as Map<String, dynamic>));
    }
    return Input$CityRelationFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CityWhereInput? get $is => (_$data['is'] as Input$CityWhereInput?);
  Input$CityWhereInput? get isNot => (_$data['isNot'] as Input$CityWhereInput?);
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

  CopyWith$Input$CityRelationFilter<Input$CityRelationFilter> get copyWith =>
      CopyWith$Input$CityRelationFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CityRelationFilter) ||
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

abstract class CopyWith$Input$CityRelationFilter<TRes> {
  factory CopyWith$Input$CityRelationFilter(
    Input$CityRelationFilter instance,
    TRes Function(Input$CityRelationFilter) then,
  ) = _CopyWithImpl$Input$CityRelationFilter;

  factory CopyWith$Input$CityRelationFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$CityRelationFilter;

  TRes call({
    Input$CityWhereInput? $is,
    Input$CityWhereInput? isNot,
  });
  CopyWith$Input$CityWhereInput<TRes> get $is;
  CopyWith$Input$CityWhereInput<TRes> get isNot;
}

class _CopyWithImpl$Input$CityRelationFilter<TRes>
    implements CopyWith$Input$CityRelationFilter<TRes> {
  _CopyWithImpl$Input$CityRelationFilter(
    this._instance,
    this._then,
  );

  final Input$CityRelationFilter _instance;

  final TRes Function(Input$CityRelationFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $is = _undefined,
    Object? isNot = _undefined,
  }) =>
      _then(Input$CityRelationFilter._({
        ..._instance._$data,
        if ($is != _undefined) 'is': ($is as Input$CityWhereInput?),
        if (isNot != _undefined) 'isNot': (isNot as Input$CityWhereInput?),
      }));
  CopyWith$Input$CityWhereInput<TRes> get $is {
    final local$$is = _instance.$is;
    return local$$is == null
        ? CopyWith$Input$CityWhereInput.stub(_then(_instance))
        : CopyWith$Input$CityWhereInput(local$$is, (e) => call($is: e));
  }

  CopyWith$Input$CityWhereInput<TRes> get isNot {
    final local$isNot = _instance.isNot;
    return local$isNot == null
        ? CopyWith$Input$CityWhereInput.stub(_then(_instance))
        : CopyWith$Input$CityWhereInput(local$isNot, (e) => call(isNot: e));
  }
}

class _CopyWithStubImpl$Input$CityRelationFilter<TRes>
    implements CopyWith$Input$CityRelationFilter<TRes> {
  _CopyWithStubImpl$Input$CityRelationFilter(this._res);

  TRes _res;

  call({
    Input$CityWhereInput? $is,
    Input$CityWhereInput? isNot,
  }) =>
      _res;
  CopyWith$Input$CityWhereInput<TRes> get $is =>
      CopyWith$Input$CityWhereInput.stub(_res);
  CopyWith$Input$CityWhereInput<TRes> get isNot =>
      CopyWith$Input$CityWhereInput.stub(_res);
}

class Input$TransactionTypesRelationFilter {
  factory Input$TransactionTypesRelationFilter({
    Input$TransactionTypesWhereInput? $is,
    Input$TransactionTypesWhereInput? isNot,
  }) =>
      Input$TransactionTypesRelationFilter._({
        if ($is != null) r'is': $is,
        if (isNot != null) r'isNot': isNot,
      });

  Input$TransactionTypesRelationFilter._(this._$data);

  factory Input$TransactionTypesRelationFilter.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('is')) {
      final l$$is = data['is'];
      result$data['is'] = l$$is == null
          ? null
          : Input$TransactionTypesWhereInput.fromJson(
              (l$$is as Map<String, dynamic>));
    }
    if (data.containsKey('isNot')) {
      final l$isNot = data['isNot'];
      result$data['isNot'] = l$isNot == null
          ? null
          : Input$TransactionTypesWhereInput.fromJson(
              (l$isNot as Map<String, dynamic>));
    }
    return Input$TransactionTypesRelationFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionTypesWhereInput? get $is =>
      (_$data['is'] as Input$TransactionTypesWhereInput?);
  Input$TransactionTypesWhereInput? get isNot =>
      (_$data['isNot'] as Input$TransactionTypesWhereInput?);
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

  CopyWith$Input$TransactionTypesRelationFilter<
          Input$TransactionTypesRelationFilter>
      get copyWith => CopyWith$Input$TransactionTypesRelationFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionTypesRelationFilter) ||
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

abstract class CopyWith$Input$TransactionTypesRelationFilter<TRes> {
  factory CopyWith$Input$TransactionTypesRelationFilter(
    Input$TransactionTypesRelationFilter instance,
    TRes Function(Input$TransactionTypesRelationFilter) then,
  ) = _CopyWithImpl$Input$TransactionTypesRelationFilter;

  factory CopyWith$Input$TransactionTypesRelationFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionTypesRelationFilter;

  TRes call({
    Input$TransactionTypesWhereInput? $is,
    Input$TransactionTypesWhereInput? isNot,
  });
  CopyWith$Input$TransactionTypesWhereInput<TRes> get $is;
  CopyWith$Input$TransactionTypesWhereInput<TRes> get isNot;
}

class _CopyWithImpl$Input$TransactionTypesRelationFilter<TRes>
    implements CopyWith$Input$TransactionTypesRelationFilter<TRes> {
  _CopyWithImpl$Input$TransactionTypesRelationFilter(
    this._instance,
    this._then,
  );

  final Input$TransactionTypesRelationFilter _instance;

  final TRes Function(Input$TransactionTypesRelationFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $is = _undefined,
    Object? isNot = _undefined,
  }) =>
      _then(Input$TransactionTypesRelationFilter._({
        ..._instance._$data,
        if ($is != _undefined) 'is': ($is as Input$TransactionTypesWhereInput?),
        if (isNot != _undefined)
          'isNot': (isNot as Input$TransactionTypesWhereInput?),
      }));
  CopyWith$Input$TransactionTypesWhereInput<TRes> get $is {
    final local$$is = _instance.$is;
    return local$$is == null
        ? CopyWith$Input$TransactionTypesWhereInput.stub(_then(_instance))
        : CopyWith$Input$TransactionTypesWhereInput(
            local$$is, (e) => call($is: e));
  }

  CopyWith$Input$TransactionTypesWhereInput<TRes> get isNot {
    final local$isNot = _instance.isNot;
    return local$isNot == null
        ? CopyWith$Input$TransactionTypesWhereInput.stub(_then(_instance))
        : CopyWith$Input$TransactionTypesWhereInput(
            local$isNot, (e) => call(isNot: e));
  }
}

class _CopyWithStubImpl$Input$TransactionTypesRelationFilter<TRes>
    implements CopyWith$Input$TransactionTypesRelationFilter<TRes> {
  _CopyWithStubImpl$Input$TransactionTypesRelationFilter(this._res);

  TRes _res;

  call({
    Input$TransactionTypesWhereInput? $is,
    Input$TransactionTypesWhereInput? isNot,
  }) =>
      _res;
  CopyWith$Input$TransactionTypesWhereInput<TRes> get $is =>
      CopyWith$Input$TransactionTypesWhereInput.stub(_res);
  CopyWith$Input$TransactionTypesWhereInput<TRes> get isNot =>
      CopyWith$Input$TransactionTypesWhereInput.stub(_res);
}

class Input$TransactionTypesWhereInput {
  factory Input$TransactionTypesWhereInput({
    List<Input$TransactionTypesWhereInput>? AND,
    List<Input$TransactionTypesWhereInput>? OR,
    List<Input$TransactionTypesWhereInput>? NOT,
    Input$IntFilter? transaction_type_id,
    Input$StringFilter? type_name,
    Input$StringFilter? description,
    Input$TransactionsListRelationFilter? Transactions,
  }) =>
      Input$TransactionTypesWhereInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (transaction_type_id != null)
          r'transaction_type_id': transaction_type_id,
        if (type_name != null) r'type_name': type_name,
        if (description != null) r'description': description,
        if (Transactions != null) r'Transactions': Transactions,
      });

  Input$TransactionTypesWhereInput._(this._$data);

  factory Input$TransactionTypesWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) => Input$TransactionTypesWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) => Input$TransactionTypesWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) => Input$TransactionTypesWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = data['transaction_type_id'];
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : Input$IntFilter.fromJson(
              (l$transaction_type_id as Map<String, dynamic>));
    }
    if (data.containsKey('type_name')) {
      final l$type_name = data['type_name'];
      result$data['type_name'] = l$type_name == null
          ? null
          : Input$StringFilter.fromJson((l$type_name as Map<String, dynamic>));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : Input$StringFilter.fromJson(
              (l$description as Map<String, dynamic>));
    }
    if (data.containsKey('Transactions')) {
      final l$Transactions = data['Transactions'];
      result$data['Transactions'] = l$Transactions == null
          ? null
          : Input$TransactionsListRelationFilter.fromJson(
              (l$Transactions as Map<String, dynamic>));
    }
    return Input$TransactionTypesWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TransactionTypesWhereInput>? get AND =>
      (_$data['AND'] as List<Input$TransactionTypesWhereInput>?);
  List<Input$TransactionTypesWhereInput>? get OR =>
      (_$data['OR'] as List<Input$TransactionTypesWhereInput>?);
  List<Input$TransactionTypesWhereInput>? get NOT =>
      (_$data['NOT'] as List<Input$TransactionTypesWhereInput>?);
  Input$IntFilter? get transaction_type_id =>
      (_$data['transaction_type_id'] as Input$IntFilter?);
  Input$StringFilter? get type_name =>
      (_$data['type_name'] as Input$StringFilter?);
  Input$StringFilter? get description =>
      (_$data['description'] as Input$StringFilter?);
  Input$TransactionsListRelationFilter? get Transactions =>
      (_$data['Transactions'] as Input$TransactionsListRelationFilter?);
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
    if (_$data.containsKey('Transactions')) {
      final l$Transactions = Transactions;
      result$data['Transactions'] = l$Transactions?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionTypesWhereInput<Input$TransactionTypesWhereInput>
      get copyWith => CopyWith$Input$TransactionTypesWhereInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionTypesWhereInput) ||
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
    final l$AND = AND;
    final l$OR = OR;
    final l$NOT = NOT;
    final l$transaction_type_id = transaction_type_id;
    final l$type_name = type_name;
    final l$description = description;
    final l$Transactions = Transactions;
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
      _$data.containsKey('Transactions') ? l$Transactions : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionTypesWhereInput<TRes> {
  factory CopyWith$Input$TransactionTypesWhereInput(
    Input$TransactionTypesWhereInput instance,
    TRes Function(Input$TransactionTypesWhereInput) then,
  ) = _CopyWithImpl$Input$TransactionTypesWhereInput;

  factory CopyWith$Input$TransactionTypesWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionTypesWhereInput;

  TRes call({
    List<Input$TransactionTypesWhereInput>? AND,
    List<Input$TransactionTypesWhereInput>? OR,
    List<Input$TransactionTypesWhereInput>? NOT,
    Input$IntFilter? transaction_type_id,
    Input$StringFilter? type_name,
    Input$StringFilter? description,
    Input$TransactionsListRelationFilter? Transactions,
  });
  TRes AND(
      Iterable<Input$TransactionTypesWhereInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionTypesWhereInput<
                      Input$TransactionTypesWhereInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$TransactionTypesWhereInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionTypesWhereInput<
                      Input$TransactionTypesWhereInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$TransactionTypesWhereInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionTypesWhereInput<
                      Input$TransactionTypesWhereInput>>?)
          _fn);
  CopyWith$Input$IntFilter<TRes> get transaction_type_id;
  CopyWith$Input$StringFilter<TRes> get type_name;
  CopyWith$Input$StringFilter<TRes> get description;
  CopyWith$Input$TransactionsListRelationFilter<TRes> get Transactions;
}

class _CopyWithImpl$Input$TransactionTypesWhereInput<TRes>
    implements CopyWith$Input$TransactionTypesWhereInput<TRes> {
  _CopyWithImpl$Input$TransactionTypesWhereInput(
    this._instance,
    this._then,
  );

  final Input$TransactionTypesWhereInput _instance;

  final TRes Function(Input$TransactionTypesWhereInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? transaction_type_id = _undefined,
    Object? type_name = _undefined,
    Object? description = _undefined,
    Object? Transactions = _undefined,
  }) =>
      _then(Input$TransactionTypesWhereInput._({
        ..._instance._$data,
        if (AND != _undefined)
          'AND': (AND as List<Input$TransactionTypesWhereInput>?),
        if (OR != _undefined)
          'OR': (OR as List<Input$TransactionTypesWhereInput>?),
        if (NOT != _undefined)
          'NOT': (NOT as List<Input$TransactionTypesWhereInput>?),
        if (transaction_type_id != _undefined)
          'transaction_type_id': (transaction_type_id as Input$IntFilter?),
        if (type_name != _undefined)
          'type_name': (type_name as Input$StringFilter?),
        if (description != _undefined)
          'description': (description as Input$StringFilter?),
        if (Transactions != _undefined)
          'Transactions':
              (Transactions as Input$TransactionsListRelationFilter?),
      }));
  TRes AND(
          Iterable<Input$TransactionTypesWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionTypesWhereInput<
                          Input$TransactionTypesWhereInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND
              ?.map((e) => CopyWith$Input$TransactionTypesWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes OR(
          Iterable<Input$TransactionTypesWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionTypesWhereInput<
                          Input$TransactionTypesWhereInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR
              ?.map((e) => CopyWith$Input$TransactionTypesWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes NOT(
          Iterable<Input$TransactionTypesWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionTypesWhereInput<
                          Input$TransactionTypesWhereInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT
              ?.map((e) => CopyWith$Input$TransactionTypesWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$IntFilter<TRes> get transaction_type_id {
    final local$transaction_type_id = _instance.transaction_type_id;
    return local$transaction_type_id == null
        ? CopyWith$Input$IntFilter.stub(_then(_instance))
        : CopyWith$Input$IntFilter(
            local$transaction_type_id, (e) => call(transaction_type_id: e));
  }

  CopyWith$Input$StringFilter<TRes> get type_name {
    final local$type_name = _instance.type_name;
    return local$type_name == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(
            local$type_name, (e) => call(type_name: e));
  }

  CopyWith$Input$StringFilter<TRes> get description {
    final local$description = _instance.description;
    return local$description == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(
            local$description, (e) => call(description: e));
  }

  CopyWith$Input$TransactionsListRelationFilter<TRes> get Transactions {
    final local$Transactions = _instance.Transactions;
    return local$Transactions == null
        ? CopyWith$Input$TransactionsListRelationFilter.stub(_then(_instance))
        : CopyWith$Input$TransactionsListRelationFilter(
            local$Transactions, (e) => call(Transactions: e));
  }
}

class _CopyWithStubImpl$Input$TransactionTypesWhereInput<TRes>
    implements CopyWith$Input$TransactionTypesWhereInput<TRes> {
  _CopyWithStubImpl$Input$TransactionTypesWhereInput(this._res);

  TRes _res;

  call({
    List<Input$TransactionTypesWhereInput>? AND,
    List<Input$TransactionTypesWhereInput>? OR,
    List<Input$TransactionTypesWhereInput>? NOT,
    Input$IntFilter? transaction_type_id,
    Input$StringFilter? type_name,
    Input$StringFilter? description,
    Input$TransactionsListRelationFilter? Transactions,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
  CopyWith$Input$IntFilter<TRes> get transaction_type_id =>
      CopyWith$Input$IntFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get type_name =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get description =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$TransactionsListRelationFilter<TRes> get Transactions =>
      CopyWith$Input$TransactionsListRelationFilter.stub(_res);
}

class Input$TransactionStatusRelationFilter {
  factory Input$TransactionStatusRelationFilter({
    Input$TransactionStatusWhereInput? $is,
    Input$TransactionStatusWhereInput? isNot,
  }) =>
      Input$TransactionStatusRelationFilter._({
        if ($is != null) r'is': $is,
        if (isNot != null) r'isNot': isNot,
      });

  Input$TransactionStatusRelationFilter._(this._$data);

  factory Input$TransactionStatusRelationFilter.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('is')) {
      final l$$is = data['is'];
      result$data['is'] = l$$is == null
          ? null
          : Input$TransactionStatusWhereInput.fromJson(
              (l$$is as Map<String, dynamic>));
    }
    if (data.containsKey('isNot')) {
      final l$isNot = data['isNot'];
      result$data['isNot'] = l$isNot == null
          ? null
          : Input$TransactionStatusWhereInput.fromJson(
              (l$isNot as Map<String, dynamic>));
    }
    return Input$TransactionStatusRelationFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionStatusWhereInput? get $is =>
      (_$data['is'] as Input$TransactionStatusWhereInput?);
  Input$TransactionStatusWhereInput? get isNot =>
      (_$data['isNot'] as Input$TransactionStatusWhereInput?);
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

  CopyWith$Input$TransactionStatusRelationFilter<
          Input$TransactionStatusRelationFilter>
      get copyWith => CopyWith$Input$TransactionStatusRelationFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionStatusRelationFilter) ||
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

abstract class CopyWith$Input$TransactionStatusRelationFilter<TRes> {
  factory CopyWith$Input$TransactionStatusRelationFilter(
    Input$TransactionStatusRelationFilter instance,
    TRes Function(Input$TransactionStatusRelationFilter) then,
  ) = _CopyWithImpl$Input$TransactionStatusRelationFilter;

  factory CopyWith$Input$TransactionStatusRelationFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionStatusRelationFilter;

  TRes call({
    Input$TransactionStatusWhereInput? $is,
    Input$TransactionStatusWhereInput? isNot,
  });
  CopyWith$Input$TransactionStatusWhereInput<TRes> get $is;
  CopyWith$Input$TransactionStatusWhereInput<TRes> get isNot;
}

class _CopyWithImpl$Input$TransactionStatusRelationFilter<TRes>
    implements CopyWith$Input$TransactionStatusRelationFilter<TRes> {
  _CopyWithImpl$Input$TransactionStatusRelationFilter(
    this._instance,
    this._then,
  );

  final Input$TransactionStatusRelationFilter _instance;

  final TRes Function(Input$TransactionStatusRelationFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $is = _undefined,
    Object? isNot = _undefined,
  }) =>
      _then(Input$TransactionStatusRelationFilter._({
        ..._instance._$data,
        if ($is != _undefined)
          'is': ($is as Input$TransactionStatusWhereInput?),
        if (isNot != _undefined)
          'isNot': (isNot as Input$TransactionStatusWhereInput?),
      }));
  CopyWith$Input$TransactionStatusWhereInput<TRes> get $is {
    final local$$is = _instance.$is;
    return local$$is == null
        ? CopyWith$Input$TransactionStatusWhereInput.stub(_then(_instance))
        : CopyWith$Input$TransactionStatusWhereInput(
            local$$is, (e) => call($is: e));
  }

  CopyWith$Input$TransactionStatusWhereInput<TRes> get isNot {
    final local$isNot = _instance.isNot;
    return local$isNot == null
        ? CopyWith$Input$TransactionStatusWhereInput.stub(_then(_instance))
        : CopyWith$Input$TransactionStatusWhereInput(
            local$isNot, (e) => call(isNot: e));
  }
}

class _CopyWithStubImpl$Input$TransactionStatusRelationFilter<TRes>
    implements CopyWith$Input$TransactionStatusRelationFilter<TRes> {
  _CopyWithStubImpl$Input$TransactionStatusRelationFilter(this._res);

  TRes _res;

  call({
    Input$TransactionStatusWhereInput? $is,
    Input$TransactionStatusWhereInput? isNot,
  }) =>
      _res;
  CopyWith$Input$TransactionStatusWhereInput<TRes> get $is =>
      CopyWith$Input$TransactionStatusWhereInput.stub(_res);
  CopyWith$Input$TransactionStatusWhereInput<TRes> get isNot =>
      CopyWith$Input$TransactionStatusWhereInput.stub(_res);
}

class Input$TransactionStatusWhereInput {
  factory Input$TransactionStatusWhereInput({
    List<Input$TransactionStatusWhereInput>? AND,
    List<Input$TransactionStatusWhereInput>? OR,
    List<Input$TransactionStatusWhereInput>? NOT,
    Input$IntFilter? transaction_status_id,
    Input$StringFilter? name,
    Input$StringFilter? description,
    Input$TransactionsListRelationFilter? Transactions,
  }) =>
      Input$TransactionStatusWhereInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (transaction_status_id != null)
          r'transaction_status_id': transaction_status_id,
        if (name != null) r'name': name,
        if (description != null) r'description': description,
        if (Transactions != null) r'Transactions': Transactions,
      });

  Input$TransactionStatusWhereInput._(this._$data);

  factory Input$TransactionStatusWhereInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) => Input$TransactionStatusWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) => Input$TransactionStatusWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) => Input$TransactionStatusWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('transaction_status_id')) {
      final l$transaction_status_id = data['transaction_status_id'];
      result$data['transaction_status_id'] = l$transaction_status_id == null
          ? null
          : Input$IntFilter.fromJson(
              (l$transaction_status_id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringFilter.fromJson((l$name as Map<String, dynamic>));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : Input$StringFilter.fromJson(
              (l$description as Map<String, dynamic>));
    }
    if (data.containsKey('Transactions')) {
      final l$Transactions = data['Transactions'];
      result$data['Transactions'] = l$Transactions == null
          ? null
          : Input$TransactionsListRelationFilter.fromJson(
              (l$Transactions as Map<String, dynamic>));
    }
    return Input$TransactionStatusWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TransactionStatusWhereInput>? get AND =>
      (_$data['AND'] as List<Input$TransactionStatusWhereInput>?);
  List<Input$TransactionStatusWhereInput>? get OR =>
      (_$data['OR'] as List<Input$TransactionStatusWhereInput>?);
  List<Input$TransactionStatusWhereInput>? get NOT =>
      (_$data['NOT'] as List<Input$TransactionStatusWhereInput>?);
  Input$IntFilter? get transaction_status_id =>
      (_$data['transaction_status_id'] as Input$IntFilter?);
  Input$StringFilter? get name => (_$data['name'] as Input$StringFilter?);
  Input$StringFilter? get description =>
      (_$data['description'] as Input$StringFilter?);
  Input$TransactionsListRelationFilter? get Transactions =>
      (_$data['Transactions'] as Input$TransactionsListRelationFilter?);
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
    if (_$data.containsKey('Transactions')) {
      final l$Transactions = Transactions;
      result$data['Transactions'] = l$Transactions?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionStatusWhereInput<Input$TransactionStatusWhereInput>
      get copyWith => CopyWith$Input$TransactionStatusWhereInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionStatusWhereInput) ||
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
    final l$AND = AND;
    final l$OR = OR;
    final l$NOT = NOT;
    final l$transaction_status_id = transaction_status_id;
    final l$name = name;
    final l$description = description;
    final l$Transactions = Transactions;
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
      _$data.containsKey('Transactions') ? l$Transactions : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionStatusWhereInput<TRes> {
  factory CopyWith$Input$TransactionStatusWhereInput(
    Input$TransactionStatusWhereInput instance,
    TRes Function(Input$TransactionStatusWhereInput) then,
  ) = _CopyWithImpl$Input$TransactionStatusWhereInput;

  factory CopyWith$Input$TransactionStatusWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionStatusWhereInput;

  TRes call({
    List<Input$TransactionStatusWhereInput>? AND,
    List<Input$TransactionStatusWhereInput>? OR,
    List<Input$TransactionStatusWhereInput>? NOT,
    Input$IntFilter? transaction_status_id,
    Input$StringFilter? name,
    Input$StringFilter? description,
    Input$TransactionsListRelationFilter? Transactions,
  });
  TRes AND(
      Iterable<Input$TransactionStatusWhereInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionStatusWhereInput<
                      Input$TransactionStatusWhereInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$TransactionStatusWhereInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionStatusWhereInput<
                      Input$TransactionStatusWhereInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$TransactionStatusWhereInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionStatusWhereInput<
                      Input$TransactionStatusWhereInput>>?)
          _fn);
  CopyWith$Input$IntFilter<TRes> get transaction_status_id;
  CopyWith$Input$StringFilter<TRes> get name;
  CopyWith$Input$StringFilter<TRes> get description;
  CopyWith$Input$TransactionsListRelationFilter<TRes> get Transactions;
}

class _CopyWithImpl$Input$TransactionStatusWhereInput<TRes>
    implements CopyWith$Input$TransactionStatusWhereInput<TRes> {
  _CopyWithImpl$Input$TransactionStatusWhereInput(
    this._instance,
    this._then,
  );

  final Input$TransactionStatusWhereInput _instance;

  final TRes Function(Input$TransactionStatusWhereInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? transaction_status_id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? Transactions = _undefined,
  }) =>
      _then(Input$TransactionStatusWhereInput._({
        ..._instance._$data,
        if (AND != _undefined)
          'AND': (AND as List<Input$TransactionStatusWhereInput>?),
        if (OR != _undefined)
          'OR': (OR as List<Input$TransactionStatusWhereInput>?),
        if (NOT != _undefined)
          'NOT': (NOT as List<Input$TransactionStatusWhereInput>?),
        if (transaction_status_id != _undefined)
          'transaction_status_id': (transaction_status_id as Input$IntFilter?),
        if (name != _undefined) 'name': (name as Input$StringFilter?),
        if (description != _undefined)
          'description': (description as Input$StringFilter?),
        if (Transactions != _undefined)
          'Transactions':
              (Transactions as Input$TransactionsListRelationFilter?),
      }));
  TRes AND(
          Iterable<Input$TransactionStatusWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionStatusWhereInput<
                          Input$TransactionStatusWhereInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND
              ?.map((e) => CopyWith$Input$TransactionStatusWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes OR(
          Iterable<Input$TransactionStatusWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionStatusWhereInput<
                          Input$TransactionStatusWhereInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR
              ?.map((e) => CopyWith$Input$TransactionStatusWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes NOT(
          Iterable<Input$TransactionStatusWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionStatusWhereInput<
                          Input$TransactionStatusWhereInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT
              ?.map((e) => CopyWith$Input$TransactionStatusWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$IntFilter<TRes> get transaction_status_id {
    final local$transaction_status_id = _instance.transaction_status_id;
    return local$transaction_status_id == null
        ? CopyWith$Input$IntFilter.stub(_then(_instance))
        : CopyWith$Input$IntFilter(
            local$transaction_status_id, (e) => call(transaction_status_id: e));
  }

  CopyWith$Input$StringFilter<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$name, (e) => call(name: e));
  }

  CopyWith$Input$StringFilter<TRes> get description {
    final local$description = _instance.description;
    return local$description == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(
            local$description, (e) => call(description: e));
  }

  CopyWith$Input$TransactionsListRelationFilter<TRes> get Transactions {
    final local$Transactions = _instance.Transactions;
    return local$Transactions == null
        ? CopyWith$Input$TransactionsListRelationFilter.stub(_then(_instance))
        : CopyWith$Input$TransactionsListRelationFilter(
            local$Transactions, (e) => call(Transactions: e));
  }
}

class _CopyWithStubImpl$Input$TransactionStatusWhereInput<TRes>
    implements CopyWith$Input$TransactionStatusWhereInput<TRes> {
  _CopyWithStubImpl$Input$TransactionStatusWhereInput(this._res);

  TRes _res;

  call({
    List<Input$TransactionStatusWhereInput>? AND,
    List<Input$TransactionStatusWhereInput>? OR,
    List<Input$TransactionStatusWhereInput>? NOT,
    Input$IntFilter? transaction_status_id,
    Input$StringFilter? name,
    Input$StringFilter? description,
    Input$TransactionsListRelationFilter? Transactions,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
  CopyWith$Input$IntFilter<TRes> get transaction_status_id =>
      CopyWith$Input$IntFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get name =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get description =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$TransactionsListRelationFilter<TRes> get Transactions =>
      CopyWith$Input$TransactionsListRelationFilter.stub(_res);
}

class Input$PayementsListRelationFilter {
  factory Input$PayementsListRelationFilter({
    Input$PayementsWhereInput? every,
    Input$PayementsWhereInput? some,
    Input$PayementsWhereInput? none,
  }) =>
      Input$PayementsListRelationFilter._({
        if (every != null) r'every': every,
        if (some != null) r'some': some,
        if (none != null) r'none': none,
      });

  Input$PayementsListRelationFilter._(this._$data);

  factory Input$PayementsListRelationFilter.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('every')) {
      final l$every = data['every'];
      result$data['every'] = l$every == null
          ? null
          : Input$PayementsWhereInput.fromJson(
              (l$every as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$PayementsWhereInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$PayementsWhereInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    return Input$PayementsListRelationFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PayementsWhereInput? get every =>
      (_$data['every'] as Input$PayementsWhereInput?);
  Input$PayementsWhereInput? get some =>
      (_$data['some'] as Input$PayementsWhereInput?);
  Input$PayementsWhereInput? get none =>
      (_$data['none'] as Input$PayementsWhereInput?);
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

  CopyWith$Input$PayementsListRelationFilter<Input$PayementsListRelationFilter>
      get copyWith => CopyWith$Input$PayementsListRelationFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PayementsListRelationFilter) ||
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

abstract class CopyWith$Input$PayementsListRelationFilter<TRes> {
  factory CopyWith$Input$PayementsListRelationFilter(
    Input$PayementsListRelationFilter instance,
    TRes Function(Input$PayementsListRelationFilter) then,
  ) = _CopyWithImpl$Input$PayementsListRelationFilter;

  factory CopyWith$Input$PayementsListRelationFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$PayementsListRelationFilter;

  TRes call({
    Input$PayementsWhereInput? every,
    Input$PayementsWhereInput? some,
    Input$PayementsWhereInput? none,
  });
  CopyWith$Input$PayementsWhereInput<TRes> get every;
  CopyWith$Input$PayementsWhereInput<TRes> get some;
  CopyWith$Input$PayementsWhereInput<TRes> get none;
}

class _CopyWithImpl$Input$PayementsListRelationFilter<TRes>
    implements CopyWith$Input$PayementsListRelationFilter<TRes> {
  _CopyWithImpl$Input$PayementsListRelationFilter(
    this._instance,
    this._then,
  );

  final Input$PayementsListRelationFilter _instance;

  final TRes Function(Input$PayementsListRelationFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? every = _undefined,
    Object? some = _undefined,
    Object? none = _undefined,
  }) =>
      _then(Input$PayementsListRelationFilter._({
        ..._instance._$data,
        if (every != _undefined) 'every': (every as Input$PayementsWhereInput?),
        if (some != _undefined) 'some': (some as Input$PayementsWhereInput?),
        if (none != _undefined) 'none': (none as Input$PayementsWhereInput?),
      }));
  CopyWith$Input$PayementsWhereInput<TRes> get every {
    final local$every = _instance.every;
    return local$every == null
        ? CopyWith$Input$PayementsWhereInput.stub(_then(_instance))
        : CopyWith$Input$PayementsWhereInput(
            local$every, (e) => call(every: e));
  }

  CopyWith$Input$PayementsWhereInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$PayementsWhereInput.stub(_then(_instance))
        : CopyWith$Input$PayementsWhereInput(local$some, (e) => call(some: e));
  }

  CopyWith$Input$PayementsWhereInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$PayementsWhereInput.stub(_then(_instance))
        : CopyWith$Input$PayementsWhereInput(local$none, (e) => call(none: e));
  }
}

class _CopyWithStubImpl$Input$PayementsListRelationFilter<TRes>
    implements CopyWith$Input$PayementsListRelationFilter<TRes> {
  _CopyWithStubImpl$Input$PayementsListRelationFilter(this._res);

  TRes _res;

  call({
    Input$PayementsWhereInput? every,
    Input$PayementsWhereInput? some,
    Input$PayementsWhereInput? none,
  }) =>
      _res;
  CopyWith$Input$PayementsWhereInput<TRes> get every =>
      CopyWith$Input$PayementsWhereInput.stub(_res);
  CopyWith$Input$PayementsWhereInput<TRes> get some =>
      CopyWith$Input$PayementsWhereInput.stub(_res);
  CopyWith$Input$PayementsWhereInput<TRes> get none =>
      CopyWith$Input$PayementsWhereInput.stub(_res);
}

class Input$PayementsWhereInput {
  factory Input$PayementsWhereInput({
    List<Input$PayementsWhereInput>? AND,
    List<Input$PayementsWhereInput>? OR,
    List<Input$PayementsWhereInput>? NOT,
    Input$IntFilter? payement_id,
    Input$IntFilter? transaction_id,
    Input$FloatFilter? payement,
    Input$TransactionsRelationFilter? transaction,
  }) =>
      Input$PayementsWhereInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (payement_id != null) r'payement_id': payement_id,
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (payement != null) r'payement': payement,
        if (transaction != null) r'transaction': transaction,
      });

  Input$PayementsWhereInput._(this._$data);

  factory Input$PayementsWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) =>
              Input$PayementsWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) =>
              Input$PayementsWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) =>
              Input$PayementsWhereInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('payement_id')) {
      final l$payement_id = data['payement_id'];
      result$data['payement_id'] = l$payement_id == null
          ? null
          : Input$IntFilter.fromJson((l$payement_id as Map<String, dynamic>));
    }
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : Input$IntFilter.fromJson(
              (l$transaction_id as Map<String, dynamic>));
    }
    if (data.containsKey('payement')) {
      final l$payement = data['payement'];
      result$data['payement'] = l$payement == null
          ? null
          : Input$FloatFilter.fromJson((l$payement as Map<String, dynamic>));
    }
    if (data.containsKey('transaction')) {
      final l$transaction = data['transaction'];
      result$data['transaction'] = l$transaction == null
          ? null
          : Input$TransactionsRelationFilter.fromJson(
              (l$transaction as Map<String, dynamic>));
    }
    return Input$PayementsWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$PayementsWhereInput>? get AND =>
      (_$data['AND'] as List<Input$PayementsWhereInput>?);
  List<Input$PayementsWhereInput>? get OR =>
      (_$data['OR'] as List<Input$PayementsWhereInput>?);
  List<Input$PayementsWhereInput>? get NOT =>
      (_$data['NOT'] as List<Input$PayementsWhereInput>?);
  Input$IntFilter? get payement_id =>
      (_$data['payement_id'] as Input$IntFilter?);
  Input$IntFilter? get transaction_id =>
      (_$data['transaction_id'] as Input$IntFilter?);
  Input$FloatFilter? get payement => (_$data['payement'] as Input$FloatFilter?);
  Input$TransactionsRelationFilter? get transaction =>
      (_$data['transaction'] as Input$TransactionsRelationFilter?);
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
    if (_$data.containsKey('transaction')) {
      final l$transaction = transaction;
      result$data['transaction'] = l$transaction?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PayementsWhereInput<Input$PayementsWhereInput> get copyWith =>
      CopyWith$Input$PayementsWhereInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PayementsWhereInput) ||
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
    final l$transaction = transaction;
    final lOther$transaction = other.transaction;
    if (_$data.containsKey('transaction') !=
        other._$data.containsKey('transaction')) {
      return false;
    }
    if (l$transaction != lOther$transaction) {
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
    final l$transaction = transaction;
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
      _$data.containsKey('transaction') ? l$transaction : const {},
    ]);
  }
}

abstract class CopyWith$Input$PayementsWhereInput<TRes> {
  factory CopyWith$Input$PayementsWhereInput(
    Input$PayementsWhereInput instance,
    TRes Function(Input$PayementsWhereInput) then,
  ) = _CopyWithImpl$Input$PayementsWhereInput;

  factory CopyWith$Input$PayementsWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PayementsWhereInput;

  TRes call({
    List<Input$PayementsWhereInput>? AND,
    List<Input$PayementsWhereInput>? OR,
    List<Input$PayementsWhereInput>? NOT,
    Input$IntFilter? payement_id,
    Input$IntFilter? transaction_id,
    Input$FloatFilter? payement,
    Input$TransactionsRelationFilter? transaction,
  });
  TRes AND(
      Iterable<Input$PayementsWhereInput>? Function(
              Iterable<
                  CopyWith$Input$PayementsWhereInput<
                      Input$PayementsWhereInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$PayementsWhereInput>? Function(
              Iterable<
                  CopyWith$Input$PayementsWhereInput<
                      Input$PayementsWhereInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$PayementsWhereInput>? Function(
              Iterable<
                  CopyWith$Input$PayementsWhereInput<
                      Input$PayementsWhereInput>>?)
          _fn);
  CopyWith$Input$IntFilter<TRes> get payement_id;
  CopyWith$Input$IntFilter<TRes> get transaction_id;
  CopyWith$Input$FloatFilter<TRes> get payement;
  CopyWith$Input$TransactionsRelationFilter<TRes> get transaction;
}

class _CopyWithImpl$Input$PayementsWhereInput<TRes>
    implements CopyWith$Input$PayementsWhereInput<TRes> {
  _CopyWithImpl$Input$PayementsWhereInput(
    this._instance,
    this._then,
  );

  final Input$PayementsWhereInput _instance;

  final TRes Function(Input$PayementsWhereInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? payement_id = _undefined,
    Object? transaction_id = _undefined,
    Object? payement = _undefined,
    Object? transaction = _undefined,
  }) =>
      _then(Input$PayementsWhereInput._({
        ..._instance._$data,
        if (AND != _undefined) 'AND': (AND as List<Input$PayementsWhereInput>?),
        if (OR != _undefined) 'OR': (OR as List<Input$PayementsWhereInput>?),
        if (NOT != _undefined) 'NOT': (NOT as List<Input$PayementsWhereInput>?),
        if (payement_id != _undefined)
          'payement_id': (payement_id as Input$IntFilter?),
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Input$IntFilter?),
        if (payement != _undefined)
          'payement': (payement as Input$FloatFilter?),
        if (transaction != _undefined)
          'transaction': (transaction as Input$TransactionsRelationFilter?),
      }));
  TRes AND(
          Iterable<Input$PayementsWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$PayementsWhereInput<
                          Input$PayementsWhereInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND?.map((e) => CopyWith$Input$PayementsWhereInput(
                e,
                (i) => i,
              )))?.toList());
  TRes OR(
          Iterable<Input$PayementsWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$PayementsWhereInput<
                          Input$PayementsWhereInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR?.map((e) => CopyWith$Input$PayementsWhereInput(
                e,
                (i) => i,
              )))?.toList());
  TRes NOT(
          Iterable<Input$PayementsWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$PayementsWhereInput<
                          Input$PayementsWhereInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT?.map((e) => CopyWith$Input$PayementsWhereInput(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Input$IntFilter<TRes> get payement_id {
    final local$payement_id = _instance.payement_id;
    return local$payement_id == null
        ? CopyWith$Input$IntFilter.stub(_then(_instance))
        : CopyWith$Input$IntFilter(
            local$payement_id, (e) => call(payement_id: e));
  }

  CopyWith$Input$IntFilter<TRes> get transaction_id {
    final local$transaction_id = _instance.transaction_id;
    return local$transaction_id == null
        ? CopyWith$Input$IntFilter.stub(_then(_instance))
        : CopyWith$Input$IntFilter(
            local$transaction_id, (e) => call(transaction_id: e));
  }

  CopyWith$Input$FloatFilter<TRes> get payement {
    final local$payement = _instance.payement;
    return local$payement == null
        ? CopyWith$Input$FloatFilter.stub(_then(_instance))
        : CopyWith$Input$FloatFilter(local$payement, (e) => call(payement: e));
  }

  CopyWith$Input$TransactionsRelationFilter<TRes> get transaction {
    final local$transaction = _instance.transaction;
    return local$transaction == null
        ? CopyWith$Input$TransactionsRelationFilter.stub(_then(_instance))
        : CopyWith$Input$TransactionsRelationFilter(
            local$transaction, (e) => call(transaction: e));
  }
}

class _CopyWithStubImpl$Input$PayementsWhereInput<TRes>
    implements CopyWith$Input$PayementsWhereInput<TRes> {
  _CopyWithStubImpl$Input$PayementsWhereInput(this._res);

  TRes _res;

  call({
    List<Input$PayementsWhereInput>? AND,
    List<Input$PayementsWhereInput>? OR,
    List<Input$PayementsWhereInput>? NOT,
    Input$IntFilter? payement_id,
    Input$IntFilter? transaction_id,
    Input$FloatFilter? payement,
    Input$TransactionsRelationFilter? transaction,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
  CopyWith$Input$IntFilter<TRes> get payement_id =>
      CopyWith$Input$IntFilter.stub(_res);
  CopyWith$Input$IntFilter<TRes> get transaction_id =>
      CopyWith$Input$IntFilter.stub(_res);
  CopyWith$Input$FloatFilter<TRes> get payement =>
      CopyWith$Input$FloatFilter.stub(_res);
  CopyWith$Input$TransactionsRelationFilter<TRes> get transaction =>
      CopyWith$Input$TransactionsRelationFilter.stub(_res);
}

class Input$TransactionsRelationFilter {
  factory Input$TransactionsRelationFilter({
    Input$TransactionsWhereInput? $is,
    Input$TransactionsWhereInput? isNot,
  }) =>
      Input$TransactionsRelationFilter._({
        if ($is != null) r'is': $is,
        if (isNot != null) r'isNot': isNot,
      });

  Input$TransactionsRelationFilter._(this._$data);

  factory Input$TransactionsRelationFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('is')) {
      final l$$is = data['is'];
      result$data['is'] = l$$is == null
          ? null
          : Input$TransactionsWhereInput.fromJson(
              (l$$is as Map<String, dynamic>));
    }
    if (data.containsKey('isNot')) {
      final l$isNot = data['isNot'];
      result$data['isNot'] = l$isNot == null
          ? null
          : Input$TransactionsWhereInput.fromJson(
              (l$isNot as Map<String, dynamic>));
    }
    return Input$TransactionsRelationFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionsWhereInput? get $is =>
      (_$data['is'] as Input$TransactionsWhereInput?);
  Input$TransactionsWhereInput? get isNot =>
      (_$data['isNot'] as Input$TransactionsWhereInput?);
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

  CopyWith$Input$TransactionsRelationFilter<Input$TransactionsRelationFilter>
      get copyWith => CopyWith$Input$TransactionsRelationFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsRelationFilter) ||
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

abstract class CopyWith$Input$TransactionsRelationFilter<TRes> {
  factory CopyWith$Input$TransactionsRelationFilter(
    Input$TransactionsRelationFilter instance,
    TRes Function(Input$TransactionsRelationFilter) then,
  ) = _CopyWithImpl$Input$TransactionsRelationFilter;

  factory CopyWith$Input$TransactionsRelationFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionsRelationFilter;

  TRes call({
    Input$TransactionsWhereInput? $is,
    Input$TransactionsWhereInput? isNot,
  });
  CopyWith$Input$TransactionsWhereInput<TRes> get $is;
  CopyWith$Input$TransactionsWhereInput<TRes> get isNot;
}

class _CopyWithImpl$Input$TransactionsRelationFilter<TRes>
    implements CopyWith$Input$TransactionsRelationFilter<TRes> {
  _CopyWithImpl$Input$TransactionsRelationFilter(
    this._instance,
    this._then,
  );

  final Input$TransactionsRelationFilter _instance;

  final TRes Function(Input$TransactionsRelationFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $is = _undefined,
    Object? isNot = _undefined,
  }) =>
      _then(Input$TransactionsRelationFilter._({
        ..._instance._$data,
        if ($is != _undefined) 'is': ($is as Input$TransactionsWhereInput?),
        if (isNot != _undefined)
          'isNot': (isNot as Input$TransactionsWhereInput?),
      }));
  CopyWith$Input$TransactionsWhereInput<TRes> get $is {
    final local$$is = _instance.$is;
    return local$$is == null
        ? CopyWith$Input$TransactionsWhereInput.stub(_then(_instance))
        : CopyWith$Input$TransactionsWhereInput(local$$is, (e) => call($is: e));
  }

  CopyWith$Input$TransactionsWhereInput<TRes> get isNot {
    final local$isNot = _instance.isNot;
    return local$isNot == null
        ? CopyWith$Input$TransactionsWhereInput.stub(_then(_instance))
        : CopyWith$Input$TransactionsWhereInput(
            local$isNot, (e) => call(isNot: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsRelationFilter<TRes>
    implements CopyWith$Input$TransactionsRelationFilter<TRes> {
  _CopyWithStubImpl$Input$TransactionsRelationFilter(this._res);

  TRes _res;

  call({
    Input$TransactionsWhereInput? $is,
    Input$TransactionsWhereInput? isNot,
  }) =>
      _res;
  CopyWith$Input$TransactionsWhereInput<TRes> get $is =>
      CopyWith$Input$TransactionsWhereInput.stub(_res);
  CopyWith$Input$TransactionsWhereInput<TRes> get isNot =>
      CopyWith$Input$TransactionsWhereInput.stub(_res);
}

class Input$CityOrderByWithRelationInput {
  factory Input$CityOrderByWithRelationInput({
    Enum$SortOrder? city_id,
    Enum$SortOrder? city_name,
    Input$TransactionsOrderByRelationAggregateInput? Transactions,
  }) =>
      Input$CityOrderByWithRelationInput._({
        if (city_id != null) r'city_id': city_id,
        if (city_name != null) r'city_name': city_name,
        if (Transactions != null) r'Transactions': Transactions,
      });

  Input$CityOrderByWithRelationInput._(this._$data);

  factory Input$CityOrderByWithRelationInput.fromJson(
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
    if (data.containsKey('Transactions')) {
      final l$Transactions = data['Transactions'];
      result$data['Transactions'] = l$Transactions == null
          ? null
          : Input$TransactionsOrderByRelationAggregateInput.fromJson(
              (l$Transactions as Map<String, dynamic>));
    }
    return Input$CityOrderByWithRelationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get city_id => (_$data['city_id'] as Enum$SortOrder?);
  Enum$SortOrder? get city_name => (_$data['city_name'] as Enum$SortOrder?);
  Input$TransactionsOrderByRelationAggregateInput? get Transactions =>
      (_$data['Transactions']
          as Input$TransactionsOrderByRelationAggregateInput?);
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
    if (_$data.containsKey('Transactions')) {
      final l$Transactions = Transactions;
      result$data['Transactions'] = l$Transactions?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$CityOrderByWithRelationInput<
          Input$CityOrderByWithRelationInput>
      get copyWith => CopyWith$Input$CityOrderByWithRelationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CityOrderByWithRelationInput) ||
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

abstract class CopyWith$Input$CityOrderByWithRelationInput<TRes> {
  factory CopyWith$Input$CityOrderByWithRelationInput(
    Input$CityOrderByWithRelationInput instance,
    TRes Function(Input$CityOrderByWithRelationInput) then,
  ) = _CopyWithImpl$Input$CityOrderByWithRelationInput;

  factory CopyWith$Input$CityOrderByWithRelationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CityOrderByWithRelationInput;

  TRes call({
    Enum$SortOrder? city_id,
    Enum$SortOrder? city_name,
    Input$TransactionsOrderByRelationAggregateInput? Transactions,
  });
  CopyWith$Input$TransactionsOrderByRelationAggregateInput<TRes>
      get Transactions;
}

class _CopyWithImpl$Input$CityOrderByWithRelationInput<TRes>
    implements CopyWith$Input$CityOrderByWithRelationInput<TRes> {
  _CopyWithImpl$Input$CityOrderByWithRelationInput(
    this._instance,
    this._then,
  );

  final Input$CityOrderByWithRelationInput _instance;

  final TRes Function(Input$CityOrderByWithRelationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? city_id = _undefined,
    Object? city_name = _undefined,
    Object? Transactions = _undefined,
  }) =>
      _then(Input$CityOrderByWithRelationInput._({
        ..._instance._$data,
        if (city_id != _undefined) 'city_id': (city_id as Enum$SortOrder?),
        if (city_name != _undefined)
          'city_name': (city_name as Enum$SortOrder?),
        if (Transactions != _undefined)
          'Transactions': (Transactions
              as Input$TransactionsOrderByRelationAggregateInput?),
      }));
  CopyWith$Input$TransactionsOrderByRelationAggregateInput<TRes>
      get Transactions {
    final local$Transactions = _instance.Transactions;
    return local$Transactions == null
        ? CopyWith$Input$TransactionsOrderByRelationAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionsOrderByRelationAggregateInput(
            local$Transactions, (e) => call(Transactions: e));
  }
}

class _CopyWithStubImpl$Input$CityOrderByWithRelationInput<TRes>
    implements CopyWith$Input$CityOrderByWithRelationInput<TRes> {
  _CopyWithStubImpl$Input$CityOrderByWithRelationInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? city_id,
    Enum$SortOrder? city_name,
    Input$TransactionsOrderByRelationAggregateInput? Transactions,
  }) =>
      _res;
  CopyWith$Input$TransactionsOrderByRelationAggregateInput<TRes>
      get Transactions =>
          CopyWith$Input$TransactionsOrderByRelationAggregateInput.stub(_res);
}

class Input$TransactionsOrderByRelationAggregateInput {
  factory Input$TransactionsOrderByRelationAggregateInput(
          {Enum$SortOrder? $_count}) =>
      Input$TransactionsOrderByRelationAggregateInput._({
        if ($_count != null) r'_count': $_count,
      });

  Input$TransactionsOrderByRelationAggregateInput._(this._$data);

  factory Input$TransactionsOrderByRelationAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_count')) {
      final l$$_count = data['_count'];
      result$data['_count'] = l$$_count == null
          ? null
          : fromJson$Enum$SortOrder((l$$_count as String));
    }
    return Input$TransactionsOrderByRelationAggregateInput._(result$data);
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

  CopyWith$Input$TransactionsOrderByRelationAggregateInput<
          Input$TransactionsOrderByRelationAggregateInput>
      get copyWith => CopyWith$Input$TransactionsOrderByRelationAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsOrderByRelationAggregateInput) ||
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

abstract class CopyWith$Input$TransactionsOrderByRelationAggregateInput<TRes> {
  factory CopyWith$Input$TransactionsOrderByRelationAggregateInput(
    Input$TransactionsOrderByRelationAggregateInput instance,
    TRes Function(Input$TransactionsOrderByRelationAggregateInput) then,
  ) = _CopyWithImpl$Input$TransactionsOrderByRelationAggregateInput;

  factory CopyWith$Input$TransactionsOrderByRelationAggregateInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsOrderByRelationAggregateInput;

  TRes call({Enum$SortOrder? $_count});
}

class _CopyWithImpl$Input$TransactionsOrderByRelationAggregateInput<TRes>
    implements CopyWith$Input$TransactionsOrderByRelationAggregateInput<TRes> {
  _CopyWithImpl$Input$TransactionsOrderByRelationAggregateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsOrderByRelationAggregateInput _instance;

  final TRes Function(Input$TransactionsOrderByRelationAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_count = _undefined}) =>
      _then(Input$TransactionsOrderByRelationAggregateInput._({
        ..._instance._$data,
        if ($_count != _undefined) '_count': ($_count as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$TransactionsOrderByRelationAggregateInput<TRes>
    implements CopyWith$Input$TransactionsOrderByRelationAggregateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsOrderByRelationAggregateInput(this._res);

  TRes _res;

  call({Enum$SortOrder? $_count}) => _res;
}

class Input$CityWhereUniqueInput {
  factory Input$CityWhereUniqueInput({int? city_id}) =>
      Input$CityWhereUniqueInput._({
        if (city_id != null) r'city_id': city_id,
      });

  Input$CityWhereUniqueInput._(this._$data);

  factory Input$CityWhereUniqueInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('city_id')) {
      final l$city_id = data['city_id'];
      result$data['city_id'] = (l$city_id as int?);
    }
    return Input$CityWhereUniqueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get city_id => (_$data['city_id'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('city_id')) {
      final l$city_id = city_id;
      result$data['city_id'] = l$city_id;
    }
    return result$data;
  }

  CopyWith$Input$CityWhereUniqueInput<Input$CityWhereUniqueInput>
      get copyWith => CopyWith$Input$CityWhereUniqueInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CityWhereUniqueInput) ||
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

abstract class CopyWith$Input$CityWhereUniqueInput<TRes> {
  factory CopyWith$Input$CityWhereUniqueInput(
    Input$CityWhereUniqueInput instance,
    TRes Function(Input$CityWhereUniqueInput) then,
  ) = _CopyWithImpl$Input$CityWhereUniqueInput;

  factory CopyWith$Input$CityWhereUniqueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CityWhereUniqueInput;

  TRes call({int? city_id});
}

class _CopyWithImpl$Input$CityWhereUniqueInput<TRes>
    implements CopyWith$Input$CityWhereUniqueInput<TRes> {
  _CopyWithImpl$Input$CityWhereUniqueInput(
    this._instance,
    this._then,
  );

  final Input$CityWhereUniqueInput _instance;

  final TRes Function(Input$CityWhereUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? city_id = _undefined}) =>
      _then(Input$CityWhereUniqueInput._({
        ..._instance._$data,
        if (city_id != _undefined) 'city_id': (city_id as int?),
      }));
}

class _CopyWithStubImpl$Input$CityWhereUniqueInput<TRes>
    implements CopyWith$Input$CityWhereUniqueInput<TRes> {
  _CopyWithStubImpl$Input$CityWhereUniqueInput(this._res);

  TRes _res;

  call({int? city_id}) => _res;
}

class Input$TransactionsOrderByWithRelationInput {
  factory Input$TransactionsOrderByWithRelationInput({
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
    Input$SellersOrderByWithRelationInput? seller,
    Input$CityOrderByWithRelationInput? city,
    Enum$SortOrder? transaction_type_id,
    Input$TransactionTypesOrderByWithRelationInput? transaction_type,
    Enum$SortOrder? status_id,
    Input$TransactionStatusOrderByWithRelationInput? status,
    Input$PayementsOrderByRelationAggregateInput? Payements,
  }) =>
      Input$TransactionsOrderByWithRelationInput._({
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
        if (seller != null) r'seller': seller,
        if (city != null) r'city': city,
        if (transaction_type_id != null)
          r'transaction_type_id': transaction_type_id,
        if (transaction_type != null) r'transaction_type': transaction_type,
        if (status_id != null) r'status_id': status_id,
        if (status != null) r'status': status,
        if (Payements != null) r'Payements': Payements,
      });

  Input$TransactionsOrderByWithRelationInput._(this._$data);

  factory Input$TransactionsOrderByWithRelationInput.fromJson(
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
    if (data.containsKey('seller')) {
      final l$seller = data['seller'];
      result$data['seller'] = l$seller == null
          ? null
          : Input$SellersOrderByWithRelationInput.fromJson(
              (l$seller as Map<String, dynamic>));
    }
    if (data.containsKey('city')) {
      final l$city = data['city'];
      result$data['city'] = l$city == null
          ? null
          : Input$CityOrderByWithRelationInput.fromJson(
              (l$city as Map<String, dynamic>));
    }
    if (data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = data['transaction_type_id'];
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : fromJson$Enum$SortOrder((l$transaction_type_id as String));
    }
    if (data.containsKey('transaction_type')) {
      final l$transaction_type = data['transaction_type'];
      result$data['transaction_type'] = l$transaction_type == null
          ? null
          : Input$TransactionTypesOrderByWithRelationInput.fromJson(
              (l$transaction_type as Map<String, dynamic>));
    }
    if (data.containsKey('status_id')) {
      final l$status_id = data['status_id'];
      result$data['status_id'] = l$status_id == null
          ? null
          : fromJson$Enum$SortOrder((l$status_id as String));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : Input$TransactionStatusOrderByWithRelationInput.fromJson(
              (l$status as Map<String, dynamic>));
    }
    if (data.containsKey('Payements')) {
      final l$Payements = data['Payements'];
      result$data['Payements'] = l$Payements == null
          ? null
          : Input$PayementsOrderByRelationAggregateInput.fromJson(
              (l$Payements as Map<String, dynamic>));
    }
    return Input$TransactionsOrderByWithRelationInput._(result$data);
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
  Input$SellersOrderByWithRelationInput? get seller =>
      (_$data['seller'] as Input$SellersOrderByWithRelationInput?);
  Input$CityOrderByWithRelationInput? get city =>
      (_$data['city'] as Input$CityOrderByWithRelationInput?);
  Enum$SortOrder? get transaction_type_id =>
      (_$data['transaction_type_id'] as Enum$SortOrder?);
  Input$TransactionTypesOrderByWithRelationInput? get transaction_type =>
      (_$data['transaction_type']
          as Input$TransactionTypesOrderByWithRelationInput?);
  Enum$SortOrder? get status_id => (_$data['status_id'] as Enum$SortOrder?);
  Input$TransactionStatusOrderByWithRelationInput? get status =>
      (_$data['status'] as Input$TransactionStatusOrderByWithRelationInput?);
  Input$PayementsOrderByRelationAggregateInput? get Payements =>
      (_$data['Payements'] as Input$PayementsOrderByRelationAggregateInput?);
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
    if (_$data.containsKey('seller')) {
      final l$seller = seller;
      result$data['seller'] = l$seller?.toJson();
    }
    if (_$data.containsKey('city')) {
      final l$city = city;
      result$data['city'] = l$city?.toJson();
    }
    if (_$data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = transaction_type_id;
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : toJson$Enum$SortOrder(l$transaction_type_id);
    }
    if (_$data.containsKey('transaction_type')) {
      final l$transaction_type = transaction_type;
      result$data['transaction_type'] = l$transaction_type?.toJson();
    }
    if (_$data.containsKey('status_id')) {
      final l$status_id = status_id;
      result$data['status_id'] =
          l$status_id == null ? null : toJson$Enum$SortOrder(l$status_id);
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

  CopyWith$Input$TransactionsOrderByWithRelationInput<
          Input$TransactionsOrderByWithRelationInput>
      get copyWith => CopyWith$Input$TransactionsOrderByWithRelationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsOrderByWithRelationInput) ||
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
    final l$seller = seller;
    final lOther$seller = other.seller;
    if (_$data.containsKey('seller') != other._$data.containsKey('seller')) {
      return false;
    }
    if (l$seller != lOther$seller) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (_$data.containsKey('city') != other._$data.containsKey('city')) {
      return false;
    }
    if (l$city != lOther$city) {
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
    final l$transaction_type = transaction_type;
    final lOther$transaction_type = other.transaction_type;
    if (_$data.containsKey('transaction_type') !=
        other._$data.containsKey('transaction_type')) {
      return false;
    }
    if (l$transaction_type != lOther$transaction_type) {
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
    final l$seller = seller;
    final l$city = city;
    final l$transaction_type_id = transaction_type_id;
    final l$transaction_type = transaction_type;
    final l$status_id = status_id;
    final l$status = status;
    final l$Payements = Payements;
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
      _$data.containsKey('seller') ? l$seller : const {},
      _$data.containsKey('city') ? l$city : const {},
      _$data.containsKey('transaction_type_id')
          ? l$transaction_type_id
          : const {},
      _$data.containsKey('transaction_type') ? l$transaction_type : const {},
      _$data.containsKey('status_id') ? l$status_id : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('Payements') ? l$Payements : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsOrderByWithRelationInput<TRes> {
  factory CopyWith$Input$TransactionsOrderByWithRelationInput(
    Input$TransactionsOrderByWithRelationInput instance,
    TRes Function(Input$TransactionsOrderByWithRelationInput) then,
  ) = _CopyWithImpl$Input$TransactionsOrderByWithRelationInput;

  factory CopyWith$Input$TransactionsOrderByWithRelationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionsOrderByWithRelationInput;

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
    Input$SellersOrderByWithRelationInput? seller,
    Input$CityOrderByWithRelationInput? city,
    Enum$SortOrder? transaction_type_id,
    Input$TransactionTypesOrderByWithRelationInput? transaction_type,
    Enum$SortOrder? status_id,
    Input$TransactionStatusOrderByWithRelationInput? status,
    Input$PayementsOrderByRelationAggregateInput? Payements,
  });
  CopyWith$Input$SellersOrderByWithRelationInput<TRes> get seller;
  CopyWith$Input$CityOrderByWithRelationInput<TRes> get city;
  CopyWith$Input$TransactionTypesOrderByWithRelationInput<TRes>
      get transaction_type;
  CopyWith$Input$TransactionStatusOrderByWithRelationInput<TRes> get status;
  CopyWith$Input$PayementsOrderByRelationAggregateInput<TRes> get Payements;
}

class _CopyWithImpl$Input$TransactionsOrderByWithRelationInput<TRes>
    implements CopyWith$Input$TransactionsOrderByWithRelationInput<TRes> {
  _CopyWithImpl$Input$TransactionsOrderByWithRelationInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsOrderByWithRelationInput _instance;

  final TRes Function(Input$TransactionsOrderByWithRelationInput) _then;

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
    Object? seller = _undefined,
    Object? city = _undefined,
    Object? transaction_type_id = _undefined,
    Object? transaction_type = _undefined,
    Object? status_id = _undefined,
    Object? status = _undefined,
    Object? Payements = _undefined,
  }) =>
      _then(Input$TransactionsOrderByWithRelationInput._({
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
        if (seller != _undefined)
          'seller': (seller as Input$SellersOrderByWithRelationInput?),
        if (city != _undefined)
          'city': (city as Input$CityOrderByWithRelationInput?),
        if (transaction_type_id != _undefined)
          'transaction_type_id': (transaction_type_id as Enum$SortOrder?),
        if (transaction_type != _undefined)
          'transaction_type': (transaction_type
              as Input$TransactionTypesOrderByWithRelationInput?),
        if (status_id != _undefined)
          'status_id': (status_id as Enum$SortOrder?),
        if (status != _undefined)
          'status':
              (status as Input$TransactionStatusOrderByWithRelationInput?),
        if (Payements != _undefined)
          'Payements':
              (Payements as Input$PayementsOrderByRelationAggregateInput?),
      }));
  CopyWith$Input$SellersOrderByWithRelationInput<TRes> get seller {
    final local$seller = _instance.seller;
    return local$seller == null
        ? CopyWith$Input$SellersOrderByWithRelationInput.stub(_then(_instance))
        : CopyWith$Input$SellersOrderByWithRelationInput(
            local$seller, (e) => call(seller: e));
  }

  CopyWith$Input$CityOrderByWithRelationInput<TRes> get city {
    final local$city = _instance.city;
    return local$city == null
        ? CopyWith$Input$CityOrderByWithRelationInput.stub(_then(_instance))
        : CopyWith$Input$CityOrderByWithRelationInput(
            local$city, (e) => call(city: e));
  }

  CopyWith$Input$TransactionTypesOrderByWithRelationInput<TRes>
      get transaction_type {
    final local$transaction_type = _instance.transaction_type;
    return local$transaction_type == null
        ? CopyWith$Input$TransactionTypesOrderByWithRelationInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionTypesOrderByWithRelationInput(
            local$transaction_type, (e) => call(transaction_type: e));
  }

  CopyWith$Input$TransactionStatusOrderByWithRelationInput<TRes> get status {
    final local$status = _instance.status;
    return local$status == null
        ? CopyWith$Input$TransactionStatusOrderByWithRelationInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionStatusOrderByWithRelationInput(
            local$status, (e) => call(status: e));
  }

  CopyWith$Input$PayementsOrderByRelationAggregateInput<TRes> get Payements {
    final local$Payements = _instance.Payements;
    return local$Payements == null
        ? CopyWith$Input$PayementsOrderByRelationAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$PayementsOrderByRelationAggregateInput(
            local$Payements, (e) => call(Payements: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsOrderByWithRelationInput<TRes>
    implements CopyWith$Input$TransactionsOrderByWithRelationInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsOrderByWithRelationInput(this._res);

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
    Input$SellersOrderByWithRelationInput? seller,
    Input$CityOrderByWithRelationInput? city,
    Enum$SortOrder? transaction_type_id,
    Input$TransactionTypesOrderByWithRelationInput? transaction_type,
    Enum$SortOrder? status_id,
    Input$TransactionStatusOrderByWithRelationInput? status,
    Input$PayementsOrderByRelationAggregateInput? Payements,
  }) =>
      _res;
  CopyWith$Input$SellersOrderByWithRelationInput<TRes> get seller =>
      CopyWith$Input$SellersOrderByWithRelationInput.stub(_res);
  CopyWith$Input$CityOrderByWithRelationInput<TRes> get city =>
      CopyWith$Input$CityOrderByWithRelationInput.stub(_res);
  CopyWith$Input$TransactionTypesOrderByWithRelationInput<TRes>
      get transaction_type =>
          CopyWith$Input$TransactionTypesOrderByWithRelationInput.stub(_res);
  CopyWith$Input$TransactionStatusOrderByWithRelationInput<TRes> get status =>
      CopyWith$Input$TransactionStatusOrderByWithRelationInput.stub(_res);
  CopyWith$Input$PayementsOrderByRelationAggregateInput<TRes> get Payements =>
      CopyWith$Input$PayementsOrderByRelationAggregateInput.stub(_res);
}

class Input$SellersOrderByWithRelationInput {
  factory Input$SellersOrderByWithRelationInput({
    Enum$SortOrder? seller_id,
    Enum$SortOrder? seller_name,
    Enum$SortOrder? seller_phone,
    Enum$SortOrder? picture,
    Input$TransactionsOrderByRelationAggregateInput? Transactions,
  }) =>
      Input$SellersOrderByWithRelationInput._({
        if (seller_id != null) r'seller_id': seller_id,
        if (seller_name != null) r'seller_name': seller_name,
        if (seller_phone != null) r'seller_phone': seller_phone,
        if (picture != null) r'picture': picture,
        if (Transactions != null) r'Transactions': Transactions,
      });

  Input$SellersOrderByWithRelationInput._(this._$data);

  factory Input$SellersOrderByWithRelationInput.fromJson(
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
    if (data.containsKey('Transactions')) {
      final l$Transactions = data['Transactions'];
      result$data['Transactions'] = l$Transactions == null
          ? null
          : Input$TransactionsOrderByRelationAggregateInput.fromJson(
              (l$Transactions as Map<String, dynamic>));
    }
    return Input$SellersOrderByWithRelationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get seller_id => (_$data['seller_id'] as Enum$SortOrder?);
  Enum$SortOrder? get seller_name => (_$data['seller_name'] as Enum$SortOrder?);
  Enum$SortOrder? get seller_phone =>
      (_$data['seller_phone'] as Enum$SortOrder?);
  Enum$SortOrder? get picture => (_$data['picture'] as Enum$SortOrder?);
  Input$TransactionsOrderByRelationAggregateInput? get Transactions =>
      (_$data['Transactions']
          as Input$TransactionsOrderByRelationAggregateInput?);
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
    if (_$data.containsKey('Transactions')) {
      final l$Transactions = Transactions;
      result$data['Transactions'] = l$Transactions?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$SellersOrderByWithRelationInput<
          Input$SellersOrderByWithRelationInput>
      get copyWith => CopyWith$Input$SellersOrderByWithRelationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SellersOrderByWithRelationInput) ||
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
    final l$seller_id = seller_id;
    final l$seller_name = seller_name;
    final l$seller_phone = seller_phone;
    final l$picture = picture;
    final l$Transactions = Transactions;
    return Object.hashAll([
      _$data.containsKey('seller_id') ? l$seller_id : const {},
      _$data.containsKey('seller_name') ? l$seller_name : const {},
      _$data.containsKey('seller_phone') ? l$seller_phone : const {},
      _$data.containsKey('picture') ? l$picture : const {},
      _$data.containsKey('Transactions') ? l$Transactions : const {},
    ]);
  }
}

abstract class CopyWith$Input$SellersOrderByWithRelationInput<TRes> {
  factory CopyWith$Input$SellersOrderByWithRelationInput(
    Input$SellersOrderByWithRelationInput instance,
    TRes Function(Input$SellersOrderByWithRelationInput) then,
  ) = _CopyWithImpl$Input$SellersOrderByWithRelationInput;

  factory CopyWith$Input$SellersOrderByWithRelationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SellersOrderByWithRelationInput;

  TRes call({
    Enum$SortOrder? seller_id,
    Enum$SortOrder? seller_name,
    Enum$SortOrder? seller_phone,
    Enum$SortOrder? picture,
    Input$TransactionsOrderByRelationAggregateInput? Transactions,
  });
  CopyWith$Input$TransactionsOrderByRelationAggregateInput<TRes>
      get Transactions;
}

class _CopyWithImpl$Input$SellersOrderByWithRelationInput<TRes>
    implements CopyWith$Input$SellersOrderByWithRelationInput<TRes> {
  _CopyWithImpl$Input$SellersOrderByWithRelationInput(
    this._instance,
    this._then,
  );

  final Input$SellersOrderByWithRelationInput _instance;

  final TRes Function(Input$SellersOrderByWithRelationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? seller_id = _undefined,
    Object? seller_name = _undefined,
    Object? seller_phone = _undefined,
    Object? picture = _undefined,
    Object? Transactions = _undefined,
  }) =>
      _then(Input$SellersOrderByWithRelationInput._({
        ..._instance._$data,
        if (seller_id != _undefined)
          'seller_id': (seller_id as Enum$SortOrder?),
        if (seller_name != _undefined)
          'seller_name': (seller_name as Enum$SortOrder?),
        if (seller_phone != _undefined)
          'seller_phone': (seller_phone as Enum$SortOrder?),
        if (picture != _undefined) 'picture': (picture as Enum$SortOrder?),
        if (Transactions != _undefined)
          'Transactions': (Transactions
              as Input$TransactionsOrderByRelationAggregateInput?),
      }));
  CopyWith$Input$TransactionsOrderByRelationAggregateInput<TRes>
      get Transactions {
    final local$Transactions = _instance.Transactions;
    return local$Transactions == null
        ? CopyWith$Input$TransactionsOrderByRelationAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionsOrderByRelationAggregateInput(
            local$Transactions, (e) => call(Transactions: e));
  }
}

class _CopyWithStubImpl$Input$SellersOrderByWithRelationInput<TRes>
    implements CopyWith$Input$SellersOrderByWithRelationInput<TRes> {
  _CopyWithStubImpl$Input$SellersOrderByWithRelationInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? seller_id,
    Enum$SortOrder? seller_name,
    Enum$SortOrder? seller_phone,
    Enum$SortOrder? picture,
    Input$TransactionsOrderByRelationAggregateInput? Transactions,
  }) =>
      _res;
  CopyWith$Input$TransactionsOrderByRelationAggregateInput<TRes>
      get Transactions =>
          CopyWith$Input$TransactionsOrderByRelationAggregateInput.stub(_res);
}

class Input$TransactionTypesOrderByWithRelationInput {
  factory Input$TransactionTypesOrderByWithRelationInput({
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? type_name,
    Enum$SortOrder? description,
    Input$TransactionsOrderByRelationAggregateInput? Transactions,
  }) =>
      Input$TransactionTypesOrderByWithRelationInput._({
        if (transaction_type_id != null)
          r'transaction_type_id': transaction_type_id,
        if (type_name != null) r'type_name': type_name,
        if (description != null) r'description': description,
        if (Transactions != null) r'Transactions': Transactions,
      });

  Input$TransactionTypesOrderByWithRelationInput._(this._$data);

  factory Input$TransactionTypesOrderByWithRelationInput.fromJson(
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
    if (data.containsKey('Transactions')) {
      final l$Transactions = data['Transactions'];
      result$data['Transactions'] = l$Transactions == null
          ? null
          : Input$TransactionsOrderByRelationAggregateInput.fromJson(
              (l$Transactions as Map<String, dynamic>));
    }
    return Input$TransactionTypesOrderByWithRelationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_type_id =>
      (_$data['transaction_type_id'] as Enum$SortOrder?);
  Enum$SortOrder? get type_name => (_$data['type_name'] as Enum$SortOrder?);
  Enum$SortOrder? get description => (_$data['description'] as Enum$SortOrder?);
  Input$TransactionsOrderByRelationAggregateInput? get Transactions =>
      (_$data['Transactions']
          as Input$TransactionsOrderByRelationAggregateInput?);
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
    if (_$data.containsKey('Transactions')) {
      final l$Transactions = Transactions;
      result$data['Transactions'] = l$Transactions?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionTypesOrderByWithRelationInput<
          Input$TransactionTypesOrderByWithRelationInput>
      get copyWith => CopyWith$Input$TransactionTypesOrderByWithRelationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionTypesOrderByWithRelationInput) ||
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
    final l$transaction_type_id = transaction_type_id;
    final l$type_name = type_name;
    final l$description = description;
    final l$Transactions = Transactions;
    return Object.hashAll([
      _$data.containsKey('transaction_type_id')
          ? l$transaction_type_id
          : const {},
      _$data.containsKey('type_name') ? l$type_name : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('Transactions') ? l$Transactions : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionTypesOrderByWithRelationInput<TRes> {
  factory CopyWith$Input$TransactionTypesOrderByWithRelationInput(
    Input$TransactionTypesOrderByWithRelationInput instance,
    TRes Function(Input$TransactionTypesOrderByWithRelationInput) then,
  ) = _CopyWithImpl$Input$TransactionTypesOrderByWithRelationInput;

  factory CopyWith$Input$TransactionTypesOrderByWithRelationInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionTypesOrderByWithRelationInput;

  TRes call({
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? type_name,
    Enum$SortOrder? description,
    Input$TransactionsOrderByRelationAggregateInput? Transactions,
  });
  CopyWith$Input$TransactionsOrderByRelationAggregateInput<TRes>
      get Transactions;
}

class _CopyWithImpl$Input$TransactionTypesOrderByWithRelationInput<TRes>
    implements CopyWith$Input$TransactionTypesOrderByWithRelationInput<TRes> {
  _CopyWithImpl$Input$TransactionTypesOrderByWithRelationInput(
    this._instance,
    this._then,
  );

  final Input$TransactionTypesOrderByWithRelationInput _instance;

  final TRes Function(Input$TransactionTypesOrderByWithRelationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_type_id = _undefined,
    Object? type_name = _undefined,
    Object? description = _undefined,
    Object? Transactions = _undefined,
  }) =>
      _then(Input$TransactionTypesOrderByWithRelationInput._({
        ..._instance._$data,
        if (transaction_type_id != _undefined)
          'transaction_type_id': (transaction_type_id as Enum$SortOrder?),
        if (type_name != _undefined)
          'type_name': (type_name as Enum$SortOrder?),
        if (description != _undefined)
          'description': (description as Enum$SortOrder?),
        if (Transactions != _undefined)
          'Transactions': (Transactions
              as Input$TransactionsOrderByRelationAggregateInput?),
      }));
  CopyWith$Input$TransactionsOrderByRelationAggregateInput<TRes>
      get Transactions {
    final local$Transactions = _instance.Transactions;
    return local$Transactions == null
        ? CopyWith$Input$TransactionsOrderByRelationAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionsOrderByRelationAggregateInput(
            local$Transactions, (e) => call(Transactions: e));
  }
}

class _CopyWithStubImpl$Input$TransactionTypesOrderByWithRelationInput<TRes>
    implements CopyWith$Input$TransactionTypesOrderByWithRelationInput<TRes> {
  _CopyWithStubImpl$Input$TransactionTypesOrderByWithRelationInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? transaction_type_id,
    Enum$SortOrder? type_name,
    Enum$SortOrder? description,
    Input$TransactionsOrderByRelationAggregateInput? Transactions,
  }) =>
      _res;
  CopyWith$Input$TransactionsOrderByRelationAggregateInput<TRes>
      get Transactions =>
          CopyWith$Input$TransactionsOrderByRelationAggregateInput.stub(_res);
}

class Input$TransactionStatusOrderByWithRelationInput {
  factory Input$TransactionStatusOrderByWithRelationInput({
    Enum$SortOrder? transaction_status_id,
    Enum$SortOrder? name,
    Enum$SortOrder? description,
    Input$TransactionsOrderByRelationAggregateInput? Transactions,
  }) =>
      Input$TransactionStatusOrderByWithRelationInput._({
        if (transaction_status_id != null)
          r'transaction_status_id': transaction_status_id,
        if (name != null) r'name': name,
        if (description != null) r'description': description,
        if (Transactions != null) r'Transactions': Transactions,
      });

  Input$TransactionStatusOrderByWithRelationInput._(this._$data);

  factory Input$TransactionStatusOrderByWithRelationInput.fromJson(
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
    if (data.containsKey('Transactions')) {
      final l$Transactions = data['Transactions'];
      result$data['Transactions'] = l$Transactions == null
          ? null
          : Input$TransactionsOrderByRelationAggregateInput.fromJson(
              (l$Transactions as Map<String, dynamic>));
    }
    return Input$TransactionStatusOrderByWithRelationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get transaction_status_id =>
      (_$data['transaction_status_id'] as Enum$SortOrder?);
  Enum$SortOrder? get name => (_$data['name'] as Enum$SortOrder?);
  Enum$SortOrder? get description => (_$data['description'] as Enum$SortOrder?);
  Input$TransactionsOrderByRelationAggregateInput? get Transactions =>
      (_$data['Transactions']
          as Input$TransactionsOrderByRelationAggregateInput?);
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
    if (_$data.containsKey('Transactions')) {
      final l$Transactions = Transactions;
      result$data['Transactions'] = l$Transactions?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionStatusOrderByWithRelationInput<
          Input$TransactionStatusOrderByWithRelationInput>
      get copyWith => CopyWith$Input$TransactionStatusOrderByWithRelationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionStatusOrderByWithRelationInput) ||
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
    final l$transaction_status_id = transaction_status_id;
    final l$name = name;
    final l$description = description;
    final l$Transactions = Transactions;
    return Object.hashAll([
      _$data.containsKey('transaction_status_id')
          ? l$transaction_status_id
          : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('Transactions') ? l$Transactions : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionStatusOrderByWithRelationInput<TRes> {
  factory CopyWith$Input$TransactionStatusOrderByWithRelationInput(
    Input$TransactionStatusOrderByWithRelationInput instance,
    TRes Function(Input$TransactionStatusOrderByWithRelationInput) then,
  ) = _CopyWithImpl$Input$TransactionStatusOrderByWithRelationInput;

  factory CopyWith$Input$TransactionStatusOrderByWithRelationInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionStatusOrderByWithRelationInput;

  TRes call({
    Enum$SortOrder? transaction_status_id,
    Enum$SortOrder? name,
    Enum$SortOrder? description,
    Input$TransactionsOrderByRelationAggregateInput? Transactions,
  });
  CopyWith$Input$TransactionsOrderByRelationAggregateInput<TRes>
      get Transactions;
}

class _CopyWithImpl$Input$TransactionStatusOrderByWithRelationInput<TRes>
    implements CopyWith$Input$TransactionStatusOrderByWithRelationInput<TRes> {
  _CopyWithImpl$Input$TransactionStatusOrderByWithRelationInput(
    this._instance,
    this._then,
  );

  final Input$TransactionStatusOrderByWithRelationInput _instance;

  final TRes Function(Input$TransactionStatusOrderByWithRelationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_status_id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? Transactions = _undefined,
  }) =>
      _then(Input$TransactionStatusOrderByWithRelationInput._({
        ..._instance._$data,
        if (transaction_status_id != _undefined)
          'transaction_status_id': (transaction_status_id as Enum$SortOrder?),
        if (name != _undefined) 'name': (name as Enum$SortOrder?),
        if (description != _undefined)
          'description': (description as Enum$SortOrder?),
        if (Transactions != _undefined)
          'Transactions': (Transactions
              as Input$TransactionsOrderByRelationAggregateInput?),
      }));
  CopyWith$Input$TransactionsOrderByRelationAggregateInput<TRes>
      get Transactions {
    final local$Transactions = _instance.Transactions;
    return local$Transactions == null
        ? CopyWith$Input$TransactionsOrderByRelationAggregateInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionsOrderByRelationAggregateInput(
            local$Transactions, (e) => call(Transactions: e));
  }
}

class _CopyWithStubImpl$Input$TransactionStatusOrderByWithRelationInput<TRes>
    implements CopyWith$Input$TransactionStatusOrderByWithRelationInput<TRes> {
  _CopyWithStubImpl$Input$TransactionStatusOrderByWithRelationInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? transaction_status_id,
    Enum$SortOrder? name,
    Enum$SortOrder? description,
    Input$TransactionsOrderByRelationAggregateInput? Transactions,
  }) =>
      _res;
  CopyWith$Input$TransactionsOrderByRelationAggregateInput<TRes>
      get Transactions =>
          CopyWith$Input$TransactionsOrderByRelationAggregateInput.stub(_res);
}

class Input$PayementsOrderByRelationAggregateInput {
  factory Input$PayementsOrderByRelationAggregateInput(
          {Enum$SortOrder? $_count}) =>
      Input$PayementsOrderByRelationAggregateInput._({
        if ($_count != null) r'_count': $_count,
      });

  Input$PayementsOrderByRelationAggregateInput._(this._$data);

  factory Input$PayementsOrderByRelationAggregateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_count')) {
      final l$$_count = data['_count'];
      result$data['_count'] = l$$_count == null
          ? null
          : fromJson$Enum$SortOrder((l$$_count as String));
    }
    return Input$PayementsOrderByRelationAggregateInput._(result$data);
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

  CopyWith$Input$PayementsOrderByRelationAggregateInput<
          Input$PayementsOrderByRelationAggregateInput>
      get copyWith => CopyWith$Input$PayementsOrderByRelationAggregateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PayementsOrderByRelationAggregateInput) ||
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

abstract class CopyWith$Input$PayementsOrderByRelationAggregateInput<TRes> {
  factory CopyWith$Input$PayementsOrderByRelationAggregateInput(
    Input$PayementsOrderByRelationAggregateInput instance,
    TRes Function(Input$PayementsOrderByRelationAggregateInput) then,
  ) = _CopyWithImpl$Input$PayementsOrderByRelationAggregateInput;

  factory CopyWith$Input$PayementsOrderByRelationAggregateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PayementsOrderByRelationAggregateInput;

  TRes call({Enum$SortOrder? $_count});
}

class _CopyWithImpl$Input$PayementsOrderByRelationAggregateInput<TRes>
    implements CopyWith$Input$PayementsOrderByRelationAggregateInput<TRes> {
  _CopyWithImpl$Input$PayementsOrderByRelationAggregateInput(
    this._instance,
    this._then,
  );

  final Input$PayementsOrderByRelationAggregateInput _instance;

  final TRes Function(Input$PayementsOrderByRelationAggregateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_count = _undefined}) =>
      _then(Input$PayementsOrderByRelationAggregateInput._({
        ..._instance._$data,
        if ($_count != _undefined) '_count': ($_count as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$PayementsOrderByRelationAggregateInput<TRes>
    implements CopyWith$Input$PayementsOrderByRelationAggregateInput<TRes> {
  _CopyWithStubImpl$Input$PayementsOrderByRelationAggregateInput(this._res);

  TRes _res;

  call({Enum$SortOrder? $_count}) => _res;
}

class Input$TransactionsWhereUniqueInput {
  factory Input$TransactionsWhereUniqueInput({int? transaction_id}) =>
      Input$TransactionsWhereUniqueInput._({
        if (transaction_id != null) r'transaction_id': transaction_id,
      });

  Input$TransactionsWhereUniqueInput._(this._$data);

  factory Input$TransactionsWhereUniqueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = (l$transaction_id as int?);
    }
    return Input$TransactionsWhereUniqueInput._(result$data);
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

  CopyWith$Input$TransactionsWhereUniqueInput<
          Input$TransactionsWhereUniqueInput>
      get copyWith => CopyWith$Input$TransactionsWhereUniqueInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsWhereUniqueInput) ||
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

abstract class CopyWith$Input$TransactionsWhereUniqueInput<TRes> {
  factory CopyWith$Input$TransactionsWhereUniqueInput(
    Input$TransactionsWhereUniqueInput instance,
    TRes Function(Input$TransactionsWhereUniqueInput) then,
  ) = _CopyWithImpl$Input$TransactionsWhereUniqueInput;

  factory CopyWith$Input$TransactionsWhereUniqueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionsWhereUniqueInput;

  TRes call({int? transaction_id});
}

class _CopyWithImpl$Input$TransactionsWhereUniqueInput<TRes>
    implements CopyWith$Input$TransactionsWhereUniqueInput<TRes> {
  _CopyWithImpl$Input$TransactionsWhereUniqueInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsWhereUniqueInput _instance;

  final TRes Function(Input$TransactionsWhereUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? transaction_id = _undefined}) =>
      _then(Input$TransactionsWhereUniqueInput._({
        ..._instance._$data,
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as int?),
      }));
}

class _CopyWithStubImpl$Input$TransactionsWhereUniqueInput<TRes>
    implements CopyWith$Input$TransactionsWhereUniqueInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsWhereUniqueInput(this._res);

  TRes _res;

  call({int? transaction_id}) => _res;
}

class Input$PayementsOrderByWithRelationInput {
  factory Input$PayementsOrderByWithRelationInput({
    Enum$SortOrder? payement_id,
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? payement,
    Input$TransactionsOrderByWithRelationInput? transaction,
  }) =>
      Input$PayementsOrderByWithRelationInput._({
        if (payement_id != null) r'payement_id': payement_id,
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (payement != null) r'payement': payement,
        if (transaction != null) r'transaction': transaction,
      });

  Input$PayementsOrderByWithRelationInput._(this._$data);

  factory Input$PayementsOrderByWithRelationInput.fromJson(
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
    if (data.containsKey('transaction')) {
      final l$transaction = data['transaction'];
      result$data['transaction'] = l$transaction == null
          ? null
          : Input$TransactionsOrderByWithRelationInput.fromJson(
              (l$transaction as Map<String, dynamic>));
    }
    return Input$PayementsOrderByWithRelationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get payement_id => (_$data['payement_id'] as Enum$SortOrder?);
  Enum$SortOrder? get transaction_id =>
      (_$data['transaction_id'] as Enum$SortOrder?);
  Enum$SortOrder? get payement => (_$data['payement'] as Enum$SortOrder?);
  Input$TransactionsOrderByWithRelationInput? get transaction =>
      (_$data['transaction'] as Input$TransactionsOrderByWithRelationInput?);
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
    if (_$data.containsKey('transaction')) {
      final l$transaction = transaction;
      result$data['transaction'] = l$transaction?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PayementsOrderByWithRelationInput<
          Input$PayementsOrderByWithRelationInput>
      get copyWith => CopyWith$Input$PayementsOrderByWithRelationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PayementsOrderByWithRelationInput) ||
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
    final l$transaction = transaction;
    final lOther$transaction = other.transaction;
    if (_$data.containsKey('transaction') !=
        other._$data.containsKey('transaction')) {
      return false;
    }
    if (l$transaction != lOther$transaction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$payement_id = payement_id;
    final l$transaction_id = transaction_id;
    final l$payement = payement;
    final l$transaction = transaction;
    return Object.hashAll([
      _$data.containsKey('payement_id') ? l$payement_id : const {},
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('payement') ? l$payement : const {},
      _$data.containsKey('transaction') ? l$transaction : const {},
    ]);
  }
}

abstract class CopyWith$Input$PayementsOrderByWithRelationInput<TRes> {
  factory CopyWith$Input$PayementsOrderByWithRelationInput(
    Input$PayementsOrderByWithRelationInput instance,
    TRes Function(Input$PayementsOrderByWithRelationInput) then,
  ) = _CopyWithImpl$Input$PayementsOrderByWithRelationInput;

  factory CopyWith$Input$PayementsOrderByWithRelationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PayementsOrderByWithRelationInput;

  TRes call({
    Enum$SortOrder? payement_id,
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? payement,
    Input$TransactionsOrderByWithRelationInput? transaction,
  });
  CopyWith$Input$TransactionsOrderByWithRelationInput<TRes> get transaction;
}

class _CopyWithImpl$Input$PayementsOrderByWithRelationInput<TRes>
    implements CopyWith$Input$PayementsOrderByWithRelationInput<TRes> {
  _CopyWithImpl$Input$PayementsOrderByWithRelationInput(
    this._instance,
    this._then,
  );

  final Input$PayementsOrderByWithRelationInput _instance;

  final TRes Function(Input$PayementsOrderByWithRelationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payement_id = _undefined,
    Object? transaction_id = _undefined,
    Object? payement = _undefined,
    Object? transaction = _undefined,
  }) =>
      _then(Input$PayementsOrderByWithRelationInput._({
        ..._instance._$data,
        if (payement_id != _undefined)
          'payement_id': (payement_id as Enum$SortOrder?),
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Enum$SortOrder?),
        if (payement != _undefined) 'payement': (payement as Enum$SortOrder?),
        if (transaction != _undefined)
          'transaction':
              (transaction as Input$TransactionsOrderByWithRelationInput?),
      }));
  CopyWith$Input$TransactionsOrderByWithRelationInput<TRes> get transaction {
    final local$transaction = _instance.transaction;
    return local$transaction == null
        ? CopyWith$Input$TransactionsOrderByWithRelationInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionsOrderByWithRelationInput(
            local$transaction, (e) => call(transaction: e));
  }
}

class _CopyWithStubImpl$Input$PayementsOrderByWithRelationInput<TRes>
    implements CopyWith$Input$PayementsOrderByWithRelationInput<TRes> {
  _CopyWithStubImpl$Input$PayementsOrderByWithRelationInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? payement_id,
    Enum$SortOrder? transaction_id,
    Enum$SortOrder? payement,
    Input$TransactionsOrderByWithRelationInput? transaction,
  }) =>
      _res;
  CopyWith$Input$TransactionsOrderByWithRelationInput<TRes> get transaction =>
      CopyWith$Input$TransactionsOrderByWithRelationInput.stub(_res);
}

enum Enum$SortOrder { asc, desc, $unknown }

String toJson$Enum$SortOrder(Enum$SortOrder e) {
  switch (e) {
    case Enum$SortOrder.asc:
      return r'asc';
    case Enum$SortOrder.desc:
      return r'desc';
    case Enum$SortOrder.$unknown:
      return r'$unknown';
  }
}

Enum$SortOrder fromJson$Enum$SortOrder(String value) {
  switch (value) {
    case r'asc':
      return Enum$SortOrder.asc;
    case r'desc':
      return Enum$SortOrder.desc;
    default:
      return Enum$SortOrder.$unknown;
  }
}

enum Enum$TransactionsScalarFieldEnum {
  transaction_id,
  seller_id,
  product_id,
  customer_name,
  customer_phone,
  city_id,
  address,
  quantity,
  date,
  remainingPayement,
  totalPayement,
  transaction_type_id,
  status_id,
  $unknown
}

String toJson$Enum$TransactionsScalarFieldEnum(
    Enum$TransactionsScalarFieldEnum e) {
  switch (e) {
    case Enum$TransactionsScalarFieldEnum.transaction_id:
      return r'transaction_id';
    case Enum$TransactionsScalarFieldEnum.seller_id:
      return r'seller_id';
    case Enum$TransactionsScalarFieldEnum.product_id:
      return r'product_id';
    case Enum$TransactionsScalarFieldEnum.customer_name:
      return r'customer_name';
    case Enum$TransactionsScalarFieldEnum.customer_phone:
      return r'customer_phone';
    case Enum$TransactionsScalarFieldEnum.city_id:
      return r'city_id';
    case Enum$TransactionsScalarFieldEnum.address:
      return r'address';
    case Enum$TransactionsScalarFieldEnum.quantity:
      return r'quantity';
    case Enum$TransactionsScalarFieldEnum.date:
      return r'date';
    case Enum$TransactionsScalarFieldEnum.remainingPayement:
      return r'remainingPayement';
    case Enum$TransactionsScalarFieldEnum.totalPayement:
      return r'totalPayement';
    case Enum$TransactionsScalarFieldEnum.transaction_type_id:
      return r'transaction_type_id';
    case Enum$TransactionsScalarFieldEnum.status_id:
      return r'status_id';
    case Enum$TransactionsScalarFieldEnum.$unknown:
      return r'$unknown';
  }
}

Enum$TransactionsScalarFieldEnum fromJson$Enum$TransactionsScalarFieldEnum(
    String value) {
  switch (value) {
    case r'transaction_id':
      return Enum$TransactionsScalarFieldEnum.transaction_id;
    case r'seller_id':
      return Enum$TransactionsScalarFieldEnum.seller_id;
    case r'product_id':
      return Enum$TransactionsScalarFieldEnum.product_id;
    case r'customer_name':
      return Enum$TransactionsScalarFieldEnum.customer_name;
    case r'customer_phone':
      return Enum$TransactionsScalarFieldEnum.customer_phone;
    case r'city_id':
      return Enum$TransactionsScalarFieldEnum.city_id;
    case r'address':
      return Enum$TransactionsScalarFieldEnum.address;
    case r'quantity':
      return Enum$TransactionsScalarFieldEnum.quantity;
    case r'date':
      return Enum$TransactionsScalarFieldEnum.date;
    case r'remainingPayement':
      return Enum$TransactionsScalarFieldEnum.remainingPayement;
    case r'totalPayement':
      return Enum$TransactionsScalarFieldEnum.totalPayement;
    case r'transaction_type_id':
      return Enum$TransactionsScalarFieldEnum.transaction_type_id;
    case r'status_id':
      return Enum$TransactionsScalarFieldEnum.status_id;
    default:
      return Enum$TransactionsScalarFieldEnum.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
