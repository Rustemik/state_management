import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/models/counter_model.dart';

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
