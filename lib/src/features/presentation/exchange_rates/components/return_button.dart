import 'package:crypto_app/src/core/localization/l10n/s.dart';
import 'package:crypto_app/src/features/presentation/tokens/components/common_button.dart';
import 'package:crypto_app/src/features/presentation/tokens/pages/swap_tokens_page.dart';
import 'package:crypto_app/src/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class ReturnButton extends StatelessWidget {
  const ReturnButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonButton(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SwapTokensPage(),
          ),
        );
      },
      title: S.of(context).anotherPair,
      icon: Assets.lib.src.assets.svg.anotherPair.svg(width: 30),
    );
  }
}
