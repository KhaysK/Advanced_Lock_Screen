import 'package:advanced_lockscreen/logic/params.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ListenButtons{
  final _storage = SharedPreferences.getInstance();
  var _tmpS = "";
  var _choiceDone = false;

  // Экран выбора кнопок - начало
  void onClickOne() {
    Globals.arrPassword.add(1);
  }

  void onClickTwo (){
    Globals.arrPassword.add(2);
  }

  void onClickThree (){
    Globals.arrPassword.add(3);
  }

  void onClickFour (){
    Globals.arrPassword.add(4);
  }

  void onClickFive (){
    Globals.arrPassword.add(5);
  }

  void onClickSix (){
    Globals.arrPassword.add(6);
  }

  void onClickSeven (){
    Globals.arrPassword.add(7);
  }

  void onClickEight (){
    Globals.arrPassword.add(8);
  }

  void onClickNine (){
    Globals.arrPassword.add(9);
  }

  void onClickZero (){
    Globals.arrPassword.add(0);
  }

  void onClockAgain (){
    Globals.arrPassword.clear();
  }

  Future<void> onClockNext () async{
    final storage = await _storage;
    Globals.arrPassword.forEach((element) => _tmpS += element.toString());
    storage.setString(Globals.BUTTONS, _tmpS);
  }
  // Экран выбора кнопок - конец


  // Экран выбора ареф-й операции - начало
  void onClickMULTIPLY (){
    _choiceDone = true;
    _tmpS = Globals.MULTIPLY;
  }

  void onClickADDITION (){
    _choiceDone = true;
    _tmpS = Globals.ADDITION;
  }

  void onClickSUBTRACTION (){
    _choiceDone = true;
    _tmpS = Globals.SUBTRACTION;
  }

  void onClickDIVISION (){
    _choiceDone = true;
    _tmpS = Globals.DIVISION;
  }

  void onClickFinish(){

  }
  // Экран выбора ареф-й операции - конец

}


