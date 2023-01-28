class Token {
  final String name;
  final String contract;
  final String? coinImage;

  const Token({
    required this.name,
    required this.contract,
    required this.coinImage,
  });

  @override
  bool operator ==(Object other) =>
      other is Token &&
      other.runtimeType == runtimeType &&
      other.contract == contract &&
      other.name == name;

  @override
  int get hashCode => name.hashCode;
}
