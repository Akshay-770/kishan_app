import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  String? _userId;
  bool _isAuthenticated = false;
  String? _userEmail;

  bool get isAuthenticated => _isAuthenticated;
  String? get userId => _userId;
  String? get userEmail => _userEmail;

  /// Simulates a login method
  Future<bool> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 2)); // simulate network delay
    // TODO: Replace with real authentication logic
    if (email == "test@example.com" && password == "password") {
      _userId = "user123";
      _userEmail = email;
      _isAuthenticated = true;
      notifyListeners();
      return true;
    }
    return false;
  }

  /// Simulates a signup method
  Future<bool> signup(String email, String password) async {
    await Future.delayed(const Duration(seconds: 2)); // simulate network delay
    // TODO: Replace with real signup logic
    // On success:
    _userId = "user123";
    _userEmail = email;
    _isAuthenticated = true;
    notifyListeners();
    return true;
  }

  /// Logout the user
  void logout() {
    _userId = null;
    _userEmail = null;
    _isAuthenticated = false;
    notifyListeners();
  }
}
