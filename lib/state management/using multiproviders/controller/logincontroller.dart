import 'package:flutter/material.dart';

class Login_Provider extends ChangeNotifier {
  bool _loggedIn = false;

  bool get login => _loggedIn;

  void loggedin(){
    _loggedIn = true;
    notifyListeners();
  }
  void loggedout(){
    _loggedIn = false;
    notifyListeners();
  }
}