part of 'counter_bloc.dart';

//состояние

sealed class CounterState {
  int counter = 0;
}

final class CounterInitial extends CounterState {}

final class CounterChanged extends CounterState {
  CounterChanged(int newValue) {
    counter = newValue;
  }
}
