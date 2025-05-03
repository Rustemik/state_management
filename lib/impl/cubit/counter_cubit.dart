import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  void inc() {
    emit(CounterChanged(state.counter + 1));
  }

  void dec() {
    var newValue = state.counter - 1;
    if (newValue < 0) return;
    emit(CounterChanged(newValue));
  }
}
