import 'package:crypto_app/src/features/domain/models/token.dart';

abstract class TokenRepository {
  List<Token> getTokens();
}
