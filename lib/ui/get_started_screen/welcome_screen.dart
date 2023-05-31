import 'package:flutter/material.dart';
import 'package:travel_app/change_notifier/welcome_screen_change_notifier.dart';
import '../home/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key, required this.welcomeScreenNotifier});
  final WelcomeScreenChangeNotifier welcomeScreenNotifier;

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    widget.welcomeScreenNotifier.resetNewPref();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 32, 32),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 35.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/get_started_bagpack_icon.png',
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.topLeft,
                  width: 80,
                  height: 80,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25.0, top: 25.0, bottom: 10.0),
            child: Text(
              'Live Travel Enjoy',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 25.0,
            ),
            child: Text(
              'Travel Tool To Discover New',
              style: TextStyle(
                color: Colors.white60,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25.0, top: 6.0, bottom: 25.0),
            child: Text(
              'Explore Your World',
              style: TextStyle(
                color: Colors.white60,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Spacer(),
          Transform.translate(
            offset: const Offset(-70.0, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.asset(
                'assets/images/get_started_photo.jpg',
                fit: BoxFit.fitHeight,
                alignment: Alignment.center,
                width: 350,
                height: 350,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
                fixedSize: MaterialStateProperty.all(
                  const Size(10000, 50),
                  // double.infinity doesn't work here
                ),
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 219, 87, 22)),
              ),
              onPressed: _navigateHomeScreen,
              child: const Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
        //  (colors: [Color(0xFFFACCCC), Color(0xFFF6EFE9)],)),
      ),
    );
  }

  void _navigateHomeScreen() {
    widget.welcomeScreenNotifier.clearSharedPrefs();
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              HomeScreen(welcomeScreenNotifier: widget.welcomeScreenNotifier)),
    );
  }
}
