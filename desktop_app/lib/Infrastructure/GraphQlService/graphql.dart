
import 'package:graphql/client.dart';
import 'package:stock_manager/secrets.dart';

GraphQLClient? _graphQlClient;

GraphQLClient getGraphQlClient() {

  if(_graphQlClient != null) {
    return _graphQlClient! ;
  }

  final httpLink = HttpLink(
    serverLink,
  );

  const websockeEndpoint = websockeLink;

  final authLink = AuthLink(
    getToken: () async => authHeader,
  );

  Link link = authLink.concat(httpLink);

  final wsLink = WebSocketLink(websockeEndpoint);
  link = Link.split((request) => request.isSubscription, wsLink, link);

  _graphQlClient = GraphQLClient(
    /// **NOTE** The default store is the InMemoryStore, which does NOT persist to disk
    cache: GraphQLCache(),
    link: link,
  );

  return _graphQlClient!;
}