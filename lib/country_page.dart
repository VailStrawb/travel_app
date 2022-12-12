import 'package:flutter/material.dart';
import 'package:travel_app/models/country.dart';

class CountryPage extends StatefulWidget {
  const CountryPage({super.key, required this.country});
  final Country country;

  @override
  State<CountryPage> createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.all(10),
                color: const Color.fromARGB(255, 44, 44, 44),
                child: Text(
                  'Region: ${widget.country.region}',
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.all(10),
                color: const Color.fromARGB(255, 44, 44, 44),
                child: Text(
                  'Population: ${widget.country.population} people',
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.all(10),
                color: const Color.fromARGB(255, 44, 44, 44),
                child: Text(
                  'Description:${widget.country.description}',
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 32, 32, 32),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white70),
        title: Text(
          widget.country.name,
          style: const TextStyle(color: Colors.white70, fontWeight: FontWeight.w600),
        ),
        backgroundColor: const Color.fromARGB(255, 44, 44, 44),
      ),
    );
  }
}
