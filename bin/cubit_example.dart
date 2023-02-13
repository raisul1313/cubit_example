import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);

  void decrement() => emit(state - 1);
}

void main() {
  final cubit = CounterCubit();

  print('Init Sate: ${cubit.state}'); // Should print 0 = the default state of the counter

  cubit.increment();

  print(cubit.state); // Should print 1

  cubit.increment();

  print(cubit.state); // Should print 2

  cubit.decrement();

  print(cubit.state); // Should print 1

  cubit.close();
}
