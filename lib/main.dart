import 'package:crypto_app/src/app/crypto_app.dart';
import 'package:crypto_app/src/core/errors/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: const CryptoApp()));
  initLogger();
  logger.info('start main...');
}
