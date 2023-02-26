import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema1.graphql.dart';
import 'schema2.graphql.dart';

class Variables$Query$FindManyTransactions {
  factory Variables$Query$FindManyTransactions(
          {Input$TransactionsWhereInput? where}) =>
      Variables$Query$FindManyTransactions._({
        if (where != null) r'where': where,
      });

  Variables$Query$FindManyTransactions._(this._$data);

  factory Variables$Query$FindManyTransactions.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$TransactionsWhereInput.fromJson(
              (l$where as Map<String, dynamic>));
    }
    return Variables$Query$FindManyTransactions._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionsWhereInput? get where =>
      (_$data['where'] as Input$TransactionsWhereInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$FindManyTransactions<
          Variables$Query$FindManyTransactions>
      get copyWith => CopyWith$Variables$Query$FindManyTransactions(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FindManyTransactions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    return Object.hashAll([_$data.containsKey('where') ? l$where : const {}]);
  }
}

abstract class CopyWith$Variables$Query$FindManyTransactions<TRes> {
  factory CopyWith$Variables$Query$FindManyTransactions(
    Variables$Query$FindManyTransactions instance,
    TRes Function(Variables$Query$FindManyTransactions) then,
  ) = _CopyWithImpl$Variables$Query$FindManyTransactions;

  factory CopyWith$Variables$Query$FindManyTransactions.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindManyTransactions;

  TRes call({Input$TransactionsWhereInput? where});
}

class _CopyWithImpl$Variables$Query$FindManyTransactions<TRes>
    implements CopyWith$Variables$Query$FindManyTransactions<TRes> {
  _CopyWithImpl$Variables$Query$FindManyTransactions(
    this._instance,
    this._then,
  );

  final Variables$Query$FindManyTransactions _instance;

  final TRes Function(Variables$Query$FindManyTransactions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) =>
      _then(Variables$Query$FindManyTransactions._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as Input$TransactionsWhereInput?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindManyTransactions<TRes>
    implements CopyWith$Variables$Query$FindManyTransactions<TRes> {
  _CopyWithStubImpl$Variables$Query$FindManyTransactions(this._res);

  TRes _res;

  call({Input$TransactionsWhereInput? where}) => _res;
}

class Query$FindManyTransactions {
  Query$FindManyTransactions({
    required this.findManyTransactions,
    this.$__typename = 'Query',
  });

  factory Query$FindManyTransactions.fromJson(Map<String, dynamic> json) {
    final l$findManyTransactions = json['findManyTransactions'];
    final l$$__typename = json['__typename'];
    return Query$FindManyTransactions(
      findManyTransactions: (l$findManyTransactions as List<dynamic>)
          .map((e) => Query$FindManyTransactions$findManyTransactions.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindManyTransactions$findManyTransactions>
      findManyTransactions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findManyTransactions = findManyTransactions;
    _resultData['findManyTransactions'] =
        l$findManyTransactions.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findManyTransactions = findManyTransactions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findManyTransactions.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindManyTransactions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$findManyTransactions = findManyTransactions;
    final lOther$findManyTransactions = other.findManyTransactions;
    if (l$findManyTransactions.length != lOther$findManyTransactions.length) {
      return false;
    }
    for (int i = 0; i < l$findManyTransactions.length; i++) {
      final l$findManyTransactions$entry = l$findManyTransactions[i];
      final lOther$findManyTransactions$entry = lOther$findManyTransactions[i];
      if (l$findManyTransactions$entry != lOther$findManyTransactions$entry) {
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

extension UtilityExtension$Query$FindManyTransactions
    on Query$FindManyTransactions {
  CopyWith$Query$FindManyTransactions<Query$FindManyTransactions>
      get copyWith => CopyWith$Query$FindManyTransactions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindManyTransactions<TRes> {
  factory CopyWith$Query$FindManyTransactions(
    Query$FindManyTransactions instance,
    TRes Function(Query$FindManyTransactions) then,
  ) = _CopyWithImpl$Query$FindManyTransactions;

  factory CopyWith$Query$FindManyTransactions.stub(TRes res) =
      _CopyWithStubImpl$Query$FindManyTransactions;

  TRes call({
    List<Query$FindManyTransactions$findManyTransactions>? findManyTransactions,
    String? $__typename,
  });
  TRes findManyTransactions(
      Iterable<Query$FindManyTransactions$findManyTransactions> Function(
              Iterable<
                  CopyWith$Query$FindManyTransactions$findManyTransactions<
                      Query$FindManyTransactions$findManyTransactions>>)
          _fn);
}

class _CopyWithImpl$Query$FindManyTransactions<TRes>
    implements CopyWith$Query$FindManyTransactions<TRes> {
  _CopyWithImpl$Query$FindManyTransactions(
    this._instance,
    this._then,
  );

  final Query$FindManyTransactions _instance;

  final TRes Function(Query$FindManyTransactions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findManyTransactions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindManyTransactions(
        findManyTransactions:
            findManyTransactions == _undefined || findManyTransactions == null
                ? _instance.findManyTransactions
                : (findManyTransactions
                    as List<Query$FindManyTransactions$findManyTransactions>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findManyTransactions(
          Iterable<Query$FindManyTransactions$findManyTransactions> Function(
                  Iterable<
                      CopyWith$Query$FindManyTransactions$findManyTransactions<
                          Query$FindManyTransactions$findManyTransactions>>)
              _fn) =>
      call(
          findManyTransactions: _fn(_instance.findManyTransactions.map(
              (e) => CopyWith$Query$FindManyTransactions$findManyTransactions(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindManyTransactions<TRes>
    implements CopyWith$Query$FindManyTransactions<TRes> {
  _CopyWithStubImpl$Query$FindManyTransactions(this._res);

  TRes _res;

  call({
    List<Query$FindManyTransactions$findManyTransactions>? findManyTransactions,
    String? $__typename,
  }) =>
      _res;
  findManyTransactions(_fn) => _res;
}

const documentNodeQueryFindManyTransactions = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindManyTransactions'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'TransactionsWhereInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findManyTransactions'),
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
            name: NameNode(value: 'address'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customer_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customer_phone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'date'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'product_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'quantity'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'remainingPayement'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'transaction_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'transaction_type'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'transaction_type_id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'type_name'),
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
            name: NameNode(value: 'city'),
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
            name: NameNode(value: 'seller'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'seller_name'),
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
            name: NameNode(value: 'totalPayement'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'status'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'transaction_status_id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
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
Query$FindManyTransactions _parserFn$Query$FindManyTransactions(
        Map<String, dynamic> data) =>
    Query$FindManyTransactions.fromJson(data);

class Options$Query$FindManyTransactions
    extends graphql.QueryOptions<Query$FindManyTransactions> {
  Options$Query$FindManyTransactions({
    String? operationName,
    Variables$Query$FindManyTransactions? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryFindManyTransactions,
          parserFn: _parserFn$Query$FindManyTransactions,
        );
}

class WatchOptions$Query$FindManyTransactions
    extends graphql.WatchQueryOptions<Query$FindManyTransactions> {
  WatchOptions$Query$FindManyTransactions({
    String? operationName,
    Variables$Query$FindManyTransactions? variables,
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
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryFindManyTransactions,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FindManyTransactions,
        );
}

class FetchMoreOptions$Query$FindManyTransactions
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FindManyTransactions({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$FindManyTransactions? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryFindManyTransactions,
        );
}

extension ClientExtension$Query$FindManyTransactions on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FindManyTransactions>>
      query$FindManyTransactions(
              [Options$Query$FindManyTransactions? options]) async =>
          await this.query(options ?? Options$Query$FindManyTransactions());
  graphql.ObservableQuery<Query$FindManyTransactions>
      watchQuery$FindManyTransactions(
              [WatchOptions$Query$FindManyTransactions? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$FindManyTransactions());
  void writeQuery$FindManyTransactions({
    required Query$FindManyTransactions data,
    Variables$Query$FindManyTransactions? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryFindManyTransactions),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FindManyTransactions? readQuery$FindManyTransactions({
    Variables$Query$FindManyTransactions? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryFindManyTransactions),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FindManyTransactions.fromJson(result);
  }
}

class Query$FindManyTransactions$findManyTransactions {
  Query$FindManyTransactions$findManyTransactions({
    required this.address,
    required this.customer_name,
    required this.customer_phone,
    required this.date,
    required this.product_id,
    required this.quantity,
    required this.remainingPayement,
    required this.transaction_id,
    required this.transaction_type,
    required this.city,
    required this.seller,
    required this.totalPayement,
    required this.status,
    this.$__typename = 'Transactions',
  });

  factory Query$FindManyTransactions$findManyTransactions.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    final l$customer_name = json['customer_name'];
    final l$customer_phone = json['customer_phone'];
    final l$date = json['date'];
    final l$product_id = json['product_id'];
    final l$quantity = json['quantity'];
    final l$remainingPayement = json['remainingPayement'];
    final l$transaction_id = json['transaction_id'];
    final l$transaction_type = json['transaction_type'];
    final l$city = json['city'];
    final l$seller = json['seller'];
    final l$totalPayement = json['totalPayement'];
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Query$FindManyTransactions$findManyTransactions(
      address: (l$address as String),
      customer_name: (l$customer_name as String),
      customer_phone: (l$customer_phone as String),
      date: (l$date as String),
      product_id: (l$product_id as int),
      quantity: (l$quantity as int),
      remainingPayement: (l$remainingPayement as num).toDouble(),
      transaction_id: (l$transaction_id as int),
      transaction_type:
          Query$FindManyTransactions$findManyTransactions$transaction_type
              .fromJson((l$transaction_type as Map<String, dynamic>)),
      city: Query$FindManyTransactions$findManyTransactions$city.fromJson(
          (l$city as Map<String, dynamic>)),
      seller: Query$FindManyTransactions$findManyTransactions$seller.fromJson(
          (l$seller as Map<String, dynamic>)),
      totalPayement: (l$totalPayement as num).toDouble(),
      status: Query$FindManyTransactions$findManyTransactions$status.fromJson(
          (l$status as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String address;

  final String customer_name;

  final String customer_phone;

  final String date;

  final int product_id;

  final int quantity;

  final double remainingPayement;

  final int transaction_id;

  final Query$FindManyTransactions$findManyTransactions$transaction_type
      transaction_type;

  final Query$FindManyTransactions$findManyTransactions$city city;

  final Query$FindManyTransactions$findManyTransactions$seller seller;

  final double totalPayement;

  final Query$FindManyTransactions$findManyTransactions$status status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$address = address;
    _resultData['address'] = l$address;
    final l$customer_name = customer_name;
    _resultData['customer_name'] = l$customer_name;
    final l$customer_phone = customer_phone;
    _resultData['customer_phone'] = l$customer_phone;
    final l$date = date;
    _resultData['date'] = l$date;
    final l$product_id = product_id;
    _resultData['product_id'] = l$product_id;
    final l$quantity = quantity;
    _resultData['quantity'] = l$quantity;
    final l$remainingPayement = remainingPayement;
    _resultData['remainingPayement'] = l$remainingPayement;
    final l$transaction_id = transaction_id;
    _resultData['transaction_id'] = l$transaction_id;
    final l$transaction_type = transaction_type;
    _resultData['transaction_type'] = l$transaction_type.toJson();
    final l$city = city;
    _resultData['city'] = l$city.toJson();
    final l$seller = seller;
    _resultData['seller'] = l$seller.toJson();
    final l$totalPayement = totalPayement;
    _resultData['totalPayement'] = l$totalPayement;
    final l$status = status;
    _resultData['status'] = l$status.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$address = address;
    final l$customer_name = customer_name;
    final l$customer_phone = customer_phone;
    final l$date = date;
    final l$product_id = product_id;
    final l$quantity = quantity;
    final l$remainingPayement = remainingPayement;
    final l$transaction_id = transaction_id;
    final l$transaction_type = transaction_type;
    final l$city = city;
    final l$seller = seller;
    final l$totalPayement = totalPayement;
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$address,
      l$customer_name,
      l$customer_phone,
      l$date,
      l$product_id,
      l$quantity,
      l$remainingPayement,
      l$transaction_id,
      l$transaction_type,
      l$city,
      l$seller,
      l$totalPayement,
      l$status,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindManyTransactions$findManyTransactions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
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
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$remainingPayement = remainingPayement;
    final lOther$remainingPayement = other.remainingPayement;
    if (l$remainingPayement != lOther$remainingPayement) {
      return false;
    }
    final l$transaction_id = transaction_id;
    final lOther$transaction_id = other.transaction_id;
    if (l$transaction_id != lOther$transaction_id) {
      return false;
    }
    final l$transaction_type = transaction_type;
    final lOther$transaction_type = other.transaction_type;
    if (l$transaction_type != lOther$transaction_type) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) {
      return false;
    }
    final l$seller = seller;
    final lOther$seller = other.seller;
    if (l$seller != lOther$seller) {
      return false;
    }
    final l$totalPayement = totalPayement;
    final lOther$totalPayement = other.totalPayement;
    if (l$totalPayement != lOther$totalPayement) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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

extension UtilityExtension$Query$FindManyTransactions$findManyTransactions
    on Query$FindManyTransactions$findManyTransactions {
  CopyWith$Query$FindManyTransactions$findManyTransactions<
          Query$FindManyTransactions$findManyTransactions>
      get copyWith => CopyWith$Query$FindManyTransactions$findManyTransactions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindManyTransactions$findManyTransactions<TRes> {
  factory CopyWith$Query$FindManyTransactions$findManyTransactions(
    Query$FindManyTransactions$findManyTransactions instance,
    TRes Function(Query$FindManyTransactions$findManyTransactions) then,
  ) = _CopyWithImpl$Query$FindManyTransactions$findManyTransactions;

  factory CopyWith$Query$FindManyTransactions$findManyTransactions.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindManyTransactions$findManyTransactions;

  TRes call({
    String? address,
    String? customer_name,
    String? customer_phone,
    String? date,
    int? product_id,
    int? quantity,
    double? remainingPayement,
    int? transaction_id,
    Query$FindManyTransactions$findManyTransactions$transaction_type?
        transaction_type,
    Query$FindManyTransactions$findManyTransactions$city? city,
    Query$FindManyTransactions$findManyTransactions$seller? seller,
    double? totalPayement,
    Query$FindManyTransactions$findManyTransactions$status? status,
    String? $__typename,
  });
  CopyWith$Query$FindManyTransactions$findManyTransactions$transaction_type<
      TRes> get transaction_type;
  CopyWith$Query$FindManyTransactions$findManyTransactions$city<TRes> get city;
  CopyWith$Query$FindManyTransactions$findManyTransactions$seller<TRes>
      get seller;
  CopyWith$Query$FindManyTransactions$findManyTransactions$status<TRes>
      get status;
}

class _CopyWithImpl$Query$FindManyTransactions$findManyTransactions<TRes>
    implements CopyWith$Query$FindManyTransactions$findManyTransactions<TRes> {
  _CopyWithImpl$Query$FindManyTransactions$findManyTransactions(
    this._instance,
    this._then,
  );

  final Query$FindManyTransactions$findManyTransactions _instance;

  final TRes Function(Query$FindManyTransactions$findManyTransactions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address = _undefined,
    Object? customer_name = _undefined,
    Object? customer_phone = _undefined,
    Object? date = _undefined,
    Object? product_id = _undefined,
    Object? quantity = _undefined,
    Object? remainingPayement = _undefined,
    Object? transaction_id = _undefined,
    Object? transaction_type = _undefined,
    Object? city = _undefined,
    Object? seller = _undefined,
    Object? totalPayement = _undefined,
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindManyTransactions$findManyTransactions(
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        customer_name: customer_name == _undefined || customer_name == null
            ? _instance.customer_name
            : (customer_name as String),
        customer_phone: customer_phone == _undefined || customer_phone == null
            ? _instance.customer_phone
            : (customer_phone as String),
        date: date == _undefined || date == null
            ? _instance.date
            : (date as String),
        product_id: product_id == _undefined || product_id == null
            ? _instance.product_id
            : (product_id as int),
        quantity: quantity == _undefined || quantity == null
            ? _instance.quantity
            : (quantity as int),
        remainingPayement:
            remainingPayement == _undefined || remainingPayement == null
                ? _instance.remainingPayement
                : (remainingPayement as double),
        transaction_id: transaction_id == _undefined || transaction_id == null
            ? _instance.transaction_id
            : (transaction_id as int),
        transaction_type: transaction_type == _undefined ||
                transaction_type == null
            ? _instance.transaction_type
            : (transaction_type
                as Query$FindManyTransactions$findManyTransactions$transaction_type),
        city: city == _undefined || city == null
            ? _instance.city
            : (city as Query$FindManyTransactions$findManyTransactions$city),
        seller: seller == _undefined || seller == null
            ? _instance.seller
            : (seller
                as Query$FindManyTransactions$findManyTransactions$seller),
        totalPayement: totalPayement == _undefined || totalPayement == null
            ? _instance.totalPayement
            : (totalPayement as double),
        status: status == _undefined || status == null
            ? _instance.status
            : (status
                as Query$FindManyTransactions$findManyTransactions$status),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindManyTransactions$findManyTransactions$transaction_type<
      TRes> get transaction_type {
    final local$transaction_type = _instance.transaction_type;
    return CopyWith$Query$FindManyTransactions$findManyTransactions$transaction_type(
        local$transaction_type, (e) => call(transaction_type: e));
  }

  CopyWith$Query$FindManyTransactions$findManyTransactions$city<TRes> get city {
    final local$city = _instance.city;
    return CopyWith$Query$FindManyTransactions$findManyTransactions$city(
        local$city, (e) => call(city: e));
  }

  CopyWith$Query$FindManyTransactions$findManyTransactions$seller<TRes>
      get seller {
    final local$seller = _instance.seller;
    return CopyWith$Query$FindManyTransactions$findManyTransactions$seller(
        local$seller, (e) => call(seller: e));
  }

  CopyWith$Query$FindManyTransactions$findManyTransactions$status<TRes>
      get status {
    final local$status = _instance.status;
    return CopyWith$Query$FindManyTransactions$findManyTransactions$status(
        local$status, (e) => call(status: e));
  }
}

class _CopyWithStubImpl$Query$FindManyTransactions$findManyTransactions<TRes>
    implements CopyWith$Query$FindManyTransactions$findManyTransactions<TRes> {
  _CopyWithStubImpl$Query$FindManyTransactions$findManyTransactions(this._res);

  TRes _res;

  call({
    String? address,
    String? customer_name,
    String? customer_phone,
    String? date,
    int? product_id,
    int? quantity,
    double? remainingPayement,
    int? transaction_id,
    Query$FindManyTransactions$findManyTransactions$transaction_type?
        transaction_type,
    Query$FindManyTransactions$findManyTransactions$city? city,
    Query$FindManyTransactions$findManyTransactions$seller? seller,
    double? totalPayement,
    Query$FindManyTransactions$findManyTransactions$status? status,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindManyTransactions$findManyTransactions$transaction_type<
          TRes>
      get transaction_type =>
          CopyWith$Query$FindManyTransactions$findManyTransactions$transaction_type
              .stub(_res);
  CopyWith$Query$FindManyTransactions$findManyTransactions$city<TRes>
      get city =>
          CopyWith$Query$FindManyTransactions$findManyTransactions$city.stub(
              _res);
  CopyWith$Query$FindManyTransactions$findManyTransactions$seller<TRes>
      get seller =>
          CopyWith$Query$FindManyTransactions$findManyTransactions$seller.stub(
              _res);
  CopyWith$Query$FindManyTransactions$findManyTransactions$status<TRes>
      get status =>
          CopyWith$Query$FindManyTransactions$findManyTransactions$status.stub(
              _res);
}

class Query$FindManyTransactions$findManyTransactions$transaction_type {
  Query$FindManyTransactions$findManyTransactions$transaction_type({
    required this.transaction_type_id,
    required this.type_name,
    this.$__typename = 'TransactionTypes',
  });

  factory Query$FindManyTransactions$findManyTransactions$transaction_type.fromJson(
      Map<String, dynamic> json) {
    final l$transaction_type_id = json['transaction_type_id'];
    final l$type_name = json['type_name'];
    final l$$__typename = json['__typename'];
    return Query$FindManyTransactions$findManyTransactions$transaction_type(
      transaction_type_id: (l$transaction_type_id as int),
      type_name: (l$type_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int transaction_type_id;

  final String type_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transaction_type_id = transaction_type_id;
    _resultData['transaction_type_id'] = l$transaction_type_id;
    final l$type_name = type_name;
    _resultData['type_name'] = l$type_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transaction_type_id = transaction_type_id;
    final l$type_name = type_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transaction_type_id,
      l$type_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindManyTransactions$findManyTransactions$transaction_type) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_type_id = transaction_type_id;
    final lOther$transaction_type_id = other.transaction_type_id;
    if (l$transaction_type_id != lOther$transaction_type_id) {
      return false;
    }
    final l$type_name = type_name;
    final lOther$type_name = other.type_name;
    if (l$type_name != lOther$type_name) {
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

extension UtilityExtension$Query$FindManyTransactions$findManyTransactions$transaction_type
    on Query$FindManyTransactions$findManyTransactions$transaction_type {
  CopyWith$Query$FindManyTransactions$findManyTransactions$transaction_type<
          Query$FindManyTransactions$findManyTransactions$transaction_type>
      get copyWith =>
          CopyWith$Query$FindManyTransactions$findManyTransactions$transaction_type(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindManyTransactions$findManyTransactions$transaction_type<
    TRes> {
  factory CopyWith$Query$FindManyTransactions$findManyTransactions$transaction_type(
    Query$FindManyTransactions$findManyTransactions$transaction_type instance,
    TRes Function(
            Query$FindManyTransactions$findManyTransactions$transaction_type)
        then,
  ) = _CopyWithImpl$Query$FindManyTransactions$findManyTransactions$transaction_type;

  factory CopyWith$Query$FindManyTransactions$findManyTransactions$transaction_type.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindManyTransactions$findManyTransactions$transaction_type;

  TRes call({
    int? transaction_type_id,
    String? type_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindManyTransactions$findManyTransactions$transaction_type<
        TRes>
    implements
        CopyWith$Query$FindManyTransactions$findManyTransactions$transaction_type<
            TRes> {
  _CopyWithImpl$Query$FindManyTransactions$findManyTransactions$transaction_type(
    this._instance,
    this._then,
  );

  final Query$FindManyTransactions$findManyTransactions$transaction_type
      _instance;

  final TRes Function(
      Query$FindManyTransactions$findManyTransactions$transaction_type) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_type_id = _undefined,
    Object? type_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindManyTransactions$findManyTransactions$transaction_type(
        transaction_type_id:
            transaction_type_id == _undefined || transaction_type_id == null
                ? _instance.transaction_type_id
                : (transaction_type_id as int),
        type_name: type_name == _undefined || type_name == null
            ? _instance.type_name
            : (type_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindManyTransactions$findManyTransactions$transaction_type<
        TRes>
    implements
        CopyWith$Query$FindManyTransactions$findManyTransactions$transaction_type<
            TRes> {
  _CopyWithStubImpl$Query$FindManyTransactions$findManyTransactions$transaction_type(
      this._res);

  TRes _res;

  call({
    int? transaction_type_id,
    String? type_name,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindManyTransactions$findManyTransactions$city {
  Query$FindManyTransactions$findManyTransactions$city({
    required this.city_id,
    required this.city_name,
    this.$__typename = 'City',
  });

  factory Query$FindManyTransactions$findManyTransactions$city.fromJson(
      Map<String, dynamic> json) {
    final l$city_id = json['city_id'];
    final l$city_name = json['city_name'];
    final l$$__typename = json['__typename'];
    return Query$FindManyTransactions$findManyTransactions$city(
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
    if (!(other is Query$FindManyTransactions$findManyTransactions$city) ||
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

extension UtilityExtension$Query$FindManyTransactions$findManyTransactions$city
    on Query$FindManyTransactions$findManyTransactions$city {
  CopyWith$Query$FindManyTransactions$findManyTransactions$city<
          Query$FindManyTransactions$findManyTransactions$city>
      get copyWith =>
          CopyWith$Query$FindManyTransactions$findManyTransactions$city(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindManyTransactions$findManyTransactions$city<
    TRes> {
  factory CopyWith$Query$FindManyTransactions$findManyTransactions$city(
    Query$FindManyTransactions$findManyTransactions$city instance,
    TRes Function(Query$FindManyTransactions$findManyTransactions$city) then,
  ) = _CopyWithImpl$Query$FindManyTransactions$findManyTransactions$city;

  factory CopyWith$Query$FindManyTransactions$findManyTransactions$city.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindManyTransactions$findManyTransactions$city;

  TRes call({
    int? city_id,
    String? city_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindManyTransactions$findManyTransactions$city<TRes>
    implements
        CopyWith$Query$FindManyTransactions$findManyTransactions$city<TRes> {
  _CopyWithImpl$Query$FindManyTransactions$findManyTransactions$city(
    this._instance,
    this._then,
  );

  final Query$FindManyTransactions$findManyTransactions$city _instance;

  final TRes Function(Query$FindManyTransactions$findManyTransactions$city)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? city_id = _undefined,
    Object? city_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindManyTransactions$findManyTransactions$city(
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

class _CopyWithStubImpl$Query$FindManyTransactions$findManyTransactions$city<
        TRes>
    implements
        CopyWith$Query$FindManyTransactions$findManyTransactions$city<TRes> {
  _CopyWithStubImpl$Query$FindManyTransactions$findManyTransactions$city(
      this._res);

  TRes _res;

  call({
    int? city_id,
    String? city_name,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindManyTransactions$findManyTransactions$seller {
  Query$FindManyTransactions$findManyTransactions$seller({
    required this.seller_id,
    required this.seller_name,
    this.$__typename = 'Sellers',
  });

  factory Query$FindManyTransactions$findManyTransactions$seller.fromJson(
      Map<String, dynamic> json) {
    final l$seller_id = json['seller_id'];
    final l$seller_name = json['seller_name'];
    final l$$__typename = json['__typename'];
    return Query$FindManyTransactions$findManyTransactions$seller(
      seller_id: (l$seller_id as int),
      seller_name: (l$seller_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int seller_id;

  final String seller_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$seller_id = seller_id;
    _resultData['seller_id'] = l$seller_id;
    final l$seller_name = seller_name;
    _resultData['seller_name'] = l$seller_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$seller_id = seller_id;
    final l$seller_name = seller_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$seller_id,
      l$seller_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindManyTransactions$findManyTransactions$seller) ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindManyTransactions$findManyTransactions$seller
    on Query$FindManyTransactions$findManyTransactions$seller {
  CopyWith$Query$FindManyTransactions$findManyTransactions$seller<
          Query$FindManyTransactions$findManyTransactions$seller>
      get copyWith =>
          CopyWith$Query$FindManyTransactions$findManyTransactions$seller(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindManyTransactions$findManyTransactions$seller<
    TRes> {
  factory CopyWith$Query$FindManyTransactions$findManyTransactions$seller(
    Query$FindManyTransactions$findManyTransactions$seller instance,
    TRes Function(Query$FindManyTransactions$findManyTransactions$seller) then,
  ) = _CopyWithImpl$Query$FindManyTransactions$findManyTransactions$seller;

  factory CopyWith$Query$FindManyTransactions$findManyTransactions$seller.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindManyTransactions$findManyTransactions$seller;

  TRes call({
    int? seller_id,
    String? seller_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindManyTransactions$findManyTransactions$seller<TRes>
    implements
        CopyWith$Query$FindManyTransactions$findManyTransactions$seller<TRes> {
  _CopyWithImpl$Query$FindManyTransactions$findManyTransactions$seller(
    this._instance,
    this._then,
  );

  final Query$FindManyTransactions$findManyTransactions$seller _instance;

  final TRes Function(Query$FindManyTransactions$findManyTransactions$seller)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? seller_id = _undefined,
    Object? seller_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindManyTransactions$findManyTransactions$seller(
        seller_id: seller_id == _undefined || seller_id == null
            ? _instance.seller_id
            : (seller_id as int),
        seller_name: seller_name == _undefined || seller_name == null
            ? _instance.seller_name
            : (seller_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindManyTransactions$findManyTransactions$seller<
        TRes>
    implements
        CopyWith$Query$FindManyTransactions$findManyTransactions$seller<TRes> {
  _CopyWithStubImpl$Query$FindManyTransactions$findManyTransactions$seller(
      this._res);

  TRes _res;

  call({
    int? seller_id,
    String? seller_name,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindManyTransactions$findManyTransactions$status {
  Query$FindManyTransactions$findManyTransactions$status({
    required this.transaction_status_id,
    required this.name,
    this.$__typename = 'TransactionStatus',
  });

  factory Query$FindManyTransactions$findManyTransactions$status.fromJson(
      Map<String, dynamic> json) {
    final l$transaction_status_id = json['transaction_status_id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$FindManyTransactions$findManyTransactions$status(
      transaction_status_id: (l$transaction_status_id as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int transaction_status_id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transaction_status_id = transaction_status_id;
    _resultData['transaction_status_id'] = l$transaction_status_id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transaction_status_id = transaction_status_id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transaction_status_id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindManyTransactions$findManyTransactions$status) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_status_id = transaction_status_id;
    final lOther$transaction_status_id = other.transaction_status_id;
    if (l$transaction_status_id != lOther$transaction_status_id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$FindManyTransactions$findManyTransactions$status
    on Query$FindManyTransactions$findManyTransactions$status {
  CopyWith$Query$FindManyTransactions$findManyTransactions$status<
          Query$FindManyTransactions$findManyTransactions$status>
      get copyWith =>
          CopyWith$Query$FindManyTransactions$findManyTransactions$status(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindManyTransactions$findManyTransactions$status<
    TRes> {
  factory CopyWith$Query$FindManyTransactions$findManyTransactions$status(
    Query$FindManyTransactions$findManyTransactions$status instance,
    TRes Function(Query$FindManyTransactions$findManyTransactions$status) then,
  ) = _CopyWithImpl$Query$FindManyTransactions$findManyTransactions$status;

  factory CopyWith$Query$FindManyTransactions$findManyTransactions$status.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindManyTransactions$findManyTransactions$status;

  TRes call({
    int? transaction_status_id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindManyTransactions$findManyTransactions$status<TRes>
    implements
        CopyWith$Query$FindManyTransactions$findManyTransactions$status<TRes> {
  _CopyWithImpl$Query$FindManyTransactions$findManyTransactions$status(
    this._instance,
    this._then,
  );

  final Query$FindManyTransactions$findManyTransactions$status _instance;

  final TRes Function(Query$FindManyTransactions$findManyTransactions$status)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_status_id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindManyTransactions$findManyTransactions$status(
        transaction_status_id:
            transaction_status_id == _undefined || transaction_status_id == null
                ? _instance.transaction_status_id
                : (transaction_status_id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindManyTransactions$findManyTransactions$status<
        TRes>
    implements
        CopyWith$Query$FindManyTransactions$findManyTransactions$status<TRes> {
  _CopyWithStubImpl$Query$FindManyTransactions$findManyTransactions$status(
      this._res);

  TRes _res;

  call({
    int? transaction_status_id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateOneTransactions {
  factory Variables$Mutation$CreateOneTransactions(
          {required Input$TransactionsCreateInput data}) =>
      Variables$Mutation$CreateOneTransactions._({
        r'data': data,
      });

  Variables$Mutation$CreateOneTransactions._(this._$data);

  factory Variables$Mutation$CreateOneTransactions.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input$TransactionsCreateInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Variables$Mutation$CreateOneTransactions._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionsCreateInput get data =>
      (_$data['data'] as Input$TransactionsCreateInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateOneTransactions<
          Variables$Mutation$CreateOneTransactions>
      get copyWith => CopyWith$Variables$Mutation$CreateOneTransactions(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateOneTransactions) ||
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

abstract class CopyWith$Variables$Mutation$CreateOneTransactions<TRes> {
  factory CopyWith$Variables$Mutation$CreateOneTransactions(
    Variables$Mutation$CreateOneTransactions instance,
    TRes Function(Variables$Mutation$CreateOneTransactions) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateOneTransactions;

  factory CopyWith$Variables$Mutation$CreateOneTransactions.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateOneTransactions;

  TRes call({Input$TransactionsCreateInput? data});
}

class _CopyWithImpl$Variables$Mutation$CreateOneTransactions<TRes>
    implements CopyWith$Variables$Mutation$CreateOneTransactions<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateOneTransactions(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateOneTransactions _instance;

  final TRes Function(Variables$Mutation$CreateOneTransactions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$CreateOneTransactions._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$TransactionsCreateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateOneTransactions<TRes>
    implements CopyWith$Variables$Mutation$CreateOneTransactions<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateOneTransactions(this._res);

  TRes _res;

  call({Input$TransactionsCreateInput? data}) => _res;
}

class Mutation$CreateOneTransactions {
  Mutation$CreateOneTransactions({
    required this.createOneTransactions,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateOneTransactions.fromJson(Map<String, dynamic> json) {
    final l$createOneTransactions = json['createOneTransactions'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOneTransactions(
      createOneTransactions:
          Mutation$CreateOneTransactions$createOneTransactions.fromJson(
              (l$createOneTransactions as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateOneTransactions$createOneTransactions
      createOneTransactions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createOneTransactions = createOneTransactions;
    _resultData['createOneTransactions'] = l$createOneTransactions.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createOneTransactions = createOneTransactions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createOneTransactions,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOneTransactions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createOneTransactions = createOneTransactions;
    final lOther$createOneTransactions = other.createOneTransactions;
    if (l$createOneTransactions != lOther$createOneTransactions) {
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

extension UtilityExtension$Mutation$CreateOneTransactions
    on Mutation$CreateOneTransactions {
  CopyWith$Mutation$CreateOneTransactions<Mutation$CreateOneTransactions>
      get copyWith => CopyWith$Mutation$CreateOneTransactions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOneTransactions<TRes> {
  factory CopyWith$Mutation$CreateOneTransactions(
    Mutation$CreateOneTransactions instance,
    TRes Function(Mutation$CreateOneTransactions) then,
  ) = _CopyWithImpl$Mutation$CreateOneTransactions;

  factory CopyWith$Mutation$CreateOneTransactions.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOneTransactions;

  TRes call({
    Mutation$CreateOneTransactions$createOneTransactions? createOneTransactions,
    String? $__typename,
  });
  CopyWith$Mutation$CreateOneTransactions$createOneTransactions<TRes>
      get createOneTransactions;
}

class _CopyWithImpl$Mutation$CreateOneTransactions<TRes>
    implements CopyWith$Mutation$CreateOneTransactions<TRes> {
  _CopyWithImpl$Mutation$CreateOneTransactions(
    this._instance,
    this._then,
  );

  final Mutation$CreateOneTransactions _instance;

  final TRes Function(Mutation$CreateOneTransactions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createOneTransactions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOneTransactions(
        createOneTransactions:
            createOneTransactions == _undefined || createOneTransactions == null
                ? _instance.createOneTransactions
                : (createOneTransactions
                    as Mutation$CreateOneTransactions$createOneTransactions),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreateOneTransactions$createOneTransactions<TRes>
      get createOneTransactions {
    final local$createOneTransactions = _instance.createOneTransactions;
    return CopyWith$Mutation$CreateOneTransactions$createOneTransactions(
        local$createOneTransactions, (e) => call(createOneTransactions: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateOneTransactions<TRes>
    implements CopyWith$Mutation$CreateOneTransactions<TRes> {
  _CopyWithStubImpl$Mutation$CreateOneTransactions(this._res);

  TRes _res;

  call({
    Mutation$CreateOneTransactions$createOneTransactions? createOneTransactions,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateOneTransactions$createOneTransactions<TRes>
      get createOneTransactions =>
          CopyWith$Mutation$CreateOneTransactions$createOneTransactions.stub(
              _res);
}

const documentNodeMutationCreateOneTransactions = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateOneTransactions'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'TransactionsCreateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createOneTransactions'),
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
            name: NameNode(value: 'transaction_id'),
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
Mutation$CreateOneTransactions _parserFn$Mutation$CreateOneTransactions(
        Map<String, dynamic> data) =>
    Mutation$CreateOneTransactions.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateOneTransactions = FutureOr<void>
    Function(
  dynamic,
  Mutation$CreateOneTransactions?,
);

class Options$Mutation$CreateOneTransactions
    extends graphql.MutationOptions<Mutation$CreateOneTransactions> {
  Options$Mutation$CreateOneTransactions({
    String? operationName,
    required Variables$Mutation$CreateOneTransactions variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOneTransactions? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOneTransactions>? update,
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
                        : _parserFn$Mutation$CreateOneTransactions(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOneTransactions,
          parserFn: _parserFn$Mutation$CreateOneTransactions,
        );

  final OnMutationCompleted$Mutation$CreateOneTransactions?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateOneTransactions
    extends graphql.WatchQueryOptions<Mutation$CreateOneTransactions> {
  WatchOptions$Mutation$CreateOneTransactions({
    String? operationName,
    required Variables$Mutation$CreateOneTransactions variables,
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
          document: documentNodeMutationCreateOneTransactions,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateOneTransactions,
        );
}

extension ClientExtension$Mutation$CreateOneTransactions
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateOneTransactions>>
      mutate$CreateOneTransactions(
              Options$Mutation$CreateOneTransactions options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateOneTransactions>
      watchMutation$CreateOneTransactions(
              WatchOptions$Mutation$CreateOneTransactions options) =>
          this.watchMutation(options);
}

class Mutation$CreateOneTransactions$createOneTransactions {
  Mutation$CreateOneTransactions$createOneTransactions({
    required this.transaction_id,
    this.$__typename = 'Transactions',
  });

  factory Mutation$CreateOneTransactions$createOneTransactions.fromJson(
      Map<String, dynamic> json) {
    final l$transaction_id = json['transaction_id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOneTransactions$createOneTransactions(
      transaction_id: (l$transaction_id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int transaction_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transaction_id = transaction_id;
    _resultData['transaction_id'] = l$transaction_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transaction_id = transaction_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transaction_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOneTransactions$createOneTransactions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_id = transaction_id;
    final lOther$transaction_id = other.transaction_id;
    if (l$transaction_id != lOther$transaction_id) {
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

extension UtilityExtension$Mutation$CreateOneTransactions$createOneTransactions
    on Mutation$CreateOneTransactions$createOneTransactions {
  CopyWith$Mutation$CreateOneTransactions$createOneTransactions<
          Mutation$CreateOneTransactions$createOneTransactions>
      get copyWith =>
          CopyWith$Mutation$CreateOneTransactions$createOneTransactions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOneTransactions$createOneTransactions<
    TRes> {
  factory CopyWith$Mutation$CreateOneTransactions$createOneTransactions(
    Mutation$CreateOneTransactions$createOneTransactions instance,
    TRes Function(Mutation$CreateOneTransactions$createOneTransactions) then,
  ) = _CopyWithImpl$Mutation$CreateOneTransactions$createOneTransactions;

  factory CopyWith$Mutation$CreateOneTransactions$createOneTransactions.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateOneTransactions$createOneTransactions;

  TRes call({
    int? transaction_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateOneTransactions$createOneTransactions<TRes>
    implements
        CopyWith$Mutation$CreateOneTransactions$createOneTransactions<TRes> {
  _CopyWithImpl$Mutation$CreateOneTransactions$createOneTransactions(
    this._instance,
    this._then,
  );

  final Mutation$CreateOneTransactions$createOneTransactions _instance;

  final TRes Function(Mutation$CreateOneTransactions$createOneTransactions)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOneTransactions$createOneTransactions(
        transaction_id: transaction_id == _undefined || transaction_id == null
            ? _instance.transaction_id
            : (transaction_id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateOneTransactions$createOneTransactions<
        TRes>
    implements
        CopyWith$Mutation$CreateOneTransactions$createOneTransactions<TRes> {
  _CopyWithStubImpl$Mutation$CreateOneTransactions$createOneTransactions(
      this._res);

  TRes _res;

  call({
    int? transaction_id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$FindFirstTransactions {
  factory Variables$Query$FindFirstTransactions(
          {Input$TransactionsWhereInput? where}) =>
      Variables$Query$FindFirstTransactions._({
        if (where != null) r'where': where,
      });

  Variables$Query$FindFirstTransactions._(this._$data);

  factory Variables$Query$FindFirstTransactions.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$TransactionsWhereInput.fromJson(
              (l$where as Map<String, dynamic>));
    }
    return Variables$Query$FindFirstTransactions._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionsWhereInput? get where =>
      (_$data['where'] as Input$TransactionsWhereInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$FindFirstTransactions<
          Variables$Query$FindFirstTransactions>
      get copyWith => CopyWith$Variables$Query$FindFirstTransactions(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FindFirstTransactions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    return Object.hashAll([_$data.containsKey('where') ? l$where : const {}]);
  }
}

abstract class CopyWith$Variables$Query$FindFirstTransactions<TRes> {
  factory CopyWith$Variables$Query$FindFirstTransactions(
    Variables$Query$FindFirstTransactions instance,
    TRes Function(Variables$Query$FindFirstTransactions) then,
  ) = _CopyWithImpl$Variables$Query$FindFirstTransactions;

  factory CopyWith$Variables$Query$FindFirstTransactions.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindFirstTransactions;

  TRes call({Input$TransactionsWhereInput? where});
}

class _CopyWithImpl$Variables$Query$FindFirstTransactions<TRes>
    implements CopyWith$Variables$Query$FindFirstTransactions<TRes> {
  _CopyWithImpl$Variables$Query$FindFirstTransactions(
    this._instance,
    this._then,
  );

  final Variables$Query$FindFirstTransactions _instance;

  final TRes Function(Variables$Query$FindFirstTransactions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) =>
      _then(Variables$Query$FindFirstTransactions._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as Input$TransactionsWhereInput?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindFirstTransactions<TRes>
    implements CopyWith$Variables$Query$FindFirstTransactions<TRes> {
  _CopyWithStubImpl$Variables$Query$FindFirstTransactions(this._res);

  TRes _res;

  call({Input$TransactionsWhereInput? where}) => _res;
}

class Query$FindFirstTransactions {
  Query$FindFirstTransactions({
    this.findFirstTransactions,
    this.$__typename = 'Query',
  });

  factory Query$FindFirstTransactions.fromJson(Map<String, dynamic> json) {
    final l$findFirstTransactions = json['findFirstTransactions'];
    final l$$__typename = json['__typename'];
    return Query$FindFirstTransactions(
      findFirstTransactions: l$findFirstTransactions == null
          ? null
          : Query$FindFirstTransactions$findFirstTransactions.fromJson(
              (l$findFirstTransactions as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FindFirstTransactions$findFirstTransactions?
      findFirstTransactions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findFirstTransactions = findFirstTransactions;
    _resultData['findFirstTransactions'] = l$findFirstTransactions?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findFirstTransactions = findFirstTransactions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$findFirstTransactions,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindFirstTransactions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$findFirstTransactions = findFirstTransactions;
    final lOther$findFirstTransactions = other.findFirstTransactions;
    if (l$findFirstTransactions != lOther$findFirstTransactions) {
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

extension UtilityExtension$Query$FindFirstTransactions
    on Query$FindFirstTransactions {
  CopyWith$Query$FindFirstTransactions<Query$FindFirstTransactions>
      get copyWith => CopyWith$Query$FindFirstTransactions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindFirstTransactions<TRes> {
  factory CopyWith$Query$FindFirstTransactions(
    Query$FindFirstTransactions instance,
    TRes Function(Query$FindFirstTransactions) then,
  ) = _CopyWithImpl$Query$FindFirstTransactions;

  factory CopyWith$Query$FindFirstTransactions.stub(TRes res) =
      _CopyWithStubImpl$Query$FindFirstTransactions;

  TRes call({
    Query$FindFirstTransactions$findFirstTransactions? findFirstTransactions,
    String? $__typename,
  });
  CopyWith$Query$FindFirstTransactions$findFirstTransactions<TRes>
      get findFirstTransactions;
}

class _CopyWithImpl$Query$FindFirstTransactions<TRes>
    implements CopyWith$Query$FindFirstTransactions<TRes> {
  _CopyWithImpl$Query$FindFirstTransactions(
    this._instance,
    this._then,
  );

  final Query$FindFirstTransactions _instance;

  final TRes Function(Query$FindFirstTransactions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findFirstTransactions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindFirstTransactions(
        findFirstTransactions: findFirstTransactions == _undefined
            ? _instance.findFirstTransactions
            : (findFirstTransactions
                as Query$FindFirstTransactions$findFirstTransactions?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindFirstTransactions$findFirstTransactions<TRes>
      get findFirstTransactions {
    final local$findFirstTransactions = _instance.findFirstTransactions;
    return local$findFirstTransactions == null
        ? CopyWith$Query$FindFirstTransactions$findFirstTransactions.stub(
            _then(_instance))
        : CopyWith$Query$FindFirstTransactions$findFirstTransactions(
            local$findFirstTransactions, (e) => call(findFirstTransactions: e));
  }
}

class _CopyWithStubImpl$Query$FindFirstTransactions<TRes>
    implements CopyWith$Query$FindFirstTransactions<TRes> {
  _CopyWithStubImpl$Query$FindFirstTransactions(this._res);

  TRes _res;

  call({
    Query$FindFirstTransactions$findFirstTransactions? findFirstTransactions,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindFirstTransactions$findFirstTransactions<TRes>
      get findFirstTransactions =>
          CopyWith$Query$FindFirstTransactions$findFirstTransactions.stub(_res);
}

const documentNodeQueryFindFirstTransactions = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindFirstTransactions'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'TransactionsWhereInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findFirstTransactions'),
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
            name: NameNode(value: 'address'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'city_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customer_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customer_phone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'date'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'product_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'quantity'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'remainingPayement'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'seller'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'seller_name'),
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
            name: NameNode(value: 'seller_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'status'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
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
            name: NameNode(value: 'status_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'totalPayement'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'transaction_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'transaction_type_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'transaction_type'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'type_name'),
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
            name: NameNode(value: 'city'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
Query$FindFirstTransactions _parserFn$Query$FindFirstTransactions(
        Map<String, dynamic> data) =>
    Query$FindFirstTransactions.fromJson(data);

class Options$Query$FindFirstTransactions
    extends graphql.QueryOptions<Query$FindFirstTransactions> {
  Options$Query$FindFirstTransactions({
    String? operationName,
    Variables$Query$FindFirstTransactions? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryFindFirstTransactions,
          parserFn: _parserFn$Query$FindFirstTransactions,
        );
}

class WatchOptions$Query$FindFirstTransactions
    extends graphql.WatchQueryOptions<Query$FindFirstTransactions> {
  WatchOptions$Query$FindFirstTransactions({
    String? operationName,
    Variables$Query$FindFirstTransactions? variables,
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
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryFindFirstTransactions,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FindFirstTransactions,
        );
}

class FetchMoreOptions$Query$FindFirstTransactions
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FindFirstTransactions({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$FindFirstTransactions? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryFindFirstTransactions,
        );
}

extension ClientExtension$Query$FindFirstTransactions on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FindFirstTransactions>>
      query$FindFirstTransactions(
              [Options$Query$FindFirstTransactions? options]) async =>
          await this.query(options ?? Options$Query$FindFirstTransactions());
  graphql.ObservableQuery<
      Query$FindFirstTransactions> watchQuery$FindFirstTransactions(
          [WatchOptions$Query$FindFirstTransactions? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FindFirstTransactions());
  void writeQuery$FindFirstTransactions({
    required Query$FindFirstTransactions data,
    Variables$Query$FindFirstTransactions? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryFindFirstTransactions),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FindFirstTransactions? readQuery$FindFirstTransactions({
    Variables$Query$FindFirstTransactions? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryFindFirstTransactions),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FindFirstTransactions.fromJson(result);
  }
}

class Query$FindFirstTransactions$findFirstTransactions {
  Query$FindFirstTransactions$findFirstTransactions({
    required this.address,
    required this.city_id,
    required this.customer_name,
    required this.customer_phone,
    required this.date,
    required this.product_id,
    required this.quantity,
    required this.remainingPayement,
    required this.seller,
    required this.seller_id,
    required this.status,
    required this.status_id,
    required this.totalPayement,
    required this.transaction_id,
    required this.transaction_type_id,
    required this.transaction_type,
    required this.city,
    this.$__typename = 'Transactions',
  });

  factory Query$FindFirstTransactions$findFirstTransactions.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    final l$city_id = json['city_id'];
    final l$customer_name = json['customer_name'];
    final l$customer_phone = json['customer_phone'];
    final l$date = json['date'];
    final l$product_id = json['product_id'];
    final l$quantity = json['quantity'];
    final l$remainingPayement = json['remainingPayement'];
    final l$seller = json['seller'];
    final l$seller_id = json['seller_id'];
    final l$status = json['status'];
    final l$status_id = json['status_id'];
    final l$totalPayement = json['totalPayement'];
    final l$transaction_id = json['transaction_id'];
    final l$transaction_type_id = json['transaction_type_id'];
    final l$transaction_type = json['transaction_type'];
    final l$city = json['city'];
    final l$$__typename = json['__typename'];
    return Query$FindFirstTransactions$findFirstTransactions(
      address: (l$address as String),
      city_id: (l$city_id as int),
      customer_name: (l$customer_name as String),
      customer_phone: (l$customer_phone as String),
      date: (l$date as String),
      product_id: (l$product_id as int),
      quantity: (l$quantity as int),
      remainingPayement: (l$remainingPayement as num).toDouble(),
      seller: Query$FindFirstTransactions$findFirstTransactions$seller.fromJson(
          (l$seller as Map<String, dynamic>)),
      seller_id: (l$seller_id as int),
      status: Query$FindFirstTransactions$findFirstTransactions$status.fromJson(
          (l$status as Map<String, dynamic>)),
      status_id: (l$status_id as int),
      totalPayement: (l$totalPayement as num).toDouble(),
      transaction_id: (l$transaction_id as int),
      transaction_type_id: (l$transaction_type_id as int),
      transaction_type:
          Query$FindFirstTransactions$findFirstTransactions$transaction_type
              .fromJson((l$transaction_type as Map<String, dynamic>)),
      city: Query$FindFirstTransactions$findFirstTransactions$city.fromJson(
          (l$city as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String address;

  final int city_id;

  final String customer_name;

  final String customer_phone;

  final String date;

  final int product_id;

  final int quantity;

  final double remainingPayement;

  final Query$FindFirstTransactions$findFirstTransactions$seller seller;

  final int seller_id;

  final Query$FindFirstTransactions$findFirstTransactions$status status;

  final int status_id;

  final double totalPayement;

  final int transaction_id;

  final int transaction_type_id;

  final Query$FindFirstTransactions$findFirstTransactions$transaction_type
      transaction_type;

  final Query$FindFirstTransactions$findFirstTransactions$city city;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$address = address;
    _resultData['address'] = l$address;
    final l$city_id = city_id;
    _resultData['city_id'] = l$city_id;
    final l$customer_name = customer_name;
    _resultData['customer_name'] = l$customer_name;
    final l$customer_phone = customer_phone;
    _resultData['customer_phone'] = l$customer_phone;
    final l$date = date;
    _resultData['date'] = l$date;
    final l$product_id = product_id;
    _resultData['product_id'] = l$product_id;
    final l$quantity = quantity;
    _resultData['quantity'] = l$quantity;
    final l$remainingPayement = remainingPayement;
    _resultData['remainingPayement'] = l$remainingPayement;
    final l$seller = seller;
    _resultData['seller'] = l$seller.toJson();
    final l$seller_id = seller_id;
    _resultData['seller_id'] = l$seller_id;
    final l$status = status;
    _resultData['status'] = l$status.toJson();
    final l$status_id = status_id;
    _resultData['status_id'] = l$status_id;
    final l$totalPayement = totalPayement;
    _resultData['totalPayement'] = l$totalPayement;
    final l$transaction_id = transaction_id;
    _resultData['transaction_id'] = l$transaction_id;
    final l$transaction_type_id = transaction_type_id;
    _resultData['transaction_type_id'] = l$transaction_type_id;
    final l$transaction_type = transaction_type;
    _resultData['transaction_type'] = l$transaction_type.toJson();
    final l$city = city;
    _resultData['city'] = l$city.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$address = address;
    final l$city_id = city_id;
    final l$customer_name = customer_name;
    final l$customer_phone = customer_phone;
    final l$date = date;
    final l$product_id = product_id;
    final l$quantity = quantity;
    final l$remainingPayement = remainingPayement;
    final l$seller = seller;
    final l$seller_id = seller_id;
    final l$status = status;
    final l$status_id = status_id;
    final l$totalPayement = totalPayement;
    final l$transaction_id = transaction_id;
    final l$transaction_type_id = transaction_type_id;
    final l$transaction_type = transaction_type;
    final l$city = city;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$address,
      l$city_id,
      l$customer_name,
      l$customer_phone,
      l$date,
      l$product_id,
      l$quantity,
      l$remainingPayement,
      l$seller,
      l$seller_id,
      l$status,
      l$status_id,
      l$totalPayement,
      l$transaction_id,
      l$transaction_type_id,
      l$transaction_type,
      l$city,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindFirstTransactions$findFirstTransactions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$city_id = city_id;
    final lOther$city_id = other.city_id;
    if (l$city_id != lOther$city_id) {
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
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$remainingPayement = remainingPayement;
    final lOther$remainingPayement = other.remainingPayement;
    if (l$remainingPayement != lOther$remainingPayement) {
      return false;
    }
    final l$seller = seller;
    final lOther$seller = other.seller;
    if (l$seller != lOther$seller) {
      return false;
    }
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (l$seller_id != lOther$seller_id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$status_id = status_id;
    final lOther$status_id = other.status_id;
    if (l$status_id != lOther$status_id) {
      return false;
    }
    final l$totalPayement = totalPayement;
    final lOther$totalPayement = other.totalPayement;
    if (l$totalPayement != lOther$totalPayement) {
      return false;
    }
    final l$transaction_id = transaction_id;
    final lOther$transaction_id = other.transaction_id;
    if (l$transaction_id != lOther$transaction_id) {
      return false;
    }
    final l$transaction_type_id = transaction_type_id;
    final lOther$transaction_type_id = other.transaction_type_id;
    if (l$transaction_type_id != lOther$transaction_type_id) {
      return false;
    }
    final l$transaction_type = transaction_type;
    final lOther$transaction_type = other.transaction_type;
    if (l$transaction_type != lOther$transaction_type) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) {
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

extension UtilityExtension$Query$FindFirstTransactions$findFirstTransactions
    on Query$FindFirstTransactions$findFirstTransactions {
  CopyWith$Query$FindFirstTransactions$findFirstTransactions<
          Query$FindFirstTransactions$findFirstTransactions>
      get copyWith =>
          CopyWith$Query$FindFirstTransactions$findFirstTransactions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindFirstTransactions$findFirstTransactions<
    TRes> {
  factory CopyWith$Query$FindFirstTransactions$findFirstTransactions(
    Query$FindFirstTransactions$findFirstTransactions instance,
    TRes Function(Query$FindFirstTransactions$findFirstTransactions) then,
  ) = _CopyWithImpl$Query$FindFirstTransactions$findFirstTransactions;

  factory CopyWith$Query$FindFirstTransactions$findFirstTransactions.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindFirstTransactions$findFirstTransactions;

  TRes call({
    String? address,
    int? city_id,
    String? customer_name,
    String? customer_phone,
    String? date,
    int? product_id,
    int? quantity,
    double? remainingPayement,
    Query$FindFirstTransactions$findFirstTransactions$seller? seller,
    int? seller_id,
    Query$FindFirstTransactions$findFirstTransactions$status? status,
    int? status_id,
    double? totalPayement,
    int? transaction_id,
    int? transaction_type_id,
    Query$FindFirstTransactions$findFirstTransactions$transaction_type?
        transaction_type,
    Query$FindFirstTransactions$findFirstTransactions$city? city,
    String? $__typename,
  });
  CopyWith$Query$FindFirstTransactions$findFirstTransactions$seller<TRes>
      get seller;
  CopyWith$Query$FindFirstTransactions$findFirstTransactions$status<TRes>
      get status;
  CopyWith$Query$FindFirstTransactions$findFirstTransactions$transaction_type<
      TRes> get transaction_type;
  CopyWith$Query$FindFirstTransactions$findFirstTransactions$city<TRes>
      get city;
}

class _CopyWithImpl$Query$FindFirstTransactions$findFirstTransactions<TRes>
    implements
        CopyWith$Query$FindFirstTransactions$findFirstTransactions<TRes> {
  _CopyWithImpl$Query$FindFirstTransactions$findFirstTransactions(
    this._instance,
    this._then,
  );

  final Query$FindFirstTransactions$findFirstTransactions _instance;

  final TRes Function(Query$FindFirstTransactions$findFirstTransactions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address = _undefined,
    Object? city_id = _undefined,
    Object? customer_name = _undefined,
    Object? customer_phone = _undefined,
    Object? date = _undefined,
    Object? product_id = _undefined,
    Object? quantity = _undefined,
    Object? remainingPayement = _undefined,
    Object? seller = _undefined,
    Object? seller_id = _undefined,
    Object? status = _undefined,
    Object? status_id = _undefined,
    Object? totalPayement = _undefined,
    Object? transaction_id = _undefined,
    Object? transaction_type_id = _undefined,
    Object? transaction_type = _undefined,
    Object? city = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindFirstTransactions$findFirstTransactions(
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        city_id: city_id == _undefined || city_id == null
            ? _instance.city_id
            : (city_id as int),
        customer_name: customer_name == _undefined || customer_name == null
            ? _instance.customer_name
            : (customer_name as String),
        customer_phone: customer_phone == _undefined || customer_phone == null
            ? _instance.customer_phone
            : (customer_phone as String),
        date: date == _undefined || date == null
            ? _instance.date
            : (date as String),
        product_id: product_id == _undefined || product_id == null
            ? _instance.product_id
            : (product_id as int),
        quantity: quantity == _undefined || quantity == null
            ? _instance.quantity
            : (quantity as int),
        remainingPayement:
            remainingPayement == _undefined || remainingPayement == null
                ? _instance.remainingPayement
                : (remainingPayement as double),
        seller: seller == _undefined || seller == null
            ? _instance.seller
            : (seller
                as Query$FindFirstTransactions$findFirstTransactions$seller),
        seller_id: seller_id == _undefined || seller_id == null
            ? _instance.seller_id
            : (seller_id as int),
        status: status == _undefined || status == null
            ? _instance.status
            : (status
                as Query$FindFirstTransactions$findFirstTransactions$status),
        status_id: status_id == _undefined || status_id == null
            ? _instance.status_id
            : (status_id as int),
        totalPayement: totalPayement == _undefined || totalPayement == null
            ? _instance.totalPayement
            : (totalPayement as double),
        transaction_id: transaction_id == _undefined || transaction_id == null
            ? _instance.transaction_id
            : (transaction_id as int),
        transaction_type_id:
            transaction_type_id == _undefined || transaction_type_id == null
                ? _instance.transaction_type_id
                : (transaction_type_id as int),
        transaction_type: transaction_type == _undefined ||
                transaction_type == null
            ? _instance.transaction_type
            : (transaction_type
                as Query$FindFirstTransactions$findFirstTransactions$transaction_type),
        city: city == _undefined || city == null
            ? _instance.city
            : (city as Query$FindFirstTransactions$findFirstTransactions$city),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindFirstTransactions$findFirstTransactions$seller<TRes>
      get seller {
    final local$seller = _instance.seller;
    return CopyWith$Query$FindFirstTransactions$findFirstTransactions$seller(
        local$seller, (e) => call(seller: e));
  }

  CopyWith$Query$FindFirstTransactions$findFirstTransactions$status<TRes>
      get status {
    final local$status = _instance.status;
    return CopyWith$Query$FindFirstTransactions$findFirstTransactions$status(
        local$status, (e) => call(status: e));
  }

  CopyWith$Query$FindFirstTransactions$findFirstTransactions$transaction_type<
      TRes> get transaction_type {
    final local$transaction_type = _instance.transaction_type;
    return CopyWith$Query$FindFirstTransactions$findFirstTransactions$transaction_type(
        local$transaction_type, (e) => call(transaction_type: e));
  }

  CopyWith$Query$FindFirstTransactions$findFirstTransactions$city<TRes>
      get city {
    final local$city = _instance.city;
    return CopyWith$Query$FindFirstTransactions$findFirstTransactions$city(
        local$city, (e) => call(city: e));
  }
}

class _CopyWithStubImpl$Query$FindFirstTransactions$findFirstTransactions<TRes>
    implements
        CopyWith$Query$FindFirstTransactions$findFirstTransactions<TRes> {
  _CopyWithStubImpl$Query$FindFirstTransactions$findFirstTransactions(
      this._res);

  TRes _res;

  call({
    String? address,
    int? city_id,
    String? customer_name,
    String? customer_phone,
    String? date,
    int? product_id,
    int? quantity,
    double? remainingPayement,
    Query$FindFirstTransactions$findFirstTransactions$seller? seller,
    int? seller_id,
    Query$FindFirstTransactions$findFirstTransactions$status? status,
    int? status_id,
    double? totalPayement,
    int? transaction_id,
    int? transaction_type_id,
    Query$FindFirstTransactions$findFirstTransactions$transaction_type?
        transaction_type,
    Query$FindFirstTransactions$findFirstTransactions$city? city,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindFirstTransactions$findFirstTransactions$seller<TRes>
      get seller =>
          CopyWith$Query$FindFirstTransactions$findFirstTransactions$seller
              .stub(_res);
  CopyWith$Query$FindFirstTransactions$findFirstTransactions$status<TRes>
      get status =>
          CopyWith$Query$FindFirstTransactions$findFirstTransactions$status
              .stub(_res);
  CopyWith$Query$FindFirstTransactions$findFirstTransactions$transaction_type<
          TRes>
      get transaction_type =>
          CopyWith$Query$FindFirstTransactions$findFirstTransactions$transaction_type
              .stub(_res);
  CopyWith$Query$FindFirstTransactions$findFirstTransactions$city<TRes>
      get city =>
          CopyWith$Query$FindFirstTransactions$findFirstTransactions$city.stub(
              _res);
}

class Query$FindFirstTransactions$findFirstTransactions$seller {
  Query$FindFirstTransactions$findFirstTransactions$seller({
    required this.seller_name,
    this.$__typename = 'Sellers',
  });

  factory Query$FindFirstTransactions$findFirstTransactions$seller.fromJson(
      Map<String, dynamic> json) {
    final l$seller_name = json['seller_name'];
    final l$$__typename = json['__typename'];
    return Query$FindFirstTransactions$findFirstTransactions$seller(
      seller_name: (l$seller_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String seller_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$seller_name = seller_name;
    _resultData['seller_name'] = l$seller_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$seller_name = seller_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$seller_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindFirstTransactions$findFirstTransactions$seller) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$seller_name = seller_name;
    final lOther$seller_name = other.seller_name;
    if (l$seller_name != lOther$seller_name) {
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

extension UtilityExtension$Query$FindFirstTransactions$findFirstTransactions$seller
    on Query$FindFirstTransactions$findFirstTransactions$seller {
  CopyWith$Query$FindFirstTransactions$findFirstTransactions$seller<
          Query$FindFirstTransactions$findFirstTransactions$seller>
      get copyWith =>
          CopyWith$Query$FindFirstTransactions$findFirstTransactions$seller(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindFirstTransactions$findFirstTransactions$seller<
    TRes> {
  factory CopyWith$Query$FindFirstTransactions$findFirstTransactions$seller(
    Query$FindFirstTransactions$findFirstTransactions$seller instance,
    TRes Function(Query$FindFirstTransactions$findFirstTransactions$seller)
        then,
  ) = _CopyWithImpl$Query$FindFirstTransactions$findFirstTransactions$seller;

  factory CopyWith$Query$FindFirstTransactions$findFirstTransactions$seller.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindFirstTransactions$findFirstTransactions$seller;

  TRes call({
    String? seller_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindFirstTransactions$findFirstTransactions$seller<
        TRes>
    implements
        CopyWith$Query$FindFirstTransactions$findFirstTransactions$seller<
            TRes> {
  _CopyWithImpl$Query$FindFirstTransactions$findFirstTransactions$seller(
    this._instance,
    this._then,
  );

  final Query$FindFirstTransactions$findFirstTransactions$seller _instance;

  final TRes Function(Query$FindFirstTransactions$findFirstTransactions$seller)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? seller_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindFirstTransactions$findFirstTransactions$seller(
        seller_name: seller_name == _undefined || seller_name == null
            ? _instance.seller_name
            : (seller_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindFirstTransactions$findFirstTransactions$seller<
        TRes>
    implements
        CopyWith$Query$FindFirstTransactions$findFirstTransactions$seller<
            TRes> {
  _CopyWithStubImpl$Query$FindFirstTransactions$findFirstTransactions$seller(
      this._res);

  TRes _res;

  call({
    String? seller_name,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindFirstTransactions$findFirstTransactions$status {
  Query$FindFirstTransactions$findFirstTransactions$status({
    required this.name,
    this.$__typename = 'TransactionStatus',
  });

  factory Query$FindFirstTransactions$findFirstTransactions$status.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$FindFirstTransactions$findFirstTransactions$status(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindFirstTransactions$findFirstTransactions$status) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$FindFirstTransactions$findFirstTransactions$status
    on Query$FindFirstTransactions$findFirstTransactions$status {
  CopyWith$Query$FindFirstTransactions$findFirstTransactions$status<
          Query$FindFirstTransactions$findFirstTransactions$status>
      get copyWith =>
          CopyWith$Query$FindFirstTransactions$findFirstTransactions$status(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindFirstTransactions$findFirstTransactions$status<
    TRes> {
  factory CopyWith$Query$FindFirstTransactions$findFirstTransactions$status(
    Query$FindFirstTransactions$findFirstTransactions$status instance,
    TRes Function(Query$FindFirstTransactions$findFirstTransactions$status)
        then,
  ) = _CopyWithImpl$Query$FindFirstTransactions$findFirstTransactions$status;

  factory CopyWith$Query$FindFirstTransactions$findFirstTransactions$status.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindFirstTransactions$findFirstTransactions$status;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindFirstTransactions$findFirstTransactions$status<
        TRes>
    implements
        CopyWith$Query$FindFirstTransactions$findFirstTransactions$status<
            TRes> {
  _CopyWithImpl$Query$FindFirstTransactions$findFirstTransactions$status(
    this._instance,
    this._then,
  );

  final Query$FindFirstTransactions$findFirstTransactions$status _instance;

  final TRes Function(Query$FindFirstTransactions$findFirstTransactions$status)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindFirstTransactions$findFirstTransactions$status(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindFirstTransactions$findFirstTransactions$status<
        TRes>
    implements
        CopyWith$Query$FindFirstTransactions$findFirstTransactions$status<
            TRes> {
  _CopyWithStubImpl$Query$FindFirstTransactions$findFirstTransactions$status(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindFirstTransactions$findFirstTransactions$transaction_type {
  Query$FindFirstTransactions$findFirstTransactions$transaction_type({
    required this.type_name,
    this.$__typename = 'TransactionTypes',
  });

  factory Query$FindFirstTransactions$findFirstTransactions$transaction_type.fromJson(
      Map<String, dynamic> json) {
    final l$type_name = json['type_name'];
    final l$$__typename = json['__typename'];
    return Query$FindFirstTransactions$findFirstTransactions$transaction_type(
      type_name: (l$type_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String type_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type_name = type_name;
    _resultData['type_name'] = l$type_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type_name = type_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindFirstTransactions$findFirstTransactions$transaction_type) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type_name = type_name;
    final lOther$type_name = other.type_name;
    if (l$type_name != lOther$type_name) {
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

extension UtilityExtension$Query$FindFirstTransactions$findFirstTransactions$transaction_type
    on Query$FindFirstTransactions$findFirstTransactions$transaction_type {
  CopyWith$Query$FindFirstTransactions$findFirstTransactions$transaction_type<
          Query$FindFirstTransactions$findFirstTransactions$transaction_type>
      get copyWith =>
          CopyWith$Query$FindFirstTransactions$findFirstTransactions$transaction_type(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindFirstTransactions$findFirstTransactions$transaction_type<
    TRes> {
  factory CopyWith$Query$FindFirstTransactions$findFirstTransactions$transaction_type(
    Query$FindFirstTransactions$findFirstTransactions$transaction_type instance,
    TRes Function(
            Query$FindFirstTransactions$findFirstTransactions$transaction_type)
        then,
  ) = _CopyWithImpl$Query$FindFirstTransactions$findFirstTransactions$transaction_type;

  factory CopyWith$Query$FindFirstTransactions$findFirstTransactions$transaction_type.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindFirstTransactions$findFirstTransactions$transaction_type;

  TRes call({
    String? type_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindFirstTransactions$findFirstTransactions$transaction_type<
        TRes>
    implements
        CopyWith$Query$FindFirstTransactions$findFirstTransactions$transaction_type<
            TRes> {
  _CopyWithImpl$Query$FindFirstTransactions$findFirstTransactions$transaction_type(
    this._instance,
    this._then,
  );

  final Query$FindFirstTransactions$findFirstTransactions$transaction_type
      _instance;

  final TRes Function(
      Query$FindFirstTransactions$findFirstTransactions$transaction_type) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindFirstTransactions$findFirstTransactions$transaction_type(
        type_name: type_name == _undefined || type_name == null
            ? _instance.type_name
            : (type_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindFirstTransactions$findFirstTransactions$transaction_type<
        TRes>
    implements
        CopyWith$Query$FindFirstTransactions$findFirstTransactions$transaction_type<
            TRes> {
  _CopyWithStubImpl$Query$FindFirstTransactions$findFirstTransactions$transaction_type(
      this._res);

  TRes _res;

  call({
    String? type_name,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindFirstTransactions$findFirstTransactions$city {
  Query$FindFirstTransactions$findFirstTransactions$city({
    required this.city_name,
    this.$__typename = 'City',
  });

  factory Query$FindFirstTransactions$findFirstTransactions$city.fromJson(
      Map<String, dynamic> json) {
    final l$city_name = json['city_name'];
    final l$$__typename = json['__typename'];
    return Query$FindFirstTransactions$findFirstTransactions$city(
      city_name: (l$city_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String city_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$city_name = city_name;
    _resultData['city_name'] = l$city_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$city_name = city_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$city_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindFirstTransactions$findFirstTransactions$city) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FindFirstTransactions$findFirstTransactions$city
    on Query$FindFirstTransactions$findFirstTransactions$city {
  CopyWith$Query$FindFirstTransactions$findFirstTransactions$city<
          Query$FindFirstTransactions$findFirstTransactions$city>
      get copyWith =>
          CopyWith$Query$FindFirstTransactions$findFirstTransactions$city(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindFirstTransactions$findFirstTransactions$city<
    TRes> {
  factory CopyWith$Query$FindFirstTransactions$findFirstTransactions$city(
    Query$FindFirstTransactions$findFirstTransactions$city instance,
    TRes Function(Query$FindFirstTransactions$findFirstTransactions$city) then,
  ) = _CopyWithImpl$Query$FindFirstTransactions$findFirstTransactions$city;

  factory CopyWith$Query$FindFirstTransactions$findFirstTransactions$city.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindFirstTransactions$findFirstTransactions$city;

  TRes call({
    String? city_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindFirstTransactions$findFirstTransactions$city<TRes>
    implements
        CopyWith$Query$FindFirstTransactions$findFirstTransactions$city<TRes> {
  _CopyWithImpl$Query$FindFirstTransactions$findFirstTransactions$city(
    this._instance,
    this._then,
  );

  final Query$FindFirstTransactions$findFirstTransactions$city _instance;

  final TRes Function(Query$FindFirstTransactions$findFirstTransactions$city)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? city_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindFirstTransactions$findFirstTransactions$city(
        city_name: city_name == _undefined || city_name == null
            ? _instance.city_name
            : (city_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindFirstTransactions$findFirstTransactions$city<
        TRes>
    implements
        CopyWith$Query$FindFirstTransactions$findFirstTransactions$city<TRes> {
  _CopyWithStubImpl$Query$FindFirstTransactions$findFirstTransactions$city(
      this._res);

  TRes _res;

  call({
    String? city_name,
    String? $__typename,
  }) =>
      _res;
}
