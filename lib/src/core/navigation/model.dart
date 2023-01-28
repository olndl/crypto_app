import 'dart:convert';

typedef JsonMap = Map<String, dynamic>;

abstract class TypedSegment {
  factory TypedSegment.fromJson(JsonMap json) {
    if (json['path'] == 'ChooseTokenSegment') {
      return ChooseTokenSegment();
    }
    if (json['path'] == 'ListCurrencySegment') {
      return ListCurrencySegment(isFirstToken: json['isFirstToken']);
    }
    if (json['path'] == 'ExchangeRateSegment') {
      return ExchangeRateSegment();
    }
    return ChooseTokenSegment();
  }

  JsonMap toJson() => <String, dynamic>{'path': runtimeType.toString()};

  @override
  String toString() => jsonEncode(toJson());
}

typedef TypedPath = List<TypedSegment>;

class ChooseTokenSegment with TypedSegment {}

class ListCurrencySegment with TypedSegment {
  ListCurrencySegment({required this.isFirstToken});

  final bool isFirstToken;
}

class ExchangeRateSegment with TypedSegment {}
