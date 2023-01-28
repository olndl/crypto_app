import 'package:crypto_app/src/core/navigation/delegate.dart';
import 'package:crypto_app/src/core/navigation/model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final routerDelegateProvider = Provider<PostRouterDelegate>(
  (ref) => PostRouterDelegate(ref, [ChooseTokenSegment()]),
);

final navigationStackProvider =
    StateProvider<TypedPath>((_) => [ChooseTokenSegment()]);
