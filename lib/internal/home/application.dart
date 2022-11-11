import 'package:flutter/material.dart';
import 'get_started_screen/load_screen.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'OpenSans',
        primarySwatch: Colors.grey,
      ),
      home: const LoadScreen(),
    );
  }
}
