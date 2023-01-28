import 'package:crypto_app/src/core/usecases/usecase.dart';
import 'package:crypto_app/src/features/data/data_module.dart';
import 'package:crypto_app/src/features/domain/usecases/get_tokens_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getTokensUseCaseProvider = Provider<GetTokensUseCase>(
  (ref) => GetTokensUseCaseImpl(ref.watch(tokensRepositoryProvider)),
);
