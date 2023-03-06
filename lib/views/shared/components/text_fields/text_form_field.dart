import 'package:flutter/material.dart';

import '../../utlis/media_query.dart';

class TextFormFiledWidget extends StatelessWidget {
  const TextFormFiledWidget({
    Key? key,
    required this.controller,
    required this.keyboardType,
    this.hintText,
    this.labelText,
    this.validator,
    this.fillColor,
    this.enabled = true,
    this.isPassword = false
  }) : super(key: key);
  final TextEditingController controller;
  final String? hintText;
  final String? labelText;
  final TextInputType keyboardType;
  final validator;
  final bool enabled;
  final Color? fillColor;
  final bool isPassword;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      obscureText: isPassword,
      decoration: InputDecoration(
        fillColor: fillColor,
        filled: fillColor != null ? true : false,
        hintText: hintText,
        label: Text(labelText ?? ""),
        contentPadding: EdgeInsets.symmetric(
            vertical: getHeight(context) * 0.01,
            horizontal: getWidth(context) * 0.02),
        border: OutlineInputBorder(
            borderRadius:
                BorderRadius.all(Radius.circular(getHeight(context) * 0.02)),
            borderSide: BorderSide.none),
      ),
    );
  }
}
