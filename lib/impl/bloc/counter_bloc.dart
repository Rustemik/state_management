import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

//обработчик бизнес логики

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterIncEvent>((event, emit) {
      emit(CounterChanged(state.counter + 1));
    });

    on<CounterDecEvent>((event, emit) {
      var newStateValue = state.counter - 1;
      if (newStateValue < 0) return;
      var newState = CounterChanged(newStateValue);
      emit(newState);
    });
  }
}
