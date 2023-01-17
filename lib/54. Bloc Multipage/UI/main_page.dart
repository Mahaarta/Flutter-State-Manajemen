import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_manajement/54.%20Bloc%20Multipage/Bloc/color_bloc.dart';
import 'package:state_manajement/54.%20Bloc%20Multipage/Bloc/counter_bloc.dart';
import 'package:state_manajement/54.%20Bloc%20Multipage/UI/draf_page.dart';
import 'package:state_manajement/54.%20Bloc%20Multipage/UI/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) => DraftPage(
        backgroundColor: color,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<CounterBloc, int>(
                builder: (context, counter) => Text(
                  counter.toString(),
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: color),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecondPage(),
                    ),
                  );
                },
                child: const Text("Click to change"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
