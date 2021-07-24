import 'package:advanced_lockscreen/logic/listen_buttons.dart';
import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final bool isActive;
  final VoidCallback onTap;

  ButtonCustom({Key? key, required this.text, this.width = 100.0, this.height = 35.0, required this.onTap, this.isActive = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(

      child: Container(
        width: width,
        height: height,
        child: Center(
          child: Text(text,
            style: const TextStyle(
              fontSize:15.0,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.5,
            ),
          ),
        ),
        decoration: BoxDecoration(
            color: isActive ? Colors.white : Colors.grey,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0.5,
                blurRadius: 3,
                offset: Offset(0.0, 4.0),
              ),
            ]
        ),
      ),
      onTap: isActive ? onTap : null,
      splashColor: Colors.grey,
    );
  }
}
