import 'package:advanced_lockscreen/custom_widgets/custom_button.dart';
import 'package:advanced_lockscreen/custom_widgets/custom_radio_button.dart';
import 'package:advanced_lockscreen/logic/listen_buttons.dart';
import 'package:flutter/material.dart';

class Encryption extends StatelessWidget {
  Encryption({Key? key}) : super(key: key);
  final _listener = ListenButtons();
  TextEditingController _passwordController = TextEditingController();
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
                children: <Widget>[/*
                  const RadioCustom(
                      value: "Multiply",
                      groupValue: "groupValue",
                      text: "Умножить"),
                  const RadioCustom(
                      value: "Add",
                      groupValue: "groupValue",
                      text: "Прибавить"),
                  const RadioCustom(
                      value: "Subtract",
                      groupValue: "groupValue",
                      text: "Отнять"),
                  const RadioCustom(
                      value: "Divide",
                      groupValue: "groupValue",
                      text: "Делить"),*/
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.30),
                    child: TextField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                          hintText: "Введите число",
                          border: OutlineInputBorder()),
                      maxLength: 3,
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
              onTap: () => _listener.onClickFinish(_passwordController.text),
            ),
          ),
        ],
      ),
    );
  }
}
