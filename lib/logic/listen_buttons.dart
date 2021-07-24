import 'package:advanced_lockscreen/logic/params.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ListenButtons {
  final _storage = SharedPreferences.getInstance();
  var _tmpOperation = "";
  var _choiceDone = false;
  String password = "";
  // Экран выбора кнопок - начало
  void onClickOne() {
    arrPassword.add(1);
    password += '1';
    debugPrint("1");
  }

  void onClickTwo() {
    arrPassword.add(2);
    password += '2';
    debugPrint("1");
  }

  void onClickThree() {
    arrPassword.add(3);
    password += '3';
    debugPrint("1");
  }

  void onClickFour() {
    arrPassword.add(4);
    password += '4';
    debugPrint("1");
  }

  void onClickFive() {
    arrPassword.add(5);
    password += '5';
    debugPrint("1");
  }

  void onClickSix() {
    arrPassword.add(6);
    password += '6';
    debugPrint("1");
  }

  void onClickSeven() {
    arrPassword.add(7);
    password += '7';
    debugPrint("1");
  }

  void onClickEight() {
    arrPassword.add(8);
    password += '8';
    debugPrint("1");
  }

  void onClickNine() {
    arrPassword.add(9);
    password += '9';
  }

  void onClickZero() {
    arrPassword.add(0);
    password += '0';
  }

  void onClickClear() {
    arrPassword.clear();
    password = "";
  }

  Future<void> onClockNext() async {
    final storage = await _storage;
    var tmpS = "";
    arrPassword.forEach((element) => tmpS += element.toString());
    storage.setString(BUTTONS, tmpS);
  }
  // Экран выбора кнопок - конец

  // Экран выбора ареф-й операции - начало
  void onClickMULTIPLY() {
    _choiceDone = true;
    _tmpOperation = MULTIPLY;
  }

  void onClickADDITION() {
    _choiceDone = true;
    _tmpOperation = ADDITION;
  }

  void onClickSUBTRACTION() {
    _choiceDone = true;
    _tmpOperation = SUBTRACTION;
  }

  void onClickDIVISION() {
    _choiceDone = true;
    _tmpOperation = DIVISION;
  }

  void onClickFinish(String value) async {
    if (!_choiceDone) return;
    if (value.isNotEmpty && isNumeric(value)) {
      final storage = await _storage;
      storage.setString(OPERATION, _tmpOperation);
      storage.setInt(USER_NUMBER, int.parse(value));
    }
    return;
  }
  // Экран выбора ареф-й операции - конец
}
