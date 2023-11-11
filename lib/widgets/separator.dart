import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  final double? width;
  final EdgeInsetsGeometry margin;

  const Separator({required this.width, required this.margin, super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * width!,
      margin: margin,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey[300]!,
            width: 1,
          ),
        ),
      ),
    );
  }
}
