part of 'counter_cubit.dart';

sealed class CounterState {
  int counter = 0;
}

final class CounterInitial extends CounterState {}

final class CounterChanged extends CounterState {
  CounterChanged(int newValue) {
    counter = newValue;
  }
}
