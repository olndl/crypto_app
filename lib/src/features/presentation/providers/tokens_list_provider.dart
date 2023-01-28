import 'package:crypto_app/src/core/state/state.dart';
import 'package:crypto_app/src/core/usecases/usecase.dart';
import 'package:crypto_app/src/features/domain/domain_module.dart';
import 'package:crypto_app/src/features/domain/models/token.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tokensListStateNotifierProvider =
    StateNotifierProvider.autoDispose<TokenListProvider, State<List<Token>>>(
        (ref) {
  return TokenListProvider(ref.watch(getTokensUseCaseProvider));
});

class TokenListProvider extends StateNotifier<State<List<Token>>> {
  final GetTokensUseCase _getTokensUseCase;

  TokenListProvider(
    this._getTokensUseCase,
  ) : super(const State.init()) {
    getTodoList();
  }

  getTodoList() async {
    try {
      state = const State.loading();
      final List<Token> tokensList = await _getTokensUseCase.execute();
      state = State.success(
        tokensList,
      );
    } on Exception catch (e) {
      state = State.error(e);
    }
  }
}
