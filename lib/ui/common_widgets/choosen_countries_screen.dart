import 'package:flutter/material.dart';

class ChoosenCountries extends StatelessWidget {
  const ChoosenCountries({super.key, required this.pageName});
  final String pageName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 32, 32),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          pageName,
          style: const TextStyle(
            color: Colors.white60,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 42, 42, 42),
      ),
      body: const Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [],
      )),
    );
  }
}
