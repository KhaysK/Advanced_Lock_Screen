import 'package:flutter/material.dart';

class RadioCustom extends StatelessWidget {
  final value;
  final groupValue;
  final String text;

  const RadioCustom({Key? key, required this.value, required this.groupValue, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Radio(
            value: value,
            groupValue: groupValue,
            onChanged: null
        ),
        SizedBox(width: 5.0),
        Text(text)
      ],
    );
  }
}
