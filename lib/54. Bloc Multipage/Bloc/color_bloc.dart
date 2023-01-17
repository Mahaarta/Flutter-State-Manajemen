import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

enum ColorEvent { toAmber, toPink, toPurple }

class ColorBloc extends Bloc<ColorEvent, Color> {
  Color _color = Colors.pink;

  ColorBloc() : super(Colors.pink) {
    on<ColorEvent>(
      (event, emit) {
        _color = (event == ColorEvent.toAmber)
            ? Colors.amber
            : (event == ColorEvent.toPink)
                ? Colors.pink
                : Colors.purple;
        emit(_color);
      },
    );
  }
}
