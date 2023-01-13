import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_manajement/application_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<ApplicationColor>(
        create: (context) => ApplicationColor(),
        child: Scaffold(
          appBar: AppBar(
          backgroundColor: Colors.black,
            title: Consumer<ApplicationColor>(
              builder: (context, applicationColor, child) => Text(
                "State Provider Management",
                style: TextStyle(color: applicationColor.color),
              ),
            ),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Consumer<ApplicationColor>(
                builder: (context, applicationColor, _) => AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    width: 100,
                    height: 100,
                    color: applicationColor.color),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: const EdgeInsets.all(5), child: const Text("AB")),
                  Consumer<ApplicationColor>(
                    builder: (context, applicationColor, c_) => Switch(
                      value: applicationColor.isLightBlue,
                      onChanged: (newValue) {
                        applicationColor.isLightBlue = newValue;
                      },
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.all(5), child: const Text("LB"))
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}
