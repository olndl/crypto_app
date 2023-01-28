import 'package:crypto_app/src/features/domain/models/token.dart';

abstract class GetTokensUseCase {
  List<Token> execute();
}
