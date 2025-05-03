import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/impl/cubit/counter_cubit.dart';

class CounterCubitW extends StatelessWidget {
  CounterCubit cubit = CounterCubit();

  CounterCubitW({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocBuilder<CounterCubit, CounterState>(
          bloc: cubit,
          builder: (context, state) {
            return Text('Cubit Counter ${state.counter}');
          },
        ),
        SizedBox(width: 5),
        OutlinedButton(
          child: Text('inc'),
          onPressed: () {
            cubit.inc();
          },
        ),
        OutlinedButton(
          child: Text('dec'),
          onPressed: () {
            cubit.dec();
          },
        ),
      ],
    );
  }
}
