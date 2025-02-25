import 'package:flutter/material.dart';

class NavbarVisibilityProvider with ChangeNotifier {
  bool _isNavbarVisible = true; // Default to visible

  bool get isNavbarVisible => _isNavbarVisible;

  void showNavbar() {
    _isNavbarVisible = true;
    notifyListeners();
  }

  void hideNavbar() {
    _isNavbarVisible = false;
    notifyListeners();
  }

  void toggleNavbar() {
    _isNavbarVisible = !_isNavbarVisible;
    notifyListeners();
  }
}
