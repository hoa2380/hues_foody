import 'package:flutter/material.dart';

class DotWidget extends StatelessWidget {
  final Color color;
  final String text;
  final double size;
  final Color textColor;
  final EdgeInsets padding;

  const DotWidget({
    Key key,
    this.color,
    this.text,
    this.size = 11,
    this.textColor = const Color(0xff505050),
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color ?? Colors.black26,
            ),
          ),
          const SizedBox(
            width: 2,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500, color: textColor),
          )
        ],
      ),
    );
  }
}