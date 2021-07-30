import 'package:advanced_lockscreen/custom_widgets/custom_button.dart';
import 'package:advanced_lockscreen/logic/listen_buttons.dart';
import 'package:advanced_lockscreen/logic/params.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Encryption extends StatefulWidget {
  Encryption({Key? key}) : super(key: key);

  @override
  _EncryptionState createState() => _EncryptionState();
}

class _EncryptionState extends State<Encryption> {
  final _listener = ListenButtons();
  var _groupValue = "";
  bool _choiceDone = false;

  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            height: MediaQuery.of(context).size.height * 0.15,
            child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.20,
                    top: 15.0,
                    right: MediaQuery.of(context).size.width * 0.20),
                child: const Text(
                  "Выберите какие арифметические действия выполнять "
                  "с цифрами вашего пинкода и введите число с которым это "
                  "действие будет выполняться",
                  textAlign: TextAlign.center,
                )),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.40,
            child: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.30),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Radio(
                          value: MULTIPLY,
                          groupValue: _groupValue,
                          onChanged: (T) {
                            setState(() {
                              _groupValue = T.toString();
                              _listener.onClickMULTIPLY();
                              _choiceDone = true;
                            });
                          }),
                      SizedBox(width: 5.0),
                      Text(MULTIPLY),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Radio(
                          value: ADDITION,
                          groupValue: _groupValue,
                          onChanged: (T) {
                            setState(() {
                              _choiceDone = true;
                              _groupValue = T.toString();
                              _listener.onClickADDITION();
                            });
                          }),
                      SizedBox(width: 5.0),
                      Text(ADDITION),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Radio(
                          value: SUBTRACTION,
                          groupValue: _groupValue,
                          onChanged: (T) {
                            setState(() {
                              _choiceDone = true;
                              _groupValue = T.toString();
                              _listener.onClickSUBTRACTION();
                            });
                          }),
                      SizedBox(width: 5.0),
                      Text(SUBTRACTION),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Radio(
                          value: DIVISION,
                          groupValue: _groupValue,
                          onChanged: (T) {
                            setState(() {
                              _choiceDone = true;
                              _groupValue = T.toString();
                              _listener.onClickDIVISION();
                            });
                          }),
                      SizedBox(width: 5.0),
                      Text(DIVISION),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.30),
                    child: TextField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                          hintText: "Введите число",
                          border: OutlineInputBorder()),
                      maxLength: 3,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.15,
            child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.20,
                    top: 10.0,
                    right: MediaQuery.of(context).size.width * 0.20),
                child: const Text(
                  "После шифрования от многозначных чисел берется последняя цифра числа,"
                  "дробные числа округляются в меньшую сторону.",
                  textAlign: TextAlign.center,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: ButtonCustom(
              text: "ЗАВЕРШИТЬ НАСТРОЙКУ",
              width: 250.0,
              shapeCircle: false,
              onTap: () {
                _listener.onClickFinish(_passwordController.text);
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/', (Route<dynamic> route) => false);
              },
            ),
          ),
        ],
      ),
    );
  }

  bool _isNumeric(String str) {
    try {
      double.parse(str);
    } on FormatException {
      return false;
    } finally {
      return true;
    }
  }
}
