import 'package:flutter/material.dart';
import 'package:inhacks_2023/widgets/properties.dart';

class OpaqueButton extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight fontWeight;
  final double padX;
  final double padY;
  final Color? color;
  final Color? textColor;
  final VoidCallback? callback;

  const OpaqueButton(
    this.text, {
    required this.fontSize,
    required this.fontWeight,
    required this.padX,
    required this.padY,
    this.color,
    this.textColor,
    required this.callback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        minimumSize: const MaterialStatePropertyAll(Size.zero),
        padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: padX, vertical: padY),
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: MaterialStatePropertyAll(color ?? AppColors.primary),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        side: color == Colors.transparent && textColor != null
            ? MaterialStatePropertyAll(
                BorderSide(
                  color: textColor!,
                  width: 1,
                ),
              )
            : null,
      ),
      onPressed: callback!,
      child: Text(
        text,
        style: TextStyle(
          color: textColor ?? Colors.white,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
