import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

void main(List<String> args) {
  final cubit = CounterCubit();
  print("cubit init state " + cubit.state.toString());
  cubit.increment();
  print("cubit after increment state " + cubit.state.toString());
  cubit.decrement();
  print("cubit after decrement state " + cubit.state.toString());
  cubit.close();
}
