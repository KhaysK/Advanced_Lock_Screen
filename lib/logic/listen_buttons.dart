import 'package:advanced_lockscreen/logic/params.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ListenButtons {
  final _storage = SharedPreferences.getInstance();
  var _tmpOperation = "";

  // Экран выбора кнопок - начало
  void onClickOne() {
    PASSWORD += '1';
  }

  void onClickTwo() {
    PASSWORD += '2';
  }

  void onClickThree() {
    PASSWORD += '3';
  }

  void onClickFour() {
    PASSWORD += '4';
  }

  void onClickFive() {
    PASSWORD += '5';
  }

  void onClickSix() {
    PASSWORD += '6';
  }

  void onClickSeven() {
    PASSWORD += '7';
  }

  void onClickEight() {
    PASSWORD += '8';
  }

  void onClickNine() {
    PASSWORD += '9';
  }

  void onClickZero() {
    PASSWORD += '0';
  }

  void onClickAgain() {
    PASSWORD = "";
  }

  void onClickClear(String s) {
    PASSWORD = "";
    for(int i = 0; i < s.length - 1; i++)
      PASSWORD += s[i];
  }

  // Экран выбора кнопок - конец

  // Экран выбора ареф-й операции - начало
  void onClickMULTIPLY() {
    _tmpOperation = MULTIPLY;
  }

  void onClickADDITION() {
    _tmpOperation = ADDITION;
  }

  void onClickSUBTRACTION() {
    _tmpOperation = SUBTRACTION;
  }

  void onClickDIVISION() {
    _tmpOperation = DIVISION;
  }

  Future<void> onClickFinish(String value) async {
    final storage = await _storage;
    storage.setString(OPERATION, _tmpOperation);
    storage.setInt(USER_NUMBER, int.parse(value));
    storage.setString(BUTTONS, PASSWORD);
    PASSWORD = "";
  }
// Экран выбора ареф-й операции - конец
}
