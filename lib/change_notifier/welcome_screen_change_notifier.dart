import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomeScreenChangeNotifier extends ChangeNotifier {
  bool? showWelcomeScreen;


  Future resetNewPref() async {
    // bool? myValue = false;
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final bool? value = prefs.getBool("showWelcomeScreen");
    if (value == true) {
      showWelcomeScreen = value;
    } else {
      showWelcomeScreen = false;
    }

    notifyListeners();
  }

  Future clearSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('showWelcomeScreen', false);

    notifyListeners();
  }
}
