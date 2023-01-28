import 'package:crypto_app/src/features/data/datasources/token_datasource.dart';
import 'package:crypto_app/src/features/data/datasources/token_datasource_impl.dart';
import 'package:crypto_app/src/features/data/repositories/token_repository_impl.dart';
import 'package:crypto_app/src/features/domain/repositories/token_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tokensDatabaseProvider = Provider<TokenDataSource>(
  (_) => TokenDataSourceImpl(),
);
final tokensRepositoryProvider = Provider<TokenRepository>(
  (ref) => TokenRepositoryImpl(ref.watch(tokensDatabaseProvider)),
);
