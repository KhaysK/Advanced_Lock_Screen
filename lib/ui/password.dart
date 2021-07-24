import 'package:advanced_lockscreen/custom_widgets/custom_button.dart';
import 'package:advanced_lockscreen/logic/listen_buttons.dart';
import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  PasswordScreen({Key? key}) : super(key: key);

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final _listener = ListenButtons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "LockScreen",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.30,
              child: Center(
                  child: Text(
                    _listener.password,
                    style: const TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 5.0,
                    ),
                  )
              )
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.50,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 50.0,
                  mainAxisExtent: 35.0,
                  crossAxisSpacing: 35.0,
                ),

                // Вот кнопки и вызов соответствующих функций
                children: [
                  ButtonCustom(text: "", isActive: _listener.password.length < 5 ? true:false ,
                    onTap: () {setState((){ _listener.onClickOne();});},),
                  ButtonCustom(text: "", isActive: _listener.password.length < 5 ? true:false ,
                    onTap: () {setState((){ _listener.onClickTwo();});},),
                  ButtonCustom(text: "", isActive: _listener.password.length < 5 ? true:false ,
                    onTap: () {setState((){ _listener.onClickThree();});},),
                  ButtonCustom(text: "", isActive: _listener.password.length < 5 ? true:false ,
                    onTap: () {setState((){ _listener.onClickFour();});},),
                  ButtonCustom(text: "", isActive: _listener.password.length < 5 ? true:false ,
                    onTap: () {setState((){ _listener.onClickFive();});},),
                  ButtonCustom(text: "", isActive: _listener.password.length < 5 ? true:false ,
                    onTap: () {setState((){ _listener.onClickSix();});},),
                  ButtonCustom(text: "", isActive: _listener.password.length < 5 ? true:false ,
                    onTap: () {setState((){ _listener.onClickSeven();});},),
                  ButtonCustom(text: "", isActive: _listener.password.length < 5 ? true:false ,
                    onTap: () {setState((){ _listener.onClickEight();});},),
                  ButtonCustom(text: "", isActive: _listener.password.length < 5 ? true:false ,
                    onTap: () {setState((){ _listener.onClickNine();});},),
                  ButtonCustom(text: "CLEAR", onTap: () {setState((){ _listener.onClickClear();});},),
                  ButtonCustom(text: "", isActive: _listener.password.length < 5 ? true:false ,
                    onTap: () {setState((){ _listener.onClickZero();});},),
                  ButtonCustom(text: "NEXT", onTap: () {setState((){ _listener.onClockNext();});},),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
