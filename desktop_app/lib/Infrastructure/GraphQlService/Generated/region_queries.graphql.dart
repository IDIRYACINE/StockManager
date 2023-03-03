import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema1.graphql.dart';
import 'schema6.graphql.dart';

class Variables$Mutation$CreateOneCity {
  factory Variables$Mutation$CreateOneCity(
          {required Input$CityCreateInput data}) =>
      Variables$Mutation$CreateOneCity._({
        r'data': data,
      });

  Variables$Mutation$CreateOneCity._(this._$data);

  factory Variables$Mutation$CreateOneCity.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$CityCreateInput.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$CreateOneCity._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CityCreateInput get data => (_$data['data'] as Input$CityCreateInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateOneCity<Variables$Mutation$CreateOneCity>
      get copyWith => CopyWith$Variables$Mutation$CreateOneCity(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateOneCity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([l$data]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateOneCity<TRes> {
  factory CopyWith$Variables$Mutation$CreateOneCity(
    Variables$Mutation$CreateOneCity instance,
    TRes Function(Variables$Mutation$CreateOneCity) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateOneCity;

  factory CopyWith$Variables$Mutation$CreateOneCity.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateOneCity;

  TRes call({Input$CityCreateInput? data});
}

class _CopyWithImpl$Variables$Mutation$CreateOneCity<TRes>
    implements CopyWith$Variables$Mutation$CreateOneCity<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateOneCity(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateOneCity _instance;

  final TRes Function(Variables$Mutation$CreateOneCity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$CreateOneCity._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$CityCreateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateOneCity<TRes>
    implements CopyWith$Variables$Mutation$CreateOneCity<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateOneCity(this._res);

  TRes _res;

  call({Input$CityCreateInput? data}) => _res;
}

class Mutation$CreateOneCity {
  Mutation$CreateOneCity({
    required this.createOneCity,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateOneCity.fromJson(Map<String, dynamic> json) {
    final l$createOneCity = json['createOneCity'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOneCity(
      createOneCity: Mutation$CreateOneCity$createOneCity.fromJson(
          (l$createOneCity as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateOneCity$createOneCity createOneCity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createOneCity = createOneCity;
    _resultData['createOneCity'] = l$createOneCity.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createOneCity = createOneCity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createOneCity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOneCity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createOneCity = createOneCity;
    final lOther$createOneCity = other.createOneCity;
    if (l$createOneCity != lOther$createOneCity) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateOneCity on Mutation$CreateOneCity {
  CopyWith$Mutation$CreateOneCity<Mutation$CreateOneCity> get copyWith =>
      CopyWith$Mutation$CreateOneCity(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateOneCity<TRes> {
  factory CopyWith$Mutation$CreateOneCity(
    Mutation$CreateOneCity instance,
    TRes Function(Mutation$CreateOneCity) then,
  ) = _CopyWithImpl$Mutation$CreateOneCity;

  factory CopyWith$Mutation$CreateOneCity.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOneCity;

  TRes call({
    Mutation$CreateOneCity$createOneCity? createOneCity,
    String? $__typename,
  });
  CopyWith$Mutation$CreateOneCity$createOneCity<TRes> get createOneCity;
}

class _CopyWithImpl$Mutation$CreateOneCity<TRes>
    implements CopyWith$Mutation$CreateOneCity<TRes> {
  _CopyWithImpl$Mutation$CreateOneCity(
    this._instance,
    this._then,
  );

  final Mutation$CreateOneCity _instance;

  final TRes Function(Mutation$CreateOneCity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createOneCity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOneCity(
        createOneCity: createOneCity == _undefined || createOneCity == null
            ? _instance.createOneCity
            : (createOneCity as Mutation$CreateOneCity$createOneCity),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreateOneCity$createOneCity<TRes> get createOneCity {
    final local$createOneCity = _instance.createOneCity;
    return CopyWith$Mutation$CreateOneCity$createOneCity(
        local$createOneCity, (e) => call(createOneCity: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateOneCity<TRes>
    implements CopyWith$Mutation$CreateOneCity<TRes> {
  _CopyWithStubImpl$Mutation$CreateOneCity(this._res);

  TRes _res;

  call({
    Mutation$CreateOneCity$createOneCity? createOneCity,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateOneCity$createOneCity<TRes> get createOneCity =>
      CopyWith$Mutation$CreateOneCity$createOneCity.stub(_res);
}

const documentNodeMutationCreateOneCity = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateOneCity'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'CityCreateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createOneCity'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'city_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$CreateOneCity _parserFn$Mutation$CreateOneCity(
        Map<String, dynamic> data) =>
    Mutation$CreateOneCity.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateOneCity = FutureOr<void> Function(
  dynamic,
  Mutation$CreateOneCity?,
);

class Options$Mutation$CreateOneCity
    extends graphql.MutationOptions<Mutation$CreateOneCity> {
  Options$Mutation$CreateOneCity({
    String? operationName,
    required Variables$Mutation$CreateOneCity variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOneCity? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOneCity>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$CreateOneCity(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOneCity,
          parserFn: _parserFn$Mutation$CreateOneCity,
        );

  final OnMutationCompleted$Mutation$CreateOneCity? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateOneCity
    extends graphql.WatchQueryOptions<Mutation$CreateOneCity> {
  WatchOptions$Mutation$CreateOneCity({
    String? operationName,
    required Variables$Mutation$CreateOneCity variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationCreateOneCity,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateOneCity,
        );
}

extension ClientExtension$Mutation$CreateOneCity on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateOneCity>> mutate$CreateOneCity(
          Options$Mutation$CreateOneCity options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateOneCity> watchMutation$CreateOneCity(
          WatchOptions$Mutation$CreateOneCity options) =>
      this.watchMutation(options);
}

class Mutation$CreateOneCity$createOneCity {
  Mutation$CreateOneCity$createOneCity({
    required this.city_id,
    this.$__typename = 'City',
  });

  factory Mutation$CreateOneCity$createOneCity.fromJson(
      Map<String, dynamic> json) {
    final l$city_id = json['city_id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOneCity$createOneCity(
      city_id: (l$city_id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int city_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$city_id = city_id;
    _resultData['city_id'] = l$city_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$city_id = city_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$city_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOneCity$createOneCity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$city_id = city_id;
    final lOther$city_id = other.city_id;
    if (l$city_id != lOther$city_id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateOneCity$createOneCity
    on Mutation$CreateOneCity$createOneCity {
  CopyWith$Mutation$CreateOneCity$createOneCity<
          Mutation$CreateOneCity$createOneCity>
      get copyWith => CopyWith$Mutation$CreateOneCity$createOneCity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOneCity$createOneCity<TRes> {
  factory CopyWith$Mutation$CreateOneCity$createOneCity(
    Mutation$CreateOneCity$createOneCity instance,
    TRes Function(Mutation$CreateOneCity$createOneCity) then,
  ) = _CopyWithImpl$Mutation$CreateOneCity$createOneCity;

  factory CopyWith$Mutation$CreateOneCity$createOneCity.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOneCity$createOneCity;

  TRes call({
    int? city_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateOneCity$createOneCity<TRes>
    implements CopyWith$Mutation$CreateOneCity$createOneCity<TRes> {
  _CopyWithImpl$Mutation$CreateOneCity$createOneCity(
    this._instance,
    this._then,
  );

  final Mutation$CreateOneCity$createOneCity _instance;

  final TRes Function(Mutation$CreateOneCity$createOneCity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? city_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOneCity$createOneCity(
        city_id: city_id == _undefined || city_id == null
            ? _instance.city_id
            : (city_id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateOneCity$createOneCity<TRes>
    implements CopyWith$Mutation$CreateOneCity$createOneCity<TRes> {
  _CopyWithStubImpl$Mutation$CreateOneCity$createOneCity(this._res);

  TRes _res;

  call({
    int? city_id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateOneCity {
  factory Variables$Mutation$UpdateOneCity({
    required Input$CityUpdateInput data,
    required Input$CityWhereUniqueInput where,
  }) =>
      Variables$Mutation$UpdateOneCity._({
        r'data': data,
        r'where': where,
      });

  Variables$Mutation$UpdateOneCity._(this._$data);

  factory Variables$Mutation$UpdateOneCity.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$CityUpdateInput.fromJson((l$data as Map<String, dynamic>));
    final l$where = data['where'];
    result$data['where'] =
        Input$CityWhereUniqueInput.fromJson((l$where as Map<String, dynamic>));
    return Variables$Mutation$UpdateOneCity._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CityUpdateInput get data => (_$data['data'] as Input$CityUpdateInput);
  Input$CityWhereUniqueInput get where =>
      (_$data['where'] as Input$CityWhereUniqueInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateOneCity<Variables$Mutation$UpdateOneCity>
      get copyWith => CopyWith$Variables$Mutation$UpdateOneCity(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateOneCity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$where = where;
    return Object.hashAll([
      l$data,
      l$where,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateOneCity<TRes> {
  factory CopyWith$Variables$Mutation$UpdateOneCity(
    Variables$Mutation$UpdateOneCity instance,
    TRes Function(Variables$Mutation$UpdateOneCity) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateOneCity;

  factory CopyWith$Variables$Mutation$UpdateOneCity.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateOneCity;

  TRes call({
    Input$CityUpdateInput? data,
    Input$CityWhereUniqueInput? where,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateOneCity<TRes>
    implements CopyWith$Variables$Mutation$UpdateOneCity<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateOneCity(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateOneCity _instance;

  final TRes Function(Variables$Mutation$UpdateOneCity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateOneCity._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$CityUpdateInput),
        if (where != _undefined && where != null)
          'where': (where as Input$CityWhereUniqueInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateOneCity<TRes>
    implements CopyWith$Variables$Mutation$UpdateOneCity<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateOneCity(this._res);

  TRes _res;

  call({
    Input$CityUpdateInput? data,
    Input$CityWhereUniqueInput? where,
  }) =>
      _res;
}

class Mutation$UpdateOneCity {
  Mutation$UpdateOneCity({
    this.updateOneCity,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateOneCity.fromJson(Map<String, dynamic> json) {
    final l$updateOneCity = json['updateOneCity'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOneCity(
      updateOneCity: l$updateOneCity == null
          ? null
          : Mutation$UpdateOneCity$updateOneCity.fromJson(
              (l$updateOneCity as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateOneCity$updateOneCity? updateOneCity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneCity = updateOneCity;
    _resultData['updateOneCity'] = l$updateOneCity?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneCity = updateOneCity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateOneCity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOneCity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneCity = updateOneCity;
    final lOther$updateOneCity = other.updateOneCity;
    if (l$updateOneCity != lOther$updateOneCity) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateOneCity on Mutation$UpdateOneCity {
  CopyWith$Mutation$UpdateOneCity<Mutation$UpdateOneCity> get copyWith =>
      CopyWith$Mutation$UpdateOneCity(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateOneCity<TRes> {
  factory CopyWith$Mutation$UpdateOneCity(
    Mutation$UpdateOneCity instance,
    TRes Function(Mutation$UpdateOneCity) then,
  ) = _CopyWithImpl$Mutation$UpdateOneCity;

  factory CopyWith$Mutation$UpdateOneCity.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOneCity;

  TRes call({
    Mutation$UpdateOneCity$updateOneCity? updateOneCity,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateOneCity$updateOneCity<TRes> get updateOneCity;
}

class _CopyWithImpl$Mutation$UpdateOneCity<TRes>
    implements CopyWith$Mutation$UpdateOneCity<TRes> {
  _CopyWithImpl$Mutation$UpdateOneCity(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOneCity _instance;

  final TRes Function(Mutation$UpdateOneCity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneCity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOneCity(
        updateOneCity: updateOneCity == _undefined
            ? _instance.updateOneCity
            : (updateOneCity as Mutation$UpdateOneCity$updateOneCity?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateOneCity$updateOneCity<TRes> get updateOneCity {
    final local$updateOneCity = _instance.updateOneCity;
    return local$updateOneCity == null
        ? CopyWith$Mutation$UpdateOneCity$updateOneCity.stub(_then(_instance))
        : CopyWith$Mutation$UpdateOneCity$updateOneCity(
            local$updateOneCity, (e) => call(updateOneCity: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateOneCity<TRes>
    implements CopyWith$Mutation$UpdateOneCity<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOneCity(this._res);

  TRes _res;

  call({
    Mutation$UpdateOneCity$updateOneCity? updateOneCity,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateOneCity$updateOneCity<TRes> get updateOneCity =>
      CopyWith$Mutation$UpdateOneCity$updateOneCity.stub(_res);
}

const documentNodeMutationUpdateOneCity = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateOneCity'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'CityUpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'CityWhereUniqueInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneCity'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'city_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$UpdateOneCity _parserFn$Mutation$UpdateOneCity(
        Map<String, dynamic> data) =>
    Mutation$UpdateOneCity.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateOneCity = FutureOr<void> Function(
  dynamic,
  Mutation$UpdateOneCity?,
);

class Options$Mutation$UpdateOneCity
    extends graphql.MutationOptions<Mutation$UpdateOneCity> {
  Options$Mutation$UpdateOneCity({
    String? operationName,
    required Variables$Mutation$UpdateOneCity variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateOneCity? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateOneCity>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateOneCity(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateOneCity,
          parserFn: _parserFn$Mutation$UpdateOneCity,
        );

  final OnMutationCompleted$Mutation$UpdateOneCity? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateOneCity
    extends graphql.WatchQueryOptions<Mutation$UpdateOneCity> {
  WatchOptions$Mutation$UpdateOneCity({
    String? operationName,
    required Variables$Mutation$UpdateOneCity variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationUpdateOneCity,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateOneCity,
        );
}

extension ClientExtension$Mutation$UpdateOneCity on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateOneCity>> mutate$UpdateOneCity(
          Options$Mutation$UpdateOneCity options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateOneCity> watchMutation$UpdateOneCity(
          WatchOptions$Mutation$UpdateOneCity options) =>
      this.watchMutation(options);
}

class Mutation$UpdateOneCity$updateOneCity {
  Mutation$UpdateOneCity$updateOneCity({
    required this.city_id,
    this.$__typename = 'City',
  });

  factory Mutation$UpdateOneCity$updateOneCity.fromJson(
      Map<String, dynamic> json) {
    final l$city_id = json['city_id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOneCity$updateOneCity(
      city_id: (l$city_id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int city_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$city_id = city_id;
    _resultData['city_id'] = l$city_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$city_id = city_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$city_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOneCity$updateOneCity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$city_id = city_id;
    final lOther$city_id = other.city_id;
    if (l$city_id != lOther$city_id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateOneCity$updateOneCity
    on Mutation$UpdateOneCity$updateOneCity {
  CopyWith$Mutation$UpdateOneCity$updateOneCity<
          Mutation$UpdateOneCity$updateOneCity>
      get copyWith => CopyWith$Mutation$UpdateOneCity$updateOneCity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOneCity$updateOneCity<TRes> {
  factory CopyWith$Mutation$UpdateOneCity$updateOneCity(
    Mutation$UpdateOneCity$updateOneCity instance,
    TRes Function(Mutation$UpdateOneCity$updateOneCity) then,
  ) = _CopyWithImpl$Mutation$UpdateOneCity$updateOneCity;

  factory CopyWith$Mutation$UpdateOneCity$updateOneCity.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOneCity$updateOneCity;

  TRes call({
    int? city_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateOneCity$updateOneCity<TRes>
    implements CopyWith$Mutation$UpdateOneCity$updateOneCity<TRes> {
  _CopyWithImpl$Mutation$UpdateOneCity$updateOneCity(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOneCity$updateOneCity _instance;

  final TRes Function(Mutation$UpdateOneCity$updateOneCity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? city_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOneCity$updateOneCity(
        city_id: city_id == _undefined || city_id == null
            ? _instance.city_id
            : (city_id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateOneCity$updateOneCity<TRes>
    implements CopyWith$Mutation$UpdateOneCity$updateOneCity<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOneCity$updateOneCity(this._res);

  TRes _res;

  call({
    int? city_id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteOneCity {
  factory Variables$Mutation$DeleteOneCity(
          {required Input$CityWhereUniqueInput where}) =>
      Variables$Mutation$DeleteOneCity._({
        r'where': where,
      });

  Variables$Mutation$DeleteOneCity._(this._$data);

  factory Variables$Mutation$DeleteOneCity.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] =
        Input$CityWhereUniqueInput.fromJson((l$where as Map<String, dynamic>));
    return Variables$Mutation$DeleteOneCity._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CityWhereUniqueInput get where =>
      (_$data['where'] as Input$CityWhereUniqueInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteOneCity<Variables$Mutation$DeleteOneCity>
      get copyWith => CopyWith$Variables$Mutation$DeleteOneCity(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteOneCity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    return Object.hashAll([l$where]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteOneCity<TRes> {
  factory CopyWith$Variables$Mutation$DeleteOneCity(
    Variables$Mutation$DeleteOneCity instance,
    TRes Function(Variables$Mutation$DeleteOneCity) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteOneCity;

  factory CopyWith$Variables$Mutation$DeleteOneCity.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteOneCity;

  TRes call({Input$CityWhereUniqueInput? where});
}

class _CopyWithImpl$Variables$Mutation$DeleteOneCity<TRes>
    implements CopyWith$Variables$Mutation$DeleteOneCity<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteOneCity(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteOneCity _instance;

  final TRes Function(Variables$Mutation$DeleteOneCity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) =>
      _then(Variables$Mutation$DeleteOneCity._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$CityWhereUniqueInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteOneCity<TRes>
    implements CopyWith$Variables$Mutation$DeleteOneCity<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteOneCity(this._res);

  TRes _res;

  call({Input$CityWhereUniqueInput? where}) => _res;
}

class Mutation$DeleteOneCity {
  Mutation$DeleteOneCity({
    this.deleteOneCity,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteOneCity.fromJson(Map<String, dynamic> json) {
    final l$deleteOneCity = json['deleteOneCity'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteOneCity(
      deleteOneCity: l$deleteOneCity == null
          ? null
          : Mutation$DeleteOneCity$deleteOneCity.fromJson(
              (l$deleteOneCity as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteOneCity$deleteOneCity? deleteOneCity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteOneCity = deleteOneCity;
    _resultData['deleteOneCity'] = l$deleteOneCity?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteOneCity = deleteOneCity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteOneCity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteOneCity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteOneCity = deleteOneCity;
    final lOther$deleteOneCity = other.deleteOneCity;
    if (l$deleteOneCity != lOther$deleteOneCity) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteOneCity on Mutation$DeleteOneCity {
  CopyWith$Mutation$DeleteOneCity<Mutation$DeleteOneCity> get copyWith =>
      CopyWith$Mutation$DeleteOneCity(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteOneCity<TRes> {
  factory CopyWith$Mutation$DeleteOneCity(
    Mutation$DeleteOneCity instance,
    TRes Function(Mutation$DeleteOneCity) then,
  ) = _CopyWithImpl$Mutation$DeleteOneCity;

  factory CopyWith$Mutation$DeleteOneCity.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteOneCity;

  TRes call({
    Mutation$DeleteOneCity$deleteOneCity? deleteOneCity,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteOneCity$deleteOneCity<TRes> get deleteOneCity;
}

class _CopyWithImpl$Mutation$DeleteOneCity<TRes>
    implements CopyWith$Mutation$DeleteOneCity<TRes> {
  _CopyWithImpl$Mutation$DeleteOneCity(
    this._instance,
    this._then,
  );

  final Mutation$DeleteOneCity _instance;

  final TRes Function(Mutation$DeleteOneCity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteOneCity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteOneCity(
        deleteOneCity: deleteOneCity == _undefined
            ? _instance.deleteOneCity
            : (deleteOneCity as Mutation$DeleteOneCity$deleteOneCity?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$DeleteOneCity$deleteOneCity<TRes> get deleteOneCity {
    final local$deleteOneCity = _instance.deleteOneCity;
    return local$deleteOneCity == null
        ? CopyWith$Mutation$DeleteOneCity$deleteOneCity.stub(_then(_instance))
        : CopyWith$Mutation$DeleteOneCity$deleteOneCity(
            local$deleteOneCity, (e) => call(deleteOneCity: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteOneCity<TRes>
    implements CopyWith$Mutation$DeleteOneCity<TRes> {
  _CopyWithStubImpl$Mutation$DeleteOneCity(this._res);

  TRes _res;

  call({
    Mutation$DeleteOneCity$deleteOneCity? deleteOneCity,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$DeleteOneCity$deleteOneCity<TRes> get deleteOneCity =>
      CopyWith$Mutation$DeleteOneCity$deleteOneCity.stub(_res);
}

const documentNodeMutationDeleteOneCity = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteOneCity'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'CityWhereUniqueInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteOneCity'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'city_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$DeleteOneCity _parserFn$Mutation$DeleteOneCity(
        Map<String, dynamic> data) =>
    Mutation$DeleteOneCity.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteOneCity = FutureOr<void> Function(
  dynamic,
  Mutation$DeleteOneCity?,
);

class Options$Mutation$DeleteOneCity
    extends graphql.MutationOptions<Mutation$DeleteOneCity> {
  Options$Mutation$DeleteOneCity({
    String? operationName,
    required Variables$Mutation$DeleteOneCity variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteOneCity? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteOneCity>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteOneCity(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteOneCity,
          parserFn: _parserFn$Mutation$DeleteOneCity,
        );

  final OnMutationCompleted$Mutation$DeleteOneCity? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteOneCity
    extends graphql.WatchQueryOptions<Mutation$DeleteOneCity> {
  WatchOptions$Mutation$DeleteOneCity({
    String? operationName,
    required Variables$Mutation$DeleteOneCity variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationDeleteOneCity,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteOneCity,
        );
}

extension ClientExtension$Mutation$DeleteOneCity on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteOneCity>> mutate$DeleteOneCity(
          Options$Mutation$DeleteOneCity options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteOneCity> watchMutation$DeleteOneCity(
          WatchOptions$Mutation$DeleteOneCity options) =>
      this.watchMutation(options);
}

class Mutation$DeleteOneCity$deleteOneCity {
  Mutation$DeleteOneCity$deleteOneCity({
    required this.city_id,
    this.$__typename = 'City',
  });

  factory Mutation$DeleteOneCity$deleteOneCity.fromJson(
      Map<String, dynamic> json) {
    final l$city_id = json['city_id'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteOneCity$deleteOneCity(
      city_id: (l$city_id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int city_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$city_id = city_id;
    _resultData['city_id'] = l$city_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$city_id = city_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$city_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteOneCity$deleteOneCity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$city_id = city_id;
    final lOther$city_id = other.city_id;
    if (l$city_id != lOther$city_id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteOneCity$deleteOneCity
    on Mutation$DeleteOneCity$deleteOneCity {
  CopyWith$Mutation$DeleteOneCity$deleteOneCity<
          Mutation$DeleteOneCity$deleteOneCity>
      get copyWith => CopyWith$Mutation$DeleteOneCity$deleteOneCity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteOneCity$deleteOneCity<TRes> {
  factory CopyWith$Mutation$DeleteOneCity$deleteOneCity(
    Mutation$DeleteOneCity$deleteOneCity instance,
    TRes Function(Mutation$DeleteOneCity$deleteOneCity) then,
  ) = _CopyWithImpl$Mutation$DeleteOneCity$deleteOneCity;

  factory CopyWith$Mutation$DeleteOneCity$deleteOneCity.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteOneCity$deleteOneCity;

  TRes call({
    int? city_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteOneCity$deleteOneCity<TRes>
    implements CopyWith$Mutation$DeleteOneCity$deleteOneCity<TRes> {
  _CopyWithImpl$Mutation$DeleteOneCity$deleteOneCity(
    this._instance,
    this._then,
  );

  final Mutation$DeleteOneCity$deleteOneCity _instance;

  final TRes Function(Mutation$DeleteOneCity$deleteOneCity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? city_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteOneCity$deleteOneCity(
        city_id: city_id == _undefined || city_id == null
            ? _instance.city_id
            : (city_id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteOneCity$deleteOneCity<TRes>
    implements CopyWith$Mutation$DeleteOneCity$deleteOneCity<TRes> {
  _CopyWithStubImpl$Mutation$DeleteOneCity$deleteOneCity(this._res);

  TRes _res;

  call({
    int? city_id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindFirstCity {
  Query$FindFirstCity({
    this.findFirstCity,
    this.$__typename = 'Query',
  });

  factory Query$FindFirstCity.fromJson(Map<String, dynamic> json) {
    final l$findFirstCity = json['findFirstCity'];
    final l$$__typename = json['__typename'];
    return Query$FindFirstCity(
      findFirstCity: l$findFirstCity == null
          ? null
          : Query$FindFirstCity$findFirstCity.fromJson(
              (l$findFirstCity as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FindFirstCity$findFirstCity? findFirstCity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findFirstCity = findFirstCity;
    _resultData['findFirstCity'] = l$findFirstCity?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findFirstCity = findFirstCity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$findFirstCity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindFirstCity) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$findFirstCity = findFirstCity;
    final lOther$findFirstCity = other.findFirstCity;
    if (l$findFirstCity != lOther$findFirstCity) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindFirstCity on Query$FindFirstCity {
  CopyWith$Query$FindFirstCity<Query$FindFirstCity> get copyWith =>
      CopyWith$Query$FindFirstCity(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindFirstCity<TRes> {
  factory CopyWith$Query$FindFirstCity(
    Query$FindFirstCity instance,
    TRes Function(Query$FindFirstCity) then,
  ) = _CopyWithImpl$Query$FindFirstCity;

  factory CopyWith$Query$FindFirstCity.stub(TRes res) =
      _CopyWithStubImpl$Query$FindFirstCity;

  TRes call({
    Query$FindFirstCity$findFirstCity? findFirstCity,
    String? $__typename,
  });
  CopyWith$Query$FindFirstCity$findFirstCity<TRes> get findFirstCity;
}

class _CopyWithImpl$Query$FindFirstCity<TRes>
    implements CopyWith$Query$FindFirstCity<TRes> {
  _CopyWithImpl$Query$FindFirstCity(
    this._instance,
    this._then,
  );

  final Query$FindFirstCity _instance;

  final TRes Function(Query$FindFirstCity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findFirstCity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindFirstCity(
        findFirstCity: findFirstCity == _undefined
            ? _instance.findFirstCity
            : (findFirstCity as Query$FindFirstCity$findFirstCity?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindFirstCity$findFirstCity<TRes> get findFirstCity {
    final local$findFirstCity = _instance.findFirstCity;
    return local$findFirstCity == null
        ? CopyWith$Query$FindFirstCity$findFirstCity.stub(_then(_instance))
        : CopyWith$Query$FindFirstCity$findFirstCity(
            local$findFirstCity, (e) => call(findFirstCity: e));
  }
}

class _CopyWithStubImpl$Query$FindFirstCity<TRes>
    implements CopyWith$Query$FindFirstCity<TRes> {
  _CopyWithStubImpl$Query$FindFirstCity(this._res);

  TRes _res;

  call({
    Query$FindFirstCity$findFirstCity? findFirstCity,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindFirstCity$findFirstCity<TRes> get findFirstCity =>
      CopyWith$Query$FindFirstCity$findFirstCity.stub(_res);
}

const documentNodeQueryFindFirstCity = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindFirstCity'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findFirstCity'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'city_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'city_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$FindFirstCity _parserFn$Query$FindFirstCity(Map<String, dynamic> data) =>
    Query$FindFirstCity.fromJson(data);

class Options$Query$FindFirstCity
    extends graphql.QueryOptions<Query$FindFirstCity> {
  Options$Query$FindFirstCity({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryFindFirstCity,
          parserFn: _parserFn$Query$FindFirstCity,
        );
}

class WatchOptions$Query$FindFirstCity
    extends graphql.WatchQueryOptions<Query$FindFirstCity> {
  WatchOptions$Query$FindFirstCity({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryFindFirstCity,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FindFirstCity,
        );
}

class FetchMoreOptions$Query$FindFirstCity extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FindFirstCity(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryFindFirstCity,
        );
}

extension ClientExtension$Query$FindFirstCity on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FindFirstCity>> query$FindFirstCity(
          [Options$Query$FindFirstCity? options]) async =>
      await this.query(options ?? Options$Query$FindFirstCity());
  graphql.ObservableQuery<Query$FindFirstCity> watchQuery$FindFirstCity(
          [WatchOptions$Query$FindFirstCity? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FindFirstCity());
  void writeQuery$FindFirstCity({
    required Query$FindFirstCity data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryFindFirstCity)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FindFirstCity? readQuery$FindFirstCity({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFindFirstCity)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FindFirstCity.fromJson(result);
  }
}

class Query$FindFirstCity$findFirstCity {
  Query$FindFirstCity$findFirstCity({
    required this.city_id,
    required this.city_name,
    this.$__typename = 'City',
  });

  factory Query$FindFirstCity$findFirstCity.fromJson(
      Map<String, dynamic> json) {
    final l$city_id = json['city_id'];
    final l$city_name = json['city_name'];
    final l$$__typename = json['__typename'];
    return Query$FindFirstCity$findFirstCity(
      city_id: (l$city_id as int),
      city_name: (l$city_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int city_id;

  final String city_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$city_id = city_id;
    _resultData['city_id'] = l$city_id;
    final l$city_name = city_name;
    _resultData['city_name'] = l$city_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$city_id = city_id;
    final l$city_name = city_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$city_id,
      l$city_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindFirstCity$findFirstCity) ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindFirstCity$findFirstCity
    on Query$FindFirstCity$findFirstCity {
  CopyWith$Query$FindFirstCity$findFirstCity<Query$FindFirstCity$findFirstCity>
      get copyWith => CopyWith$Query$FindFirstCity$findFirstCity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindFirstCity$findFirstCity<TRes> {
  factory CopyWith$Query$FindFirstCity$findFirstCity(
    Query$FindFirstCity$findFirstCity instance,
    TRes Function(Query$FindFirstCity$findFirstCity) then,
  ) = _CopyWithImpl$Query$FindFirstCity$findFirstCity;

  factory CopyWith$Query$FindFirstCity$findFirstCity.stub(TRes res) =
      _CopyWithStubImpl$Query$FindFirstCity$findFirstCity;

  TRes call({
    int? city_id,
    String? city_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindFirstCity$findFirstCity<TRes>
    implements CopyWith$Query$FindFirstCity$findFirstCity<TRes> {
  _CopyWithImpl$Query$FindFirstCity$findFirstCity(
    this._instance,
    this._then,
  );

  final Query$FindFirstCity$findFirstCity _instance;

  final TRes Function(Query$FindFirstCity$findFirstCity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? city_id = _undefined,
    Object? city_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindFirstCity$findFirstCity(
        city_id: city_id == _undefined || city_id == null
            ? _instance.city_id
            : (city_id as int),
        city_name: city_name == _undefined || city_name == null
            ? _instance.city_name
            : (city_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindFirstCity$findFirstCity<TRes>
    implements CopyWith$Query$FindFirstCity$findFirstCity<TRes> {
  _CopyWithStubImpl$Query$FindFirstCity$findFirstCity(this._res);

  TRes _res;

  call({
    int? city_id,
    String? city_name,
    String? $__typename,
  }) =>
      _res;
}
