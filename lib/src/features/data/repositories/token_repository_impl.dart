import 'package:crypto_app/src/features/data/datasources/token_datasource.dart';
import 'package:crypto_app/src/features/domain/models/token.dart';
import 'package:crypto_app/src/features/domain/repositories/token_repository.dart';

class TokenRepositoryImpl implements TokenRepository {
  final TokenDataSource tokenDataSource;

  const TokenRepositoryImpl(this.tokenDataSource);

  @override
  List<Token> getTokens() {
    final tokenList = tokenDataSource.getTokens();
    return tokenList;
  }
}
