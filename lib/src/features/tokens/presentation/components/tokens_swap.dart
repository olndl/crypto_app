import 'package:crypto_app/src/core/extensions/extensions.dart';
import 'package:crypto_app/src/features/tokens/presentation/components/circle_button.dart';
import 'package:crypto_app/src/features/tokens/presentation/components/token_dropdown_butoon.dart';
import 'package:crypto_app/src/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';

class TokensSwap extends StatelessWidget {
  const TokensSwap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: 10.percentOfWidth,
        height: 33.percentOfHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TokenDropdownButton(),
            CircleButton(
              onTap: () {},
              iconData: Assets.lib.src.assets.svg.swapFill.svg(),
            ),
            TokenDropdownButton(),
          ],
        ),
      ),
    );
  }
}
