import 'package:crypto_app/src/core/localization/l10n/s.dart';
import 'package:crypto_app/src/core/navigation/model.dart';
import 'package:crypto_app/src/core/navigation/provider.dart';
import 'package:crypto_app/src/features/presentation/tokens/components/common_button.dart';
import 'package:crypto_app/src/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReturnButton extends ConsumerWidget {
  const ReturnButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonButton(
      onTap: () {
        ref.read(routerDelegateProvider).navigate([
          ExchangeRateSegment(),
          ChooseTokenSegment(),
        ]);
      },
      title: S.of(context).anotherPair,
      icon: Assets.lib.src.assets.svg.anotherPair.svg(width: 30),
    );
  }
}
