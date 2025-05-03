import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/impl/bloc/counter_bloc.dart';

class CounterBlocW extends StatelessWidget {
  CounterBloc bloc = CounterBloc();

  CounterBlocW({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocBuilder<CounterBloc, CounterState>(
          bloc: bloc,
          builder: (context, state) {
            return Text('Bloc Counter ${state.counter}');
          },
        ),
        SizedBox(width: 5),
        OutlinedButton(
          child: Text('inc'),
          onPressed: () {
            bloc.add(CounterIncEvent());
          },
        ),
        OutlinedButton(
          child: Text('dec'),
          onPressed: () {
            bloc.add(CounterDecEvent());
          },
        ),
      ],
    );
  }
}
