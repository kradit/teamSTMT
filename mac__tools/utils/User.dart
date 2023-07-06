import 'package:flutter/material.dart';
import 'dart:core';

class User {
  String email = '';
  String password = '';

  var credentials = {
    'Zero@hcl.com': 'Zero123',
    'One@hcl.com': 'One123',
    'Two@hcl.com': 'Two123',
    'Three@hcl.com': 'Three123',
    'Four@hcl.com': 'Four123',
    'Five@hcl.com': 'Five123',
    'Six@hcl.com': 'Six123',
  };
  //  bool isRegisteredUser(String email)
  // {

  //   if(users.find(email))
  //   {
  //     print("The User is Registered");
  //     return true;
  //   }
  //   else
  //   {
  //     print("Please sign up");
  //     return false;
  //   }
  // }
  bool validateCredentials(String email, String password) {
    if (credentials[email] == password) {
      print("Entered valid credentials");
      return true;
    } else {
      print("The email or password is incorrect");
      return false;
    }
  }
}
