import 'package:flutter/material.dart';

import 'background_wave_clipper.dart';

class UnvisitedCountriesScreen extends StatelessWidget {
  const UnvisitedCountriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 32, 32),
      body: Column(children: [
        ClipPath(
          clipper: BackgroundWaveClipper(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 240.0,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [Color.fromARGB(255, 225, 88, 42), Color.fromARGB(255, 40, 40, 40)],
            )),
          ),
        ),
      ]),
    );
  }
}
