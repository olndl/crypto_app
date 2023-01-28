import 'package:crypto_app/src/features/domain/models/token.dart';

abstract class TokenDataSource {
  List<Token> getTokens();
}
