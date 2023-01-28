import 'package:crypto_app/src/core/extensions/extensions.dart';
import 'package:crypto_app/src/core/localization/l10n/s.dart';
import 'package:crypto_app/src/core/navigation/provider.dart';
import 'package:crypto_app/src/features/presentation/currency/components/currency_list.dart';
import 'package:crypto_app/src/features/presentation/tokens/components/custom_scaffold.dart';
import 'package:crypto_app/src/features/presentation/tokens/components/logo_app_bar.dart';
import 'package:crypto_app/src/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrencyPage extends ConsumerWidget {
  final bool isFirstToken;
  const CurrencyPage({
    Key? key,
    required this.isFirstToken,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScaffold(
      body: CustomScrollView(
        slivers: [
          LogoAppBar(
            isMainPage: false,
            onTap: () {
              ref.read(routerDelegateProvider).pop();
            },
            backgroundImage: Padding(
              padding: EdgeInsets.all(15.percentOfWidth),
              child: Assets.lib.src.assets.svg.imageHands.svg(),
            ),
            title: S.of(context).chooseCurrency,
          ),
          SliverPadding(padding: EdgeInsets.all(5)),
          CurrencyList(
            isFirstToken: isFirstToken,
          )
        ],
      ),
    );
  }
}
