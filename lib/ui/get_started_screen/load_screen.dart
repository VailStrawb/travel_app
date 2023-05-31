import 'package:flutter/material.dart';
import 'package:travel_app/change_notifier/welcome_screen_change_notifier.dart';
import 'package:travel_app/ui/get_started_screen/welcome_screen.dart';
import '../home/home_screen.dart';

class LoadScreen extends StatefulWidget {
  const LoadScreen({super.key});

  @override
  State<LoadScreen> createState() => _LoadScreenState();
}

class _LoadScreenState extends State<LoadScreen> {
  final welcomeScreenNotifier = WelcomeScreenChangeNotifier();

  @override
  void dispose() {
    welcomeScreenNotifier.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    welcomeScreenNotifier.resetNewPref();

    // print(welcomeScreenNotifier.myValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 32, 32),
      body: ListenableBuilder(
        listenable: welcomeScreenNotifier,
        builder: (context, _) {
          return welcomeScreenNotifier.showWelcomeScreen == true
              ? WelcomeScreen(welcomeScreenNotifier: welcomeScreenNotifier)
              : HomeScreen(welcomeScreenNotifier: welcomeScreenNotifier);
        },
      ),
    );
  }
}
