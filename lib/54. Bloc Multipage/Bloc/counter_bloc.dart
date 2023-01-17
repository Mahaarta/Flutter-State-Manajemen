import 'package:bloc/bloc.dart';

class CounterBloc extends Bloc<int, int> {
  int _counter = 0;

  CounterBloc() : super(0) {
    on<int>(
      (event, emit) {
        _counter += 1;
        emit(_counter);
      },
    );
  }
}
