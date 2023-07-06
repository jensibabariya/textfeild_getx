import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailValidationController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  ///................reguler Exp.................
  String emailPattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  String passwordPattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';

  String? validateEmail(String value) {
    if (value.isEmpty) {
      return 'Please enter an email address';
    }

    RegExp regExp = RegExp(emailPattern);
    if (!regExp.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'Please enter a password';
    }
    RegExp regExp = RegExp(passwordPattern);
    if (!regExp.hasMatch(value)) {
      return 'Invalid Password Formate';
    }
    return null;
  }

  String? validateUsername(String value) {
    if (value.isEmpty) {
      return 'Please enter a username';
    }

    if (value.length < 4) {
      return 'Username should have at least 4 characters';
    }
    return null;
  }

  void submitForm() {
    if (formKey.currentState!.validate()) {
      print('Form is valid');
    } else {
      print('Form is invalid');
    }
  }
}
