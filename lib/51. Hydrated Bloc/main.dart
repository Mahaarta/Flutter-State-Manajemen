import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:state_manajement/51. Hydrated Bloc/color_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage =
      await HydratedStorage.build(storageDirectory: Directory.systemTemp);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<ColorBloc>(
        create: (context) => ColorBloc(),
        child: const MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                colorBloc.add(ColorEvent.toAmber);
              },
              backgroundColor: Colors.amber,
            ),
            const SizedBox(width: 20),
            FloatingActionButton(
              onPressed: () {
                colorBloc.add(ColorEvent.toLightBlue);
              },
              backgroundColor: Colors.lightBlue,
            )
          ],
        ),
        appBar: AppBar(
          title: const Text("Hydrated Bloc"),
        ),
        body: Center(child: BlocBuilder<ColorBloc, Color>(
          builder: (context, currentColor) {
            return AnimatedContainer(
              width: 100,
              height: 100,
              color: currentColor,
              duration: const Duration(milliseconds: 100),
            );
          },
        )),
      ),
    );
  }
}
