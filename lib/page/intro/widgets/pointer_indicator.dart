import 'package:flutter/material.dart';
class IntroPointerIndicator {
  static Container pointer({ required Color color, required double width, required double height, required double radius}) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius)
      ),
    );
  }
}
