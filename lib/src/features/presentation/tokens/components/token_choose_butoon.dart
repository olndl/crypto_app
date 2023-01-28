import 'package:crypto_app/src/core/extensions/extensions.dart';
import 'package:crypto_app/src/core/theme/colors_guide.dart';
import 'package:crypto_app/src/core/theme/typography.dart';
import 'package:crypto_app/src/features/presentation/currency/pages/currency_page.dart';
import 'package:crypto_app/src/features/presentation/tokens/components/click_style.dart';
import 'package:flutter/material.dart';

class TokenChooseButton extends StatelessWidget {
  final String tokenName;
  final bool isFirstToken;
  const TokenChooseButton({
    Key? key,
    required this.tokenName,
    required this.isFirstToken,
  });

  @override
  Widget build(BuildContext context) {
    return ClickStyle(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CurrencyPage(
              isFirstToken: isFirstToken,
            ),
          ),
        );
      },
      radius: 40,
      splashColor: Colors.white.withOpacity(.12),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 5.percentOfWidth, vertical: 1.percentOfHeight),
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ColorsGuide.firstButtonGrad,
                ColorsGuide.secondButtonGrad,
                ColorsGuide.thirdButtonGrad
                //add more colors
              ],
            ),
            borderRadius: BorderRadius.circular(40),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                blurRadius: 5,
              ) //blur radius of shadow
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Text(
              tokenName,
              style: TextStyles.semiBold.copyWith(fontSize: 22),
            ),
          ),
        ),
      ),
    );
  }
}
