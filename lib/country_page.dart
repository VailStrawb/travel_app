import 'package:flutter/material.dart';

class CountryPage extends StatelessWidget {
  const CountryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 32, 32),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back'))),
    );
  }
}
