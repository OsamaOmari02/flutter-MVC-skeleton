import 'package:flutter/material.dart';

import '../text_widget.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.fontSize,
    this.backgroundColor,
    this.textColor,
    this.width
  }) : super(key: key);

  final void Function() onPressed;
  final String text;
  final double fontSize;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(backgroundColor)),
          child: TextWidget(
            text: text,
            color: textColor,
            size: fontSize,
          )),
    );
  }
}
