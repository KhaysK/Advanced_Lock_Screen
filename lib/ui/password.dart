import 'package:advanced_lockscreen/custom_widgets/custom_button.dart';
import 'package:advanced_lockscreen/logic/listen_buttons.dart';
import 'package:advanced_lockscreen/logic/params.dart';
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
                PASSWORD,
                style: const TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 5.0,
                ),
              ))),
          Padding(padding: EdgeInsets.only(top: 59)),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.50,
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 5.0,
                  mainAxisExtent: 85.0,
                ),

                // Вот кнопки и вызов соответствующих функций
                children: [
                  ButtonCustom(
                    text: "",
                    isActive: _is_active_button(PASSWORD),
                    onTap: () {
                      setState(() {
                        _listener.onClickOne();
                      });
                    },
                  ),
                  ButtonCustom(
                    text: "",
                    isActive: _is_active_button(PASSWORD),
                    onTap: () {
                      setState(() {
                        _listener.onClickTwo();
                      });
                    },
                  ),
                  ButtonCustom(
                    text: "",
                    isActive: _is_active_button(PASSWORD),
                    onTap: () {
                      setState(() {
                        _listener.onClickThree();
                      });
                    },
                  ),
                  ButtonCustom(
                    text: "",
                    isActive: _is_active_button(PASSWORD),
                    onTap: () {
                      setState(() {
                        _listener.onClickFour();
                      });
                    },
                  ),
                  ButtonCustom(
                    text: "",
                    isActive: _is_active_button(PASSWORD),
                    onTap: () {
                      setState(() {
                        _listener.onClickFive();
                      });
                    },
                  ),
                  ButtonCustom(
                    text: "",
                    isActive: _is_active_button(PASSWORD),
                    onTap: () {
                      setState(() {
                        _listener.onClickSix();
                      });
                    },
                  ),
                  ButtonCustom(
                    text: "",
                    isActive: _is_active_button(PASSWORD),
                    onTap: () {
                      setState(() {
                        _listener.onClickSeven();
                      });
                    },
                  ),
                  ButtonCustom(
                    text: "",
                    isActive: _is_active_button(PASSWORD),
                    onTap: () {
                      setState(() {
                        _listener.onClickEight();
                      });
                    },
                  ),
                  ButtonCustom(
                    text: "",
                    isActive: _is_active_button(PASSWORD),
                    onTap: () {
                      setState(() {
                        _listener.onClickNine();
                      });
                    },
                  ),
                  ButtonCustom(
                    text: "AGAIN",
                    onTap: () {
                      setState(() {
                        _listener.onClickAgain();
                      });
                    },
                  ),
                  ButtonCustom(
                    text: "",
                    isActive: _is_active_button(PASSWORD),
                    onTap: () {
                      setState(() {
                        _listener.onClickZero();
                      });
                    },
                  ),
                  ButtonCustom(
                    text: "NEXT",
                    isActive: !_is_active_button(PASSWORD),
                    onTap: () {
                      Navigator.pushNamed(context, "/encryption");
                    },
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  bool _is_active_button(String password) {
    return PASSWORD.length < 5 ? true : false;
  }
}
