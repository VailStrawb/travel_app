import 'package:flutter/material.dart';
import '../common_widgets/choosen_countries_screen.dart';

class DesiredCountriesScreen extends StatelessWidget {
  const DesiredCountriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 32, 32),
      body: ChoosenCountries(
        pageName: 'Desired Countries',
      ),
    );
  }
}
