import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubit_counter_app/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterInitialState> {
  CounterCubit() : super(CounterInitialState(counter: 0));

  icrementCounter() {
    emit(CounterInitialState(counter: state.counter + 1));
  }

  decrementCounter() {
    if (state.counter > 0) {
      emit(CounterInitialState(counter: state.counter - 1));
    }
  }
}
