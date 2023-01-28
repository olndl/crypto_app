import 'package:crypto_app/src/core/extensions/extensions.dart';
import 'package:crypto_app/src/features/domain/models/pair.dart';
import 'package:crypto_app/src/features/presentation/providers/tokens_change_provider.dart';
import 'package:crypto_app/src/features/presentation/tokens/components/circle_button.dart';
import 'package:crypto_app/src/features/presentation/tokens/components/token_choose_butoon.dart';
import 'package:crypto_app/src/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TokensSwap extends ConsumerWidget {
  final Pair currantPair;
  const TokensSwap({required this.currantPair, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverToBoxAdapter(
      child: Container(
        width: 10.percentOfWidth,
        height: 40.percentOfHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TokenChooseButton(
              tokenName: currantPair.token1?.name ?? '',
              isFirstToken: true,
            ),
            CircleButton(
              onTap: () {
                ref
                    .read(tokensChangeProvider)
                    .swapTokens(currantPair.token1!, currantPair.token2!);
              },
              iconData: Assets.lib.src.assets.svg.swapFill.svg(),
            ),
            TokenChooseButton(
              tokenName: currantPair.token2?.name ?? '',
              isFirstToken: false,
            ),
          ],
        ),
      ),
    );
  }
}
