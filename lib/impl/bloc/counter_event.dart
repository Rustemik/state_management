part of 'counter_bloc.dart';

//события

sealed class CounterEvent {}

//событие о том что counter увеличился на единицу
class CounterIncEvent extends CounterEvent {}

//событие о том что counter уменьшился на единицу
class CounterDecEvent extends CounterEvent {}
