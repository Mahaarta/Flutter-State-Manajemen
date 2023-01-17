import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

enum ColorEvent { toAmber, toLightBlue }

class ColorBloc extends HydratedBloc<ColorEvent, Color> {
  Color _color = Colors.amber;

  ColorBloc() : super(Colors.amber) {
    on<ColorEvent>((event, emit) {
      _color = (event == ColorEvent.toAmber) ? Colors.amber : Colors.lightBlue;
      emit(_color);
    });
  }

  @override
  Color? fromJson(Map<String, dynamic> json) {
    try {
      return Color(json['color'] as int);
    } catch (_) {
      throw UnimplementedError();
    }
  }

  @override
  Map<String, dynamic>? toJson(Color state) {
    try {
      return {'color': state.value};
    } catch (_) {
      throw UnimplementedError();
    }
  }
}
