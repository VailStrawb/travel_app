import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final orange = const Color.fromARGB(255, 210, 84, 41);
  final grey = const Color.fromARGB(255, 25, 25, 25);

  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 32,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white70,
          focusColor: orange,
          focusedBorder: _border(orange),
          border: _border(grey),
          enabledBorder: _border(grey),
          hintText: 'Start country search',
          contentPadding: const EdgeInsets.symmetric(vertical: 20),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ),
        onFieldSubmitted: (value) {},
      ),
    );
  }

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
        borderSide: BorderSide(width: 0.5, color: color),
        borderRadius: BorderRadius.circular(15),
      );
}
