import 'package:crypto_app/src/core/dimensions/adaptive_widget.dart';
import 'package:crypto_app/src/core/localization/l10n/s.dart';
import 'package:crypto_app/src/core/theme/app_theme.dart';
import 'package:crypto_app/src/features/tokens/presentation/pages/swap_tokens_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class CryptoApp extends StatelessWidget {
  const CryptoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveWidget(
      builder: (context, orientation) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.supportedLocales,
          theme: AppTheme.lightTheme.copyWith(),
          home: SwapTokens(),
        );
      },
    );
  }
}
