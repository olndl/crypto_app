import 'package:crypto_app/src/core/extensions/extensions.dart';
import 'package:crypto_app/src/features/presentation/tokens/components/circle_button.dart';
import 'package:crypto_app/src/features/presentation/tokens/components/token_choose_butoon.dart';
import 'package:crypto_app/src/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TokensSwap extends ConsumerWidget {
  final String firstToken;
  final String secondToken;
  const TokensSwap(
      {required this.firstToken, required this.secondToken, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverToBoxAdapter(
      child: Container(
        width: 10.percentOfWidth,
        height: 33.percentOfHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TokenChooseButton(
              tokenName: firstToken,
              isFirstToken: true,
            ),
            CircleButton(
              onTap: () {},
              iconData: Assets.lib.src.assets.svg.arrowDown.svg(),
            ),
            TokenChooseButton(
              tokenName: secondToken,
              isFirstToken: false,
            ),
          ],
        ),
      ),
    );
  }
}
