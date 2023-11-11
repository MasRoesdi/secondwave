import 'package:flutter/material.dart';
import 'properties.dart';

// Need to get rid of the paddings and stuff
class PlainButton extends StatelessWidget {
  final String text;
  final double? size;
  final FontWeight fontWeight;
  final VoidCallback? callback;

  const PlainButton(
    this.text, {
    required this.size,
    required this.fontWeight,
    required this.callback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
        padding: MaterialStatePropertyAll(EdgeInsets.zero),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStatePropertyAll(Size.zero),
      ),
      onPressed: callback!,
      child: Text(
        text,
        style: TextStyle(
          color: AppColors.primary,
          fontSize: size,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
