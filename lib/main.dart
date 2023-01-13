import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text(
            "State Provider Managemtnt",
            style: const TextStyle(color: Colors.black),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                width: 100,
                height: 100,
                color: Colors.lightBlue),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.all(5), child: const Text("AB")),
                Switch(
                  value: true,
                  onChanged: (newValue) {},
                ),
                Container(
                    margin: const EdgeInsets.all(5), child: const Text("LB"))
              ],
            )
          ],
        )),
      ),
    );
  }
}
