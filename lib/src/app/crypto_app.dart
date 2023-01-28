import 'package:crypto_app/src/core/dimensions/adaptive_widget.dart';
import 'package:crypto_app/src/core/localization/l10n/s.dart';
import 'package:crypto_app/src/core/navigation/parser.dart';
import 'package:crypto_app/src/core/navigation/provider.dart';
import 'package:crypto_app/src/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CryptoApp extends ConsumerWidget {
  const CryptoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AdaptiveWidget(
      builder: (context, orientation) {
        return MaterialApp.router(
          routerDelegate: ref.read(routerDelegateProvider),
          routeInformationParser: RouteInformationParserImpl(),
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.supportedLocales,
          theme: AppTheme.lightTheme.copyWith(
            pageTransitionsTheme: const PageTransitionsTheme(
              builders: {
                TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
                TargetPlatform.iOS: OpenUpwardsPageTransitionsBuilder(),
              },
            ),
          ),
        );
      },
    );
  }
}
