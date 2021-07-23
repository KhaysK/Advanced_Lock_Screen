import 'package:advanced_lockscreen/logic/params.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ListenButtons{
  final _storage = SharedPreferences.getInstance();
  var _tmpOperation = "";
  var _choiceDone = false;

  // Экран выбора кнопок - начало
  void onClickOne() {
    arrPassword.add(1);
  }

  void onClickTwo (){
    arrPassword.add(2);
  }

  void onClickThree (){
    arrPassword.add(3);
  }

  void onClickFour (){
    arrPassword.add(4);
  }

  void onClickFive (){
    arrPassword.add(5);
  }

  void onClickSix (){
    arrPassword.add(6);
  }

  void onClickSeven (){
    arrPassword.add(7);
  }

  void onClickEight (){
    arrPassword.add(8);
  }

  void onClickNine (){
    arrPassword.add(9);
  }

  void onClickZero (){
    arrPassword.add(0);
  }

  void onClockAgain (){
    arrPassword.clear();
  }

  Future<void> onClockNext () async{
    final storage = await _storage;
    var tmpS = "";
    arrPassword.forEach((element) => tmpS += element.toString());
    storage.setString(BUTTONS, tmpS);
  }
  // Экран выбора кнопок - конец


  // Экран выбора ареф-й операции - начало
  void onClickMULTIPLY (){
    _choiceDone = true;
    _tmpOperation = MULTIPLY;
  }

  void onClickADDITION (){
    _choiceDone = true;
    _tmpOperation = ADDITION;
  }

  void onClickSUBTRACTION (){
    _choiceDone = true;
    _tmpOperation = SUBTRACTION;
  }

  void onClickDIVISION (){
    _choiceDone = true;
    _tmpOperation = DIVISION;
  }

  void onClickFinish(String value) async{
    if(!_choiceDone) return;
    if(value.isNotEmpty && isNumeric(value)){
      final storage = await _storage;
      storage.setString(OPERATION, _tmpOperation);
      storage.setInt(USER_NUMBER, int.parse(value));
    }
    return;
  }
  // Экран выбора ареф-й операции - конец

}


