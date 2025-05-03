import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/impl/bloc/counter_bloc.dart';
import 'package:state_management/impl/counter_bloc_w.dart';
import 'package:state_management/impl/counter_cubit_w.dart';
import 'package:state_management/impl/counter_getx.dart';
import 'package:state_management/impl/counter_getx_rx.dart';
import 'package:state_management/impl/counter_riverpod.dart';
import 'package:state_management/impl/models/counter_model.dart';
import 'package:state_management/impl/counter_provider.dart';
import 'package:state_management/impl/inherited.dart';
import 'package:state_management/impl/stateful_counter.dart';

class CounterPage extends StatelessWidget {
  CounterPage({super.key});

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
              CounterGetx(),
              CounterGetxRx(),
              CounterBlocW(),
              CounterCubitW(),
            ],
          ),
        ),
      ),
    );
  }
}
