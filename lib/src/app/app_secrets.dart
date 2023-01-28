class AppSecrets {
  final String pancakeSwapUrl;
  final String contractAddress;

  const AppSecrets({
    required this.pancakeSwapUrl,
    required this.contractAddress,
  });

  static const appSecretsDev = AppSecrets(
    pancakeSwapUrl: 'https://bsc-dataseed1.binance.org',
    contractAddress: '0x10ED43C718714eb63d5aA57B78B54704E256024E',
  );
}
