import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  final form = GlobalKey<FormState>();

  var isLogin = true;
  var enteredEmail = "";
  var enteredPassword = '';

  void submit() {
    final _isValid = form.currentState!.validate();

    if (!_isValid) {
      return;
    }

    form.currentState!.save();
    
  }
}
