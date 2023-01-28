import 'package:crypto_app/src/core/usecases/usecase.dart';
import 'package:crypto_app/src/features/domain/models/token.dart';
import 'package:crypto_app/src/features/domain/repositories/token_repository.dart';

class GetTokensUseCaseImpl implements GetTokensUseCase {
  final TokenRepository _tokenRepository;

  GetTokensUseCaseImpl(this._tokenRepository);

  @override
  List<Token> execute() {
    return _tokenRepository.getTokens();
  }
}
