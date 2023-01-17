import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_manajement/54.%20Bloc%20Multipage/Bloc/color_bloc.dart';
import 'package:state_manajement/54.%20Bloc%20Multipage/Bloc/counter_bloc.dart';
import 'package:state_manajement/54.%20Bloc%20Multipage/UI/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ColorBloc>(create: (context) => ColorBloc()),
        BlocProvider<CounterBloc>(create: (context) => CounterBloc())
      ],
      child: const MaterialApp(
        home: MainPage(),
      ),
    );
  }
}
