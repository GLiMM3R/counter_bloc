// Define the events that can be dispatched to the CounterBloc
abstract class CounterEvent {}

class IncrementCounter extends CounterEvent {}

class DecrementCounter extends CounterEvent {}
