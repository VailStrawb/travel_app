import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              padding: const EdgeInsets.only(left: 15.0, top: 35.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/Group 77.png',
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.topLeft,
                  width: 80,
                  height: 80,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25.0, top: 15.0, bottom: 15.0),
            child: Text(
              'Live Travel Enjoy',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 30,
                fontWeight: FontWeight.w500,
                fontFamily: 'Trajan Pro',
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
                fontFamily: 'Trajan Pro',
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
                fontFamily: 'Trajan Pro',
              ),
            ),
          ),
          const Spacer(),
          Transform.translate(
            offset: const Offset(-70.0, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.asset(
                'assets/images/wallpaper.jpg',
                fit: BoxFit.fitHeight,
                alignment: Alignment.center,
                width: 350,
                height: 350,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                fixedSize: MaterialStateProperty.all(
                  const Size(10000, 50),
                  // double.infinity doesn't work here
                ),
                backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 219, 87, 22)),
              ),
              onPressed: () {},
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
}
