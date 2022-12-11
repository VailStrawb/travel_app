import 'package:flutter/material.dart';
import 'package:travel_app/models/country.dart';

class CountryPage extends StatelessWidget {
  const CountryPage({super.key, required this.country});
  final Country country;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 32, 32),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white70),
        title: Text(
          country.name,
          style: const TextStyle(color: Colors.white70, fontWeight: FontWeight.w600),
        ),
        backgroundColor: const Color.fromARGB(255, 52, 52, 52),
      ),
    );
  }
}
