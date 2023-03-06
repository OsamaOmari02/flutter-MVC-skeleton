import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final double size;
  final String text;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final Color? color;
  final TextDirection? textDirection;
  final bool isUnderlined;
  const TextWidget(
      {super.key,
      required this.text,
      required this.size,
      this.fontWeight,
      this.color,
      this.textAlign,
      this.textDirection,
      this.isUnderlined = false
      });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      textDirection: textDirection,
      textAlign: textAlign ?? TextAlign.center,
      style: TextStyle(
        fontSize: size,
        fontFamily: 'AlegreyaSansSC',
        fontWeight: fontWeight,
        color: color ?? Colors.white,
        decoration: isUnderlined ? TextDecoration.underline : TextDecoration.none
      ),
    );
  }
}
