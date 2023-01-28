import 'package:crypto_app/src/core/localization/l10n/s.dart';
import 'package:crypto_app/src/core/navigation/model.dart';
import 'package:crypto_app/src/core/navigation/provider.dart';
import 'package:crypto_app/src/features/presentation/providers/tokens_change_provider.dart';
import 'package:crypto_app/src/features/presentation/tokens/components/common_button.dart';
import 'package:crypto_app/src/features/presentation/tokens/components/custom_scaffold.dart';
import 'package:crypto_app/src/features/presentation/tokens/components/logo_app_bar.dart';
import 'package:crypto_app/src/features/presentation/tokens/components/tokens_swap.dart';
import 'package:crypto_app/src/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SwapTokensPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currantPair = ref.watch(tokensChangeProvider).currantPair;
    return CustomScaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          LogoAppBar(
            isMainPage: true,
            backgroundImage: Assets.lib.src.assets.svg.mainImage.svg(),
            title: S.of(context).tokensTitle,
          ),
          TokensSwap(
            currantPair: currantPair,
          ),
          SliverToBoxAdapter(
            child: CommonButton(
              onTap: () async => {
                await ref.read(tokensChangeProvider).getPrice(
                      currantPair.token1!.contract,
                      currantPair.token2!.contract,
                    ),
                ref
                    .read(routerDelegateProvider)
                    .navigate([ChooseTokenSegment(), ExchangeRateSegment()]),
              },
              title: S.of(context).watchButton,
              icon: Assets.lib.src.assets.svg.icon.svg(),
            ),
          ),
        ],
      ),
    );
  }
}
