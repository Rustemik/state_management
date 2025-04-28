import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/counter_model.dart';
import 'package:state_management/main.dart';

class StatefulCounter extends StatefulWidget {
  const StatefulCounter({super.key});

  @override
  State<StatefulCounter> createState() => _nameState();
}

class _nameState extends State<StatefulCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Stateful Counter $count'),
        SizedBox(width: 5),
        OutlinedButton(
          child: Text('inc'),
          onPressed: () {
            setState(() {
              count++;
            });

            // + Provider Counter
            //context.read<CounterModel>().inc();
          },
        ),
      ],
    );
  }
}
