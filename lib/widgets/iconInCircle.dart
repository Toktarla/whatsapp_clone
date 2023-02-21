import 'package:flutter/material.dart';

import '../help/constants.dart';

class IconInCircle extends StatelessWidget {
  final double height, width;
  final IconData icon;
  final Color color;
  final String text;

  const IconInCircle(
      {Key? key,
      required this.height,
      required this.width,
      required this.icon,
      required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(color: Colors.grey),
            ),
            child: Icon(
              icon,
              color: color,
            )),
        Text(
            text,
            textAlign: TextAlign.center,
            style: textStyle.copyWith(fontSize: 14, color: Colors.black38)
        ),
      ],
    );
  }
}
