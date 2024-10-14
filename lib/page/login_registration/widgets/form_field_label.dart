import 'package:flutter/material.dart';

class FormFieldLabel {
  static Align label({required String label}) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text.rich(
          TextSpan(
              children: [
                TextSpan(
                    text: label
                ),
                const TextSpan(
                    text: '*',
                    style: TextStyle(color: Colors.red)
                )
              ]
          )
      ),
    );
  }
}