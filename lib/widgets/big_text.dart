import 'package:flutter/material.dart';

import 'dimensions.dart';

// ignore: must_be_immutable
class BigText extends StatelessWidget {
  BigText(
      {super.key,
      this.color,
      required this.text,
      this.size = 0,
      this.overflow = TextOverflow.ellipsis});

  final Color? color;
  final String text;
  double size;
  TextOverflow overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
          fontFamily: 'RemachineScript',
          color: color,
          fontSize: size == 0 ? Dimensions.font25 : size,
          fontWeight: FontWeight.w400),
    );
  }
}
