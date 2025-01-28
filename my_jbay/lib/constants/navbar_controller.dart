import 'package:flutter/material.dart';

class NavbarController extends ChangeNotifier {
  int _navbarType = 0; // 0: MainNavbar, 1: AlternateNavbar

  int get navbarType => _navbarType;

  void switchNavbar(int type) {
    _navbarType = type;
    notifyListeners();
  }
}
