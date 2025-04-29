import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/counter_riverpod.dart';
import 'package:state_management/models/counter_model.dart';
import 'package:state_management/counter_provider.dart';
import 'package:state_management/inherited.dart';
import 'package:state_management/stateful_counter.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterModel()),
      ],
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StatefulCounter(),
              InheritedCounterImp(),
              ProviderCounter(),
              RiverpodCounter(),
            ],
          ),
        ),
      ),
    );
  }
}
