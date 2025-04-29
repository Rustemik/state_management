import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterRiver = StateNotifierProvider<CounterRiverpod, int>((ref) {
  return CounterRiverpod(0);
});

class CounterRiverpod extends StateNotifier<int> {
  CounterRiverpod(super.state);

  void inc() => state++;
}
