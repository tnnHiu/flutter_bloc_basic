import 'package:bloc_basic/bloc/counter_event.dart';
import 'package:bloc_basic/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(count: 0)) {
    // increment
    on<CounterIncrementPressed>((event, emit) {
      emit(CounterState(count: state.count + 1));
    });

    // decrement
    on<CounterDecrementPressed>((event, emit) {
      emit(CounterState(count: state.count - 1));
    });
  }
}
