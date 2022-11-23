import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final grey = const Color.fromARGB(255, 70, 70, 70);
  final white = const Color.fromARGB(255, 215, 215, 215);

  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 32,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white70,
          focusColor: grey,
          focusedBorder: _border(grey),
          border: _border(white),
          enabledBorder: _border(white),
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
