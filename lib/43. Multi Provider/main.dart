import 'package:flutter/material.dart';

class MultiProvider extends StatelessWidget {
  const MultiProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MultiProvider"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text("Balance"),
          Container(
            height: 30,
            width: 150,
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.purple[100],
                border: Border.all(color: Colors.black, width: 2)),
            child: const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "10000",
                style: TextStyle(
                    color: Colors.purple, fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      )),
    );
  }
}
