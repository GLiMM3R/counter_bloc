import 'package:counter_bloc/model/counter_model.dart';

class CounterState {
  final CounterModel counter;

  const CounterState(this.counter);

  factory CounterState.initial() {
    return const CounterState(CounterModel(0));
  }

  CounterState copyWith({int? count}) {
    return CounterState(CounterModel(count ?? counter.value));
  }

  List<Object> get props => [counter.value];
}
