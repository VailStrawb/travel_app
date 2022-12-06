import 'package:flutter/material.dart';
import '../common_widgets/search_page.dart';

class SavedCountriesScreen extends StatelessWidget {
  const SavedCountriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 32, 32),
      body: SearchPage(),
      // body: Column(children: [
      //   ClipPath(
      //     clipper: BackgroundWaveClipper(),
      //     child: Container(
      //       width: MediaQuery.of(context).size.width,
      //       height: 240.0,
      //       decoration: const BoxDecoration(
      //           gradient: LinearGradient(
      //         colors: [Color.fromARGB(255, 225, 88, 42), Color.fromARGB(255, 40, 40, 40)],
      //       )),
      //     ),
      //   ),
      // ]),
    );
  }
}
