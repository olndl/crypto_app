import 'package:crypto_app/src/core/dimensions/adaptive_widget.dart';
import 'package:crypto_app/src/core/theme/app_theme.dart';
import 'package:crypto_app/src/features/tokens/presentation/pages/swap_tokens_page.dart';
import 'package:flutter/material.dart';

class CryptoApp extends StatelessWidget {
  const CryptoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveWidget(
      builder: (context, orientation) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme.copyWith(),
          home: SwapTokens(),
        );
      },
    );
  }
}
