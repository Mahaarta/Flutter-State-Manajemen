import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_manajement/54.%20Bloc%20Multipage/Bloc/color_bloc.dart';
import 'package:state_manajement/54.%20Bloc%20Multipage/Bloc/counter_bloc.dart';
import 'package:state_manajement/54.%20Bloc%20Multipage/UI/draf_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);
    CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return BlocBuilder<ColorBloc, Color>(
      builder: (context, colorSelected) => DraftPage(
        backgroundColor: colorSelected,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CounterBloc, int>(
                builder: (context, counter) => GestureDetector(
                  onTap: () {
                    counterBloc.add(counter + 1);
                  },
                  child: Text(
                    counter.toString(),
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      colorBloc.add(ColorEvent.toPink);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      shape: const CircleBorder(),
                      side: (colorSelected == Colors.pink)
                          ? const BorderSide(color: Colors.black, width: 3)
                          : const BorderSide(),
                    ),
                    child: null,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      colorBloc.add(ColorEvent.toAmber);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: const CircleBorder(),
                      side: (colorSelected == Colors.amber)
                          ? const BorderSide(color: Colors.black, width: 3)
                          : const BorderSide(),
                    ),
                    child: null,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      colorBloc.add(ColorEvent.toPurple);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shape: const CircleBorder(),
                      side: (colorSelected == Colors.purple)
                          ? const BorderSide(color: Colors.black, width: 3)
                          : const BorderSide(),
                    ),
                    child: null,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
