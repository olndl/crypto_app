import 'package:crypto_app/src/features/presentation/exchange_rates/components/rates_card.dart';
import 'package:crypto_app/src/features/presentation/exchange_rates/components/return_button.dart';
import 'package:crypto_app/src/features/presentation/tokens/components/custom_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExchangeRatesPage extends ConsumerWidget {
  const ExchangeRatesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RatesCard(),
          ReturnButton(),
        ],
      ),
    );
  }
}
