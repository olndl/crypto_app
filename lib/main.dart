import 'package:crypto_app/src/app/crypto_app.dart';
import 'package:crypto_app/src/core/errors/logger.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CryptoApp());
  initLogger();
  logger.info('start main...');
}
