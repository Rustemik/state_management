import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/counter_model.dart';
import 'package:state_management/inherited.dart';
import 'package:state_management/stateful_counter.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StatefulCounter(),
            InheritedCounterImp(),
            ProviderCounter(),
          ],
        ),
      ),
    );
  }
}

class ProviderCounter extends StatelessWidget {
  const ProviderCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Consumer<CounterModel>(
          builder: (context, model, child) =>
              Text('Provider Counter ${model.count}'),
        ),
        SizedBox(width: 5),
        OutlinedButton(
          child: Text('inc'),
          onPressed: () {
            context.read<CounterModel>().inc();
          },
        ),
      ],
    );
  }
}
