import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

enum ColorEvent { toAmber, toLightBlue }

class ColorBloc extends Bloc<ColorEvent, Color> {
  Color _color = Colors.amber;

  ColorBloc() : super(Colors.amber) {
    on<ColorEvent>((event, emit) {
      _color = (event == ColorEvent.toAmber) ? Colors.amber : Colors.lightBlue;
      emit(_color);
    });
  }
}
