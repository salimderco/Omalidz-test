import 'package:flutter/material.dart';
import '../services/api_service.dart';

class AuthProvider extends ChangeNotifier {
  String? token;
  Map<String, dynamic>? user;
  bool loading = false;
  String? error;

  AuthProvider() {
    _loadToken();
  }

  Future<void> _loadToken() async {
    token = await ApiService.getToken();
    notifyListeners();
  }

  Future<void> login(String email, String password) async {
    loading = true;
    error = null;
    notifyListeners();
    try {
      final result = await ApiService.login(email, password);
      token = result['token'];
      user = result['user'];
      await ApiService.setToken(token!);
    } catch (e) {
      error = e.toString().replaceFirst('Exception: ', '');
    } finally {
      loading = false;
      notifyListeners();
    }
  }

  Future<void> register(String name, String email, String password) async {
    loading = true;
    error = null;
    notifyListeners();
    try {
      final result = await ApiService.register(name, email, password);
      // Optionally auto-login after registration
      await login(email, password);
    } catch (e) {
      error = e.toString().replaceFirst('Exception: ', '');
    } finally {
      loading = false;
      notifyListeners();
    }
  }

  Future<void> logout() async {
    token = null;
    user = null;
    await ApiService.clearToken();
    notifyListeners();
  }
} 