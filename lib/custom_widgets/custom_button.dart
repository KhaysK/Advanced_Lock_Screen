import 'package:advanced_lockscreen/logic/listen_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonCustom extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final bool isActive;
  final bool isShapeCircle;
  final VoidCallback onTap;

  ButtonCustom(
      {Key? key,
      required this.text,
      this.width = 100.0,
      this.height = 35.0,
      required this.onTap,
      this.isActive = true,
      this.isShapeCircle = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      child: Container(
        width: width,
        height: height,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.5,
            ),
          ),
        ),
        decoration: isShapeCircle
            ? BoxDecoration(
                color: isActive ? Colors.white : Colors.grey,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0.1,
                    blurRadius: 3,
                    offset: Offset(0.0, 4.0),
                  ),
                ],
                shape: BoxShape.circle,
              )
            : BoxDecoration(
                color: isActive ? Colors.white : Colors.grey,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0.1,
                    blurRadius: 3,
                    offset: Offset(0.0, 4.0),
                  ),
                ],
              ),
      ),
      onTap: isActive ? onTap : null,
      splashColor: Colors.grey,
    );
  }
}
