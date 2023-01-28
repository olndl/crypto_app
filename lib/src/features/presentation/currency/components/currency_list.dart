import 'package:crypto_app/src/core/screens/error_screen.dart';
import 'package:crypto_app/src/core/screens/loading_screen.dart';
import 'package:crypto_app/src/core/screens/unknown_screen.dart';
import 'package:crypto_app/src/features/presentation/currency/components/currency_card.dart';
import 'package:crypto_app/src/features/presentation/providers/tokens_list_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrencyList extends ConsumerWidget {
  final bool isFirstToken;
  CurrencyList({
    super.key,
    required this.isFirstToken,
  });

  final _tokensListProvider = tokensListStateNotifierProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(_tokensListProvider).maybeWhen(
          success: (tokens) {
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return CurrencyCard(
                    token: tokens[index],
                    isFirstToken: isFirstToken,
                  );
                },
                childCount: tokens.length,
              ),
            );
          },
          error: (e) => ErrorScreen(
            message: '$e',
          ),
          loading: () => const LoadingScreen(),
          orElse: () => const UnknownScreen(),
        );
  }
}
