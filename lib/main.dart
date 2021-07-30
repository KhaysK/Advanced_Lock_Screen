import 'package:advanced_lockscreen/ui/encryption.dart';
import 'package:advanced_lockscreen/ui/lockscreen.dart';
import 'package:advanced_lockscreen/ui/password.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      "/": (context) => LockScreen(),
      "/password": (context) => PasswordScreen(),
      "/encryption": (context) => Encryption(),
    },
  ));
}
