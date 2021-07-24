import 'package:advanced_lockscreen/custom_widgets/custom_button.dart';
import 'package:advanced_lockscreen/logic/listen_buttons.dart';
import 'package:flutter/material.dart';

class PasswordScreen extends StatelessWidget {
  PasswordScreen({Key? key}) : super(key: key);
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
                  ButtonCustom(text: "", onTap: () => _listener.onClickTwo(),),
                  ButtonCustom(text: "", onTap: () => _listener.onClickTwo(),),
                  ButtonCustom(text: "", onTap: () => _listener.onClickThree(),),
                  ButtonCustom(text: "", onTap: () => _listener.onClickFour(),),
                  ButtonCustom(text: "", onTap: () => _listener.onClickFive(),),
                  ButtonCustom(text: "", onTap: () => _listener.onClickSix(),),
                  ButtonCustom(text: "", onTap: () => _listener.onClickSeven(),),
                  ButtonCustom(text: "", onTap: () => _listener.onClickEight(),),
                  ButtonCustom(text: "", onTap: () => _listener.onClickNine(),),
                  ButtonCustom(text: "CLEAR", onTap: () => _listener.onClickClear()),
                  ButtonCustom(text: "", onTap: () => _listener.onClickZero(),),
                  ButtonCustom(text: "NEXT", onTap: () => _listener.onClockNext(),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
