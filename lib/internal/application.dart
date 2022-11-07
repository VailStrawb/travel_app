import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(
        title: '',
      ),
    );
  }
}

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
              padding: const EdgeInsets.only(left: 25.0, top: 35.0),
              child: Image.asset(
                'assets/images/290259.png',
                fit: BoxFit.fitHeight,
                alignment: Alignment.topLeft,
                width: 100,
                height: 100,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Live Travel Enjoy',
              style: TextStyle(
                color: Colors.white60,
                fontSize: 30,
                fontWeight: FontWeight.w500,
                fontFamily: 'Trajan Pro',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              top: 7.0,
            ),
            child: Text(
              'Travel Tool To Discover New',
              style: TextStyle(
                color: Colors.white54,
                fontSize: 15,
                fontWeight: FontWeight.w400,
                fontFamily: 'Trajan Pro',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 6.0, bottom: 25.0),
            child: Text(
              'Explore Your World',
              style: TextStyle(
                color: Colors.white54,
                fontSize: 15,
                fontWeight: FontWeight.w400,
                fontFamily: 'Trajan Pro',
              ),
            ),
          ),
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
        ],
        //  (colors: [Color(0xFFFACCCC), Color(0xFFF6EFE9)],)),
      ),
    );
  }
}
