import 'package:counter_bloc/bloc/counter_event.dart';
import 'package:counter_bloc/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// The core business logic component
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial()) {
    // Register event handlers
    on<IncrementCounter>(_onIncrement);
    on<DecrementCounter>(_onDecrement);
  }

  void _onIncrement(IncrementCounter event, Emitter<CounterState> emit) {
    final newCount = state.counter.value + 1;
    // emit a new state with the updated counter value
    emit(state.copyWith(count: newCount));
  }

  void _onDecrement(DecrementCounter event, Emitter<CounterState> emit) {
    final newCount = state.counter.value - 1;
    // emit a new state with the updated counter value
    emit(state.copyWith(count: newCount));
  }
}
