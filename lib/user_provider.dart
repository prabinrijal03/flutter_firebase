/* import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_practice/config.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class UserProvider extends ChangeNotifier {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  bool isLoading = false;

  Future registerUser(String fullname, String email, String password) async {
    isLoading = true;
    
    var regBody = jsonEncode(
        {fullname: "fullname", email: "email", password: "password"});
    var response = await http.post(Uri.parse(register),
        headers: {"Content-type": "application/json"}, body: regBody);
    var result = jsonDecode(response.body);
    isLoading = false;
    return result; 
  }
}
 */