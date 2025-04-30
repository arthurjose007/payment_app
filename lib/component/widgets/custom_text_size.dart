import 'package:flutter/material.dart';

class SizedText extends StatelessWidget {
  final String text;
  final Color color;
  const SizedText({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final Size textSize = _textSize(text);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: color,
            fontWeight: FontWeight.w700,
          ),
        ),
        Row(children: [
          for(int i=0; i<textSize.width/4;i++)
          i.isEven?  Container(
              width: 4, // Match text width exactly
              height: 2,
              color: color,
            ):Container(
            width: 4, // Match text width exactly
            height: 2,
            color: Colors.white,
          ),
        ],),

      ],
    );
  }

  Size _textSize(String text) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: TextStyle(
          fontSize: 16,
          color: color,
          fontWeight: FontWeight.w700,
        ),
      ),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }
}