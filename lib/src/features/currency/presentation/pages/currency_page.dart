import 'package:crypto_app/src/core/localization/l10n/s.dart';
import 'package:crypto_app/src/core/theme/colors_guide.dart';
import 'package:crypto_app/src/features/currency/presentation/components/currency_list.dart';
import 'package:crypto_app/src/features/tokens/presentation/components/custom_scaffold.dart';
import 'package:crypto_app/src/features/tokens/presentation/components/logo_app_bar.dart';
import 'package:crypto_app/src/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';

class CurrencyPage extends StatelessWidget {
  const CurrencyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: CustomScrollView(
        slivers: [
          LogoAppBar(
            backgroundImage: Assets.lib.src.assets.svg.imageHands.svg(),
            title: S.of(context).chooseCurrency,
          ),
          SliverPadding(padding: EdgeInsets.all(5)),
          CurrencyList()
        ],
      ),
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          ColorsGuide.firstBackgroundGrad,
          ColorsGuide.secondBackgroundGrad
        ],
      ),
    );
  }
}
