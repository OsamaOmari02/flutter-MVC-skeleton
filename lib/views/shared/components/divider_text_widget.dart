import 'package:flutter/material.dart';
import 'package:flutter_mvc_skeleton/views/shared/components/text_widget.dart';

import '../utlis/media_query.dart';

class DividerTextWidget extends StatelessWidget {
  const DividerTextWidget({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(child: Divider(color: Colors.grey)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(context) * 0.02),
          child: TextWidget(
            text: text,
            size: getWidth(context) * 0.04,
          ),
        ),
        const Expanded(child: Divider(color: Colors.grey)),
      ],
    );
  }
}
