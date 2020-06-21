import 'package:cllangedu/constants/custom_color.dart';
import 'package:flutter/material.dart';

// 자주 사용하는 위젯들 따로 빼놓자
Widget appBar(BuildContext context) {
  return RichText(
      text: TextSpan(style: TextStyle(fontSize: 30), children: <TextSpan>[
        TextSpan(
          text: 'C',
          style: TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.w900,
            color: CustomColor.mainText,
            shadows: [
              Shadow(
                  offset: Offset(0.5, 0.5),
                  color: Colors.black54,
                  blurRadius: 3
              ),
            ],
          ),
        ),
        TextSpan(
          text: 'llang',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.grey,
            shadows: [
              Shadow(
                  offset: Offset(0.5, 0.5),
                  color: Colors.black54,
                  blurRadius: 3
              ),
            ],
          ),
        ),
        TextSpan(
          text: 'E',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: CustomColor.mainText2,
            fontSize: 38,
            shadows: [
              Shadow(
                  offset: Offset(0.5, 0.5),
                  color: Colors.black54,
                  blurRadius: 3
              ),
            ],
          ),
        ),
        TextSpan(
          text: 'du',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey,
            shadows: [
              Shadow(
                  offset: Offset(0.5, 0.5),
                  color: Colors.black54,
                  blurRadius: 3
              ),
            ],
          ),
        ),
      ]));
}