import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_management/impl/models/counter_model_riverpod.dart';

class RiverpodCounter extends ConsumerWidget {
  const RiverpodCounter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var counter = ref.watch(counterRiver);

    return Row(
      children: [
        Text('Riverpod Counter $counter'),
        SizedBox(width: 5),
        OutlinedButton(
          child: Text('inc'),
          onPressed: () {
            ref.read(counterRiver.notifier).inc();
          },
        ),
      ],
    );
  }
}
