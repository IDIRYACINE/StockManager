import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema2.graphql.dart';
import 'schema5.graphql.dart';

class Variables$Mutation$DeleteOneSellers {
  factory Variables$Mutation$DeleteOneSellers(
          {required Input$SellersWhereUniqueInput where}) =>
      Variables$Mutation$DeleteOneSellers._({
        r'where': where,
      });

  Variables$Mutation$DeleteOneSellers._(this._$data);

  factory Variables$Mutation$DeleteOneSellers.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$SellersWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    return Variables$Mutation$DeleteOneSellers._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SellersWhereUniqueInput get where =>
      (_$data['where'] as Input$SellersWhereUniqueInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteOneSellers<
          Variables$Mutation$DeleteOneSellers>
      get copyWith => CopyWith$Variables$Mutation$DeleteOneSellers(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteOneSellers) ||
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

abstract class CopyWith$Variables$Mutation$DeleteOneSellers<TRes> {
  factory CopyWith$Variables$Mutation$DeleteOneSellers(
    Variables$Mutation$DeleteOneSellers instance,
    TRes Function(Variables$Mutation$DeleteOneSellers) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteOneSellers;

  factory CopyWith$Variables$Mutation$DeleteOneSellers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteOneSellers;

  TRes call({Input$SellersWhereUniqueInput? where});
}

class _CopyWithImpl$Variables$Mutation$DeleteOneSellers<TRes>
    implements CopyWith$Variables$Mutation$DeleteOneSellers<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteOneSellers(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteOneSellers _instance;

  final TRes Function(Variables$Mutation$DeleteOneSellers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) =>
      _then(Variables$Mutation$DeleteOneSellers._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$SellersWhereUniqueInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteOneSellers<TRes>
    implements CopyWith$Variables$Mutation$DeleteOneSellers<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteOneSellers(this._res);

  TRes _res;

  call({Input$SellersWhereUniqueInput? where}) => _res;
}

class Mutation$DeleteOneSellers {
  Mutation$DeleteOneSellers({
    this.deleteOneSellers,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteOneSellers.fromJson(Map<String, dynamic> json) {
    final l$deleteOneSellers = json['deleteOneSellers'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteOneSellers(
      deleteOneSellers: l$deleteOneSellers == null
          ? null
          : Mutation$DeleteOneSellers$deleteOneSellers.fromJson(
              (l$deleteOneSellers as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteOneSellers$deleteOneSellers? deleteOneSellers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteOneSellers = deleteOneSellers;
    _resultData['deleteOneSellers'] = l$deleteOneSellers?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteOneSellers = deleteOneSellers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteOneSellers,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteOneSellers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteOneSellers = deleteOneSellers;
    final lOther$deleteOneSellers = other.deleteOneSellers;
    if (l$deleteOneSellers != lOther$deleteOneSellers) {
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

extension UtilityExtension$Mutation$DeleteOneSellers
    on Mutation$DeleteOneSellers {
  CopyWith$Mutation$DeleteOneSellers<Mutation$DeleteOneSellers> get copyWith =>
      CopyWith$Mutation$DeleteOneSellers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteOneSellers<TRes> {
  factory CopyWith$Mutation$DeleteOneSellers(
    Mutation$DeleteOneSellers instance,
    TRes Function(Mutation$DeleteOneSellers) then,
  ) = _CopyWithImpl$Mutation$DeleteOneSellers;

  factory CopyWith$Mutation$DeleteOneSellers.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteOneSellers;

  TRes call({
    Mutation$DeleteOneSellers$deleteOneSellers? deleteOneSellers,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteOneSellers$deleteOneSellers<TRes>
      get deleteOneSellers;
}

class _CopyWithImpl$Mutation$DeleteOneSellers<TRes>
    implements CopyWith$Mutation$DeleteOneSellers<TRes> {
  _CopyWithImpl$Mutation$DeleteOneSellers(
    this._instance,
    this._then,
  );

  final Mutation$DeleteOneSellers _instance;

  final TRes Function(Mutation$DeleteOneSellers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteOneSellers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteOneSellers(
        deleteOneSellers: deleteOneSellers == _undefined
            ? _instance.deleteOneSellers
            : (deleteOneSellers as Mutation$DeleteOneSellers$deleteOneSellers?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$DeleteOneSellers$deleteOneSellers<TRes>
      get deleteOneSellers {
    final local$deleteOneSellers = _instance.deleteOneSellers;
    return local$deleteOneSellers == null
        ? CopyWith$Mutation$DeleteOneSellers$deleteOneSellers.stub(
            _then(_instance))
        : CopyWith$Mutation$DeleteOneSellers$deleteOneSellers(
            local$deleteOneSellers, (e) => call(deleteOneSellers: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteOneSellers<TRes>
    implements CopyWith$Mutation$DeleteOneSellers<TRes> {
  _CopyWithStubImpl$Mutation$DeleteOneSellers(this._res);

  TRes _res;

  call({
    Mutation$DeleteOneSellers$deleteOneSellers? deleteOneSellers,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$DeleteOneSellers$deleteOneSellers<TRes>
      get deleteOneSellers =>
          CopyWith$Mutation$DeleteOneSellers$deleteOneSellers.stub(_res);
}

const documentNodeMutationDeleteOneSellers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteOneSellers'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'SellersWhereUniqueInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteOneSellers'),
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
            name: NameNode(value: 'seller_id'),
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
Mutation$DeleteOneSellers _parserFn$Mutation$DeleteOneSellers(
        Map<String, dynamic> data) =>
    Mutation$DeleteOneSellers.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteOneSellers = FutureOr<void> Function(
  dynamic,
  Mutation$DeleteOneSellers?,
);

class Options$Mutation$DeleteOneSellers
    extends graphql.MutationOptions<Mutation$DeleteOneSellers> {
  Options$Mutation$DeleteOneSellers({
    String? operationName,
    required Variables$Mutation$DeleteOneSellers variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteOneSellers? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteOneSellers>? update,
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
                        : _parserFn$Mutation$DeleteOneSellers(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteOneSellers,
          parserFn: _parserFn$Mutation$DeleteOneSellers,
        );

  final OnMutationCompleted$Mutation$DeleteOneSellers? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteOneSellers
    extends graphql.WatchQueryOptions<Mutation$DeleteOneSellers> {
  WatchOptions$Mutation$DeleteOneSellers({
    String? operationName,
    required Variables$Mutation$DeleteOneSellers variables,
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
          document: documentNodeMutationDeleteOneSellers,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteOneSellers,
        );
}

extension ClientExtension$Mutation$DeleteOneSellers on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteOneSellers>>
      mutate$DeleteOneSellers(
              Options$Mutation$DeleteOneSellers options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteOneSellers>
      watchMutation$DeleteOneSellers(
              WatchOptions$Mutation$DeleteOneSellers options) =>
          this.watchMutation(options);
}

class Mutation$DeleteOneSellers$deleteOneSellers {
  Mutation$DeleteOneSellers$deleteOneSellers({
    required this.seller_id,
    this.$__typename = 'Sellers',
  });

  factory Mutation$DeleteOneSellers$deleteOneSellers.fromJson(
      Map<String, dynamic> json) {
    final l$seller_id = json['seller_id'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteOneSellers$deleteOneSellers(
      seller_id: (l$seller_id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int seller_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$seller_id = seller_id;
    _resultData['seller_id'] = l$seller_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$seller_id = seller_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$seller_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteOneSellers$deleteOneSellers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (l$seller_id != lOther$seller_id) {
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

extension UtilityExtension$Mutation$DeleteOneSellers$deleteOneSellers
    on Mutation$DeleteOneSellers$deleteOneSellers {
  CopyWith$Mutation$DeleteOneSellers$deleteOneSellers<
          Mutation$DeleteOneSellers$deleteOneSellers>
      get copyWith => CopyWith$Mutation$DeleteOneSellers$deleteOneSellers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteOneSellers$deleteOneSellers<TRes> {
  factory CopyWith$Mutation$DeleteOneSellers$deleteOneSellers(
    Mutation$DeleteOneSellers$deleteOneSellers instance,
    TRes Function(Mutation$DeleteOneSellers$deleteOneSellers) then,
  ) = _CopyWithImpl$Mutation$DeleteOneSellers$deleteOneSellers;

  factory CopyWith$Mutation$DeleteOneSellers$deleteOneSellers.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteOneSellers$deleteOneSellers;

  TRes call({
    int? seller_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteOneSellers$deleteOneSellers<TRes>
    implements CopyWith$Mutation$DeleteOneSellers$deleteOneSellers<TRes> {
  _CopyWithImpl$Mutation$DeleteOneSellers$deleteOneSellers(
    this._instance,
    this._then,
  );

  final Mutation$DeleteOneSellers$deleteOneSellers _instance;

  final TRes Function(Mutation$DeleteOneSellers$deleteOneSellers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? seller_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteOneSellers$deleteOneSellers(
        seller_id: seller_id == _undefined || seller_id == null
            ? _instance.seller_id
            : (seller_id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteOneSellers$deleteOneSellers<TRes>
    implements CopyWith$Mutation$DeleteOneSellers$deleteOneSellers<TRes> {
  _CopyWithStubImpl$Mutation$DeleteOneSellers$deleteOneSellers(this._res);

  TRes _res;

  call({
    int? seller_id,
    String? $__typename,
  }) =>
      _res;
}

class Query$LoadAllSellers {
  Query$LoadAllSellers({
    required this.findManySellers,
    this.$__typename = 'Query',
  });

  factory Query$LoadAllSellers.fromJson(Map<String, dynamic> json) {
    final l$findManySellers = json['findManySellers'];
    final l$$__typename = json['__typename'];
    return Query$LoadAllSellers(
      findManySellers: (l$findManySellers as List<dynamic>)
          .map((e) => Query$LoadAllSellers$findManySellers.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$LoadAllSellers$findManySellers> findManySellers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findManySellers = findManySellers;
    _resultData['findManySellers'] =
        l$findManySellers.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findManySellers = findManySellers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findManySellers.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LoadAllSellers) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$findManySellers = findManySellers;
    final lOther$findManySellers = other.findManySellers;
    if (l$findManySellers.length != lOther$findManySellers.length) {
      return false;
    }
    for (int i = 0; i < l$findManySellers.length; i++) {
      final l$findManySellers$entry = l$findManySellers[i];
      final lOther$findManySellers$entry = lOther$findManySellers[i];
      if (l$findManySellers$entry != lOther$findManySellers$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LoadAllSellers on Query$LoadAllSellers {
  CopyWith$Query$LoadAllSellers<Query$LoadAllSellers> get copyWith =>
      CopyWith$Query$LoadAllSellers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LoadAllSellers<TRes> {
  factory CopyWith$Query$LoadAllSellers(
    Query$LoadAllSellers instance,
    TRes Function(Query$LoadAllSellers) then,
  ) = _CopyWithImpl$Query$LoadAllSellers;

  factory CopyWith$Query$LoadAllSellers.stub(TRes res) =
      _CopyWithStubImpl$Query$LoadAllSellers;

  TRes call({
    List<Query$LoadAllSellers$findManySellers>? findManySellers,
    String? $__typename,
  });
  TRes findManySellers(
      Iterable<Query$LoadAllSellers$findManySellers> Function(
              Iterable<
                  CopyWith$Query$LoadAllSellers$findManySellers<
                      Query$LoadAllSellers$findManySellers>>)
          _fn);
}

class _CopyWithImpl$Query$LoadAllSellers<TRes>
    implements CopyWith$Query$LoadAllSellers<TRes> {
  _CopyWithImpl$Query$LoadAllSellers(
    this._instance,
    this._then,
  );

  final Query$LoadAllSellers _instance;

  final TRes Function(Query$LoadAllSellers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findManySellers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LoadAllSellers(
        findManySellers: findManySellers == _undefined ||
                findManySellers == null
            ? _instance.findManySellers
            : (findManySellers as List<Query$LoadAllSellers$findManySellers>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findManySellers(
          Iterable<Query$LoadAllSellers$findManySellers> Function(
                  Iterable<
                      CopyWith$Query$LoadAllSellers$findManySellers<
                          Query$LoadAllSellers$findManySellers>>)
              _fn) =>
      call(
          findManySellers: _fn(_instance.findManySellers
              .map((e) => CopyWith$Query$LoadAllSellers$findManySellers(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$LoadAllSellers<TRes>
    implements CopyWith$Query$LoadAllSellers<TRes> {
  _CopyWithStubImpl$Query$LoadAllSellers(this._res);

  TRes _res;

  call({
    List<Query$LoadAllSellers$findManySellers>? findManySellers,
    String? $__typename,
  }) =>
      _res;
  findManySellers(_fn) => _res;
}

const documentNodeQueryLoadAllSellers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'LoadAllSellers'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findManySellers'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'picture'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'seller_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'seller_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'seller_phone'),
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
Query$LoadAllSellers _parserFn$Query$LoadAllSellers(
        Map<String, dynamic> data) =>
    Query$LoadAllSellers.fromJson(data);

class Options$Query$LoadAllSellers
    extends graphql.QueryOptions<Query$LoadAllSellers> {
  Options$Query$LoadAllSellers({
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
          document: documentNodeQueryLoadAllSellers,
          parserFn: _parserFn$Query$LoadAllSellers,
        );
}

class WatchOptions$Query$LoadAllSellers
    extends graphql.WatchQueryOptions<Query$LoadAllSellers> {
  WatchOptions$Query$LoadAllSellers({
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
          document: documentNodeQueryLoadAllSellers,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$LoadAllSellers,
        );
}

class FetchMoreOptions$Query$LoadAllSellers extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$LoadAllSellers(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryLoadAllSellers,
        );
}

extension ClientExtension$Query$LoadAllSellers on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$LoadAllSellers>> query$LoadAllSellers(
          [Options$Query$LoadAllSellers? options]) async =>
      await this.query(options ?? Options$Query$LoadAllSellers());
  graphql.ObservableQuery<Query$LoadAllSellers> watchQuery$LoadAllSellers(
          [WatchOptions$Query$LoadAllSellers? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$LoadAllSellers());
  void writeQuery$LoadAllSellers({
    required Query$LoadAllSellers data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryLoadAllSellers)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$LoadAllSellers? readQuery$LoadAllSellers({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryLoadAllSellers)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$LoadAllSellers.fromJson(result);
  }
}

class Query$LoadAllSellers$findManySellers {
  Query$LoadAllSellers$findManySellers({
    required this.picture,
    required this.seller_id,
    required this.seller_name,
    required this.seller_phone,
    this.$__typename = 'Sellers',
  });

  factory Query$LoadAllSellers$findManySellers.fromJson(
      Map<String, dynamic> json) {
    final l$picture = json['picture'];
    final l$seller_id = json['seller_id'];
    final l$seller_name = json['seller_name'];
    final l$seller_phone = json['seller_phone'];
    final l$$__typename = json['__typename'];
    return Query$LoadAllSellers$findManySellers(
      picture: (l$picture as String),
      seller_id: (l$seller_id as int),
      seller_name: (l$seller_name as String),
      seller_phone: (l$seller_phone as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String picture;

  final int seller_id;

  final String seller_name;

  final String seller_phone;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$picture = picture;
    _resultData['picture'] = l$picture;
    final l$seller_id = seller_id;
    _resultData['seller_id'] = l$seller_id;
    final l$seller_name = seller_name;
    _resultData['seller_name'] = l$seller_name;
    final l$seller_phone = seller_phone;
    _resultData['seller_phone'] = l$seller_phone;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$picture = picture;
    final l$seller_id = seller_id;
    final l$seller_name = seller_name;
    final l$seller_phone = seller_phone;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$picture,
      l$seller_id,
      l$seller_name,
      l$seller_phone,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LoadAllSellers$findManySellers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (l$seller_id != lOther$seller_id) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LoadAllSellers$findManySellers
    on Query$LoadAllSellers$findManySellers {
  CopyWith$Query$LoadAllSellers$findManySellers<
          Query$LoadAllSellers$findManySellers>
      get copyWith => CopyWith$Query$LoadAllSellers$findManySellers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LoadAllSellers$findManySellers<TRes> {
  factory CopyWith$Query$LoadAllSellers$findManySellers(
    Query$LoadAllSellers$findManySellers instance,
    TRes Function(Query$LoadAllSellers$findManySellers) then,
  ) = _CopyWithImpl$Query$LoadAllSellers$findManySellers;

  factory CopyWith$Query$LoadAllSellers$findManySellers.stub(TRes res) =
      _CopyWithStubImpl$Query$LoadAllSellers$findManySellers;

  TRes call({
    String? picture,
    int? seller_id,
    String? seller_name,
    String? seller_phone,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LoadAllSellers$findManySellers<TRes>
    implements CopyWith$Query$LoadAllSellers$findManySellers<TRes> {
  _CopyWithImpl$Query$LoadAllSellers$findManySellers(
    this._instance,
    this._then,
  );

  final Query$LoadAllSellers$findManySellers _instance;

  final TRes Function(Query$LoadAllSellers$findManySellers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? picture = _undefined,
    Object? seller_id = _undefined,
    Object? seller_name = _undefined,
    Object? seller_phone = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LoadAllSellers$findManySellers(
        picture: picture == _undefined || picture == null
            ? _instance.picture
            : (picture as String),
        seller_id: seller_id == _undefined || seller_id == null
            ? _instance.seller_id
            : (seller_id as int),
        seller_name: seller_name == _undefined || seller_name == null
            ? _instance.seller_name
            : (seller_name as String),
        seller_phone: seller_phone == _undefined || seller_phone == null
            ? _instance.seller_phone
            : (seller_phone as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$LoadAllSellers$findManySellers<TRes>
    implements CopyWith$Query$LoadAllSellers$findManySellers<TRes> {
  _CopyWithStubImpl$Query$LoadAllSellers$findManySellers(this._res);

  TRes _res;

  call({
    String? picture,
    int? seller_id,
    String? seller_name,
    String? seller_phone,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateOneSellers {
  factory Variables$Mutation$CreateOneSellers(
          {required Input$SellersCreateInput data}) =>
      Variables$Mutation$CreateOneSellers._({
        r'data': data,
      });

  Variables$Mutation$CreateOneSellers._(this._$data);

  factory Variables$Mutation$CreateOneSellers.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$SellersCreateInput.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$CreateOneSellers._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SellersCreateInput get data =>
      (_$data['data'] as Input$SellersCreateInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateOneSellers<
          Variables$Mutation$CreateOneSellers>
      get copyWith => CopyWith$Variables$Mutation$CreateOneSellers(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateOneSellers) ||
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

abstract class CopyWith$Variables$Mutation$CreateOneSellers<TRes> {
  factory CopyWith$Variables$Mutation$CreateOneSellers(
    Variables$Mutation$CreateOneSellers instance,
    TRes Function(Variables$Mutation$CreateOneSellers) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateOneSellers;

  factory CopyWith$Variables$Mutation$CreateOneSellers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateOneSellers;

  TRes call({Input$SellersCreateInput? data});
}

class _CopyWithImpl$Variables$Mutation$CreateOneSellers<TRes>
    implements CopyWith$Variables$Mutation$CreateOneSellers<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateOneSellers(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateOneSellers _instance;

  final TRes Function(Variables$Mutation$CreateOneSellers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$CreateOneSellers._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$SellersCreateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateOneSellers<TRes>
    implements CopyWith$Variables$Mutation$CreateOneSellers<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateOneSellers(this._res);

  TRes _res;

  call({Input$SellersCreateInput? data}) => _res;
}

class Mutation$CreateOneSellers {
  Mutation$CreateOneSellers({
    required this.createOneSellers,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateOneSellers.fromJson(Map<String, dynamic> json) {
    final l$createOneSellers = json['createOneSellers'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOneSellers(
      createOneSellers: Mutation$CreateOneSellers$createOneSellers.fromJson(
          (l$createOneSellers as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateOneSellers$createOneSellers createOneSellers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createOneSellers = createOneSellers;
    _resultData['createOneSellers'] = l$createOneSellers.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createOneSellers = createOneSellers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createOneSellers,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOneSellers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createOneSellers = createOneSellers;
    final lOther$createOneSellers = other.createOneSellers;
    if (l$createOneSellers != lOther$createOneSellers) {
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

extension UtilityExtension$Mutation$CreateOneSellers
    on Mutation$CreateOneSellers {
  CopyWith$Mutation$CreateOneSellers<Mutation$CreateOneSellers> get copyWith =>
      CopyWith$Mutation$CreateOneSellers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateOneSellers<TRes> {
  factory CopyWith$Mutation$CreateOneSellers(
    Mutation$CreateOneSellers instance,
    TRes Function(Mutation$CreateOneSellers) then,
  ) = _CopyWithImpl$Mutation$CreateOneSellers;

  factory CopyWith$Mutation$CreateOneSellers.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOneSellers;

  TRes call({
    Mutation$CreateOneSellers$createOneSellers? createOneSellers,
    String? $__typename,
  });
  CopyWith$Mutation$CreateOneSellers$createOneSellers<TRes>
      get createOneSellers;
}

class _CopyWithImpl$Mutation$CreateOneSellers<TRes>
    implements CopyWith$Mutation$CreateOneSellers<TRes> {
  _CopyWithImpl$Mutation$CreateOneSellers(
    this._instance,
    this._then,
  );

  final Mutation$CreateOneSellers _instance;

  final TRes Function(Mutation$CreateOneSellers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createOneSellers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOneSellers(
        createOneSellers: createOneSellers == _undefined ||
                createOneSellers == null
            ? _instance.createOneSellers
            : (createOneSellers as Mutation$CreateOneSellers$createOneSellers),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreateOneSellers$createOneSellers<TRes>
      get createOneSellers {
    final local$createOneSellers = _instance.createOneSellers;
    return CopyWith$Mutation$CreateOneSellers$createOneSellers(
        local$createOneSellers, (e) => call(createOneSellers: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateOneSellers<TRes>
    implements CopyWith$Mutation$CreateOneSellers<TRes> {
  _CopyWithStubImpl$Mutation$CreateOneSellers(this._res);

  TRes _res;

  call({
    Mutation$CreateOneSellers$createOneSellers? createOneSellers,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateOneSellers$createOneSellers<TRes>
      get createOneSellers =>
          CopyWith$Mutation$CreateOneSellers$createOneSellers.stub(_res);
}

const documentNodeMutationCreateOneSellers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateOneSellers'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'SellersCreateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createOneSellers'),
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
            name: NameNode(value: 'picture'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'seller_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'seller_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'seller_phone'),
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
Mutation$CreateOneSellers _parserFn$Mutation$CreateOneSellers(
        Map<String, dynamic> data) =>
    Mutation$CreateOneSellers.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateOneSellers = FutureOr<void> Function(
  dynamic,
  Mutation$CreateOneSellers?,
);

class Options$Mutation$CreateOneSellers
    extends graphql.MutationOptions<Mutation$CreateOneSellers> {
  Options$Mutation$CreateOneSellers({
    String? operationName,
    required Variables$Mutation$CreateOneSellers variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOneSellers? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOneSellers>? update,
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
                        : _parserFn$Mutation$CreateOneSellers(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOneSellers,
          parserFn: _parserFn$Mutation$CreateOneSellers,
        );

  final OnMutationCompleted$Mutation$CreateOneSellers? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateOneSellers
    extends graphql.WatchQueryOptions<Mutation$CreateOneSellers> {
  WatchOptions$Mutation$CreateOneSellers({
    String? operationName,
    required Variables$Mutation$CreateOneSellers variables,
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
          document: documentNodeMutationCreateOneSellers,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateOneSellers,
        );
}

extension ClientExtension$Mutation$CreateOneSellers on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateOneSellers>>
      mutate$CreateOneSellers(
              Options$Mutation$CreateOneSellers options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateOneSellers>
      watchMutation$CreateOneSellers(
              WatchOptions$Mutation$CreateOneSellers options) =>
          this.watchMutation(options);
}

class Mutation$CreateOneSellers$createOneSellers {
  Mutation$CreateOneSellers$createOneSellers({
    required this.picture,
    required this.seller_id,
    required this.seller_name,
    required this.seller_phone,
    this.$__typename = 'Sellers',
  });

  factory Mutation$CreateOneSellers$createOneSellers.fromJson(
      Map<String, dynamic> json) {
    final l$picture = json['picture'];
    final l$seller_id = json['seller_id'];
    final l$seller_name = json['seller_name'];
    final l$seller_phone = json['seller_phone'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOneSellers$createOneSellers(
      picture: (l$picture as String),
      seller_id: (l$seller_id as int),
      seller_name: (l$seller_name as String),
      seller_phone: (l$seller_phone as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String picture;

  final int seller_id;

  final String seller_name;

  final String seller_phone;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$picture = picture;
    _resultData['picture'] = l$picture;
    final l$seller_id = seller_id;
    _resultData['seller_id'] = l$seller_id;
    final l$seller_name = seller_name;
    _resultData['seller_name'] = l$seller_name;
    final l$seller_phone = seller_phone;
    _resultData['seller_phone'] = l$seller_phone;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$picture = picture;
    final l$seller_id = seller_id;
    final l$seller_name = seller_name;
    final l$seller_phone = seller_phone;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$picture,
      l$seller_id,
      l$seller_name,
      l$seller_phone,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOneSellers$createOneSellers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (l$seller_id != lOther$seller_id) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateOneSellers$createOneSellers
    on Mutation$CreateOneSellers$createOneSellers {
  CopyWith$Mutation$CreateOneSellers$createOneSellers<
          Mutation$CreateOneSellers$createOneSellers>
      get copyWith => CopyWith$Mutation$CreateOneSellers$createOneSellers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOneSellers$createOneSellers<TRes> {
  factory CopyWith$Mutation$CreateOneSellers$createOneSellers(
    Mutation$CreateOneSellers$createOneSellers instance,
    TRes Function(Mutation$CreateOneSellers$createOneSellers) then,
  ) = _CopyWithImpl$Mutation$CreateOneSellers$createOneSellers;

  factory CopyWith$Mutation$CreateOneSellers$createOneSellers.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOneSellers$createOneSellers;

  TRes call({
    String? picture,
    int? seller_id,
    String? seller_name,
    String? seller_phone,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateOneSellers$createOneSellers<TRes>
    implements CopyWith$Mutation$CreateOneSellers$createOneSellers<TRes> {
  _CopyWithImpl$Mutation$CreateOneSellers$createOneSellers(
    this._instance,
    this._then,
  );

  final Mutation$CreateOneSellers$createOneSellers _instance;

  final TRes Function(Mutation$CreateOneSellers$createOneSellers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? picture = _undefined,
    Object? seller_id = _undefined,
    Object? seller_name = _undefined,
    Object? seller_phone = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOneSellers$createOneSellers(
        picture: picture == _undefined || picture == null
            ? _instance.picture
            : (picture as String),
        seller_id: seller_id == _undefined || seller_id == null
            ? _instance.seller_id
            : (seller_id as int),
        seller_name: seller_name == _undefined || seller_name == null
            ? _instance.seller_name
            : (seller_name as String),
        seller_phone: seller_phone == _undefined || seller_phone == null
            ? _instance.seller_phone
            : (seller_phone as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateOneSellers$createOneSellers<TRes>
    implements CopyWith$Mutation$CreateOneSellers$createOneSellers<TRes> {
  _CopyWithStubImpl$Mutation$CreateOneSellers$createOneSellers(this._res);

  TRes _res;

  call({
    String? picture,
    int? seller_id,
    String? seller_name,
    String? seller_phone,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateOneSellers {
  factory Variables$Mutation$UpdateOneSellers({
    required Input$SellersUpdateInput data,
    required Input$SellersWhereUniqueInput where,
  }) =>
      Variables$Mutation$UpdateOneSellers._({
        r'data': data,
        r'where': where,
      });

  Variables$Mutation$UpdateOneSellers._(this._$data);

  factory Variables$Mutation$UpdateOneSellers.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$SellersUpdateInput.fromJson((l$data as Map<String, dynamic>));
    final l$where = data['where'];
    result$data['where'] = Input$SellersWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    return Variables$Mutation$UpdateOneSellers._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SellersUpdateInput get data =>
      (_$data['data'] as Input$SellersUpdateInput);
  Input$SellersWhereUniqueInput get where =>
      (_$data['where'] as Input$SellersWhereUniqueInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateOneSellers<
          Variables$Mutation$UpdateOneSellers>
      get copyWith => CopyWith$Variables$Mutation$UpdateOneSellers(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateOneSellers) ||
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

abstract class CopyWith$Variables$Mutation$UpdateOneSellers<TRes> {
  factory CopyWith$Variables$Mutation$UpdateOneSellers(
    Variables$Mutation$UpdateOneSellers instance,
    TRes Function(Variables$Mutation$UpdateOneSellers) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateOneSellers;

  factory CopyWith$Variables$Mutation$UpdateOneSellers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateOneSellers;

  TRes call({
    Input$SellersUpdateInput? data,
    Input$SellersWhereUniqueInput? where,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateOneSellers<TRes>
    implements CopyWith$Variables$Mutation$UpdateOneSellers<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateOneSellers(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateOneSellers _instance;

  final TRes Function(Variables$Mutation$UpdateOneSellers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateOneSellers._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$SellersUpdateInput),
        if (where != _undefined && where != null)
          'where': (where as Input$SellersWhereUniqueInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateOneSellers<TRes>
    implements CopyWith$Variables$Mutation$UpdateOneSellers<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateOneSellers(this._res);

  TRes _res;

  call({
    Input$SellersUpdateInput? data,
    Input$SellersWhereUniqueInput? where,
  }) =>
      _res;
}

class Mutation$UpdateOneSellers {
  Mutation$UpdateOneSellers({
    this.updateOneSellers,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateOneSellers.fromJson(Map<String, dynamic> json) {
    final l$updateOneSellers = json['updateOneSellers'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOneSellers(
      updateOneSellers: l$updateOneSellers == null
          ? null
          : Mutation$UpdateOneSellers$updateOneSellers.fromJson(
              (l$updateOneSellers as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateOneSellers$updateOneSellers? updateOneSellers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneSellers = updateOneSellers;
    _resultData['updateOneSellers'] = l$updateOneSellers?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneSellers = updateOneSellers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateOneSellers,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOneSellers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneSellers = updateOneSellers;
    final lOther$updateOneSellers = other.updateOneSellers;
    if (l$updateOneSellers != lOther$updateOneSellers) {
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

extension UtilityExtension$Mutation$UpdateOneSellers
    on Mutation$UpdateOneSellers {
  CopyWith$Mutation$UpdateOneSellers<Mutation$UpdateOneSellers> get copyWith =>
      CopyWith$Mutation$UpdateOneSellers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateOneSellers<TRes> {
  factory CopyWith$Mutation$UpdateOneSellers(
    Mutation$UpdateOneSellers instance,
    TRes Function(Mutation$UpdateOneSellers) then,
  ) = _CopyWithImpl$Mutation$UpdateOneSellers;

  factory CopyWith$Mutation$UpdateOneSellers.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOneSellers;

  TRes call({
    Mutation$UpdateOneSellers$updateOneSellers? updateOneSellers,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateOneSellers$updateOneSellers<TRes>
      get updateOneSellers;
}

class _CopyWithImpl$Mutation$UpdateOneSellers<TRes>
    implements CopyWith$Mutation$UpdateOneSellers<TRes> {
  _CopyWithImpl$Mutation$UpdateOneSellers(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOneSellers _instance;

  final TRes Function(Mutation$UpdateOneSellers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneSellers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOneSellers(
        updateOneSellers: updateOneSellers == _undefined
            ? _instance.updateOneSellers
            : (updateOneSellers as Mutation$UpdateOneSellers$updateOneSellers?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateOneSellers$updateOneSellers<TRes>
      get updateOneSellers {
    final local$updateOneSellers = _instance.updateOneSellers;
    return local$updateOneSellers == null
        ? CopyWith$Mutation$UpdateOneSellers$updateOneSellers.stub(
            _then(_instance))
        : CopyWith$Mutation$UpdateOneSellers$updateOneSellers(
            local$updateOneSellers, (e) => call(updateOneSellers: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateOneSellers<TRes>
    implements CopyWith$Mutation$UpdateOneSellers<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOneSellers(this._res);

  TRes _res;

  call({
    Mutation$UpdateOneSellers$updateOneSellers? updateOneSellers,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateOneSellers$updateOneSellers<TRes>
      get updateOneSellers =>
          CopyWith$Mutation$UpdateOneSellers$updateOneSellers.stub(_res);
}

const documentNodeMutationUpdateOneSellers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateOneSellers'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'SellersUpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'SellersWhereUniqueInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneSellers'),
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
            name: NameNode(value: 'seller_id'),
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
Mutation$UpdateOneSellers _parserFn$Mutation$UpdateOneSellers(
        Map<String, dynamic> data) =>
    Mutation$UpdateOneSellers.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateOneSellers = FutureOr<void> Function(
  dynamic,
  Mutation$UpdateOneSellers?,
);

class Options$Mutation$UpdateOneSellers
    extends graphql.MutationOptions<Mutation$UpdateOneSellers> {
  Options$Mutation$UpdateOneSellers({
    String? operationName,
    required Variables$Mutation$UpdateOneSellers variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateOneSellers? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateOneSellers>? update,
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
                        : _parserFn$Mutation$UpdateOneSellers(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateOneSellers,
          parserFn: _parserFn$Mutation$UpdateOneSellers,
        );

  final OnMutationCompleted$Mutation$UpdateOneSellers? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateOneSellers
    extends graphql.WatchQueryOptions<Mutation$UpdateOneSellers> {
  WatchOptions$Mutation$UpdateOneSellers({
    String? operationName,
    required Variables$Mutation$UpdateOneSellers variables,
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
          document: documentNodeMutationUpdateOneSellers,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateOneSellers,
        );
}

extension ClientExtension$Mutation$UpdateOneSellers on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateOneSellers>>
      mutate$UpdateOneSellers(
              Options$Mutation$UpdateOneSellers options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateOneSellers>
      watchMutation$UpdateOneSellers(
              WatchOptions$Mutation$UpdateOneSellers options) =>
          this.watchMutation(options);
}

class Mutation$UpdateOneSellers$updateOneSellers {
  Mutation$UpdateOneSellers$updateOneSellers({
    required this.seller_id,
    this.$__typename = 'Sellers',
  });

  factory Mutation$UpdateOneSellers$updateOneSellers.fromJson(
      Map<String, dynamic> json) {
    final l$seller_id = json['seller_id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOneSellers$updateOneSellers(
      seller_id: (l$seller_id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int seller_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$seller_id = seller_id;
    _resultData['seller_id'] = l$seller_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$seller_id = seller_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$seller_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOneSellers$updateOneSellers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (l$seller_id != lOther$seller_id) {
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

extension UtilityExtension$Mutation$UpdateOneSellers$updateOneSellers
    on Mutation$UpdateOneSellers$updateOneSellers {
  CopyWith$Mutation$UpdateOneSellers$updateOneSellers<
          Mutation$UpdateOneSellers$updateOneSellers>
      get copyWith => CopyWith$Mutation$UpdateOneSellers$updateOneSellers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOneSellers$updateOneSellers<TRes> {
  factory CopyWith$Mutation$UpdateOneSellers$updateOneSellers(
    Mutation$UpdateOneSellers$updateOneSellers instance,
    TRes Function(Mutation$UpdateOneSellers$updateOneSellers) then,
  ) = _CopyWithImpl$Mutation$UpdateOneSellers$updateOneSellers;

  factory CopyWith$Mutation$UpdateOneSellers$updateOneSellers.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOneSellers$updateOneSellers;

  TRes call({
    int? seller_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateOneSellers$updateOneSellers<TRes>
    implements CopyWith$Mutation$UpdateOneSellers$updateOneSellers<TRes> {
  _CopyWithImpl$Mutation$UpdateOneSellers$updateOneSellers(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOneSellers$updateOneSellers _instance;

  final TRes Function(Mutation$UpdateOneSellers$updateOneSellers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? seller_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOneSellers$updateOneSellers(
        seller_id: seller_id == _undefined || seller_id == null
            ? _instance.seller_id
            : (seller_id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateOneSellers$updateOneSellers<TRes>
    implements CopyWith$Mutation$UpdateOneSellers$updateOneSellers<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOneSellers$updateOneSellers(this._res);

  TRes _res;

  call({
    int? seller_id,
    String? $__typename,
  }) =>
      _res;
}
