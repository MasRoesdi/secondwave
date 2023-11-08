import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inhacks_2023/widgets/properties.dart';

class OpaqueButton extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight fontWeight;
  final double padX;
  final double padY;
  final VoidCallback? callback;

  const OpaqueButton(
    this.text, {
    required this.fontSize,
    required this.fontWeight,
    required this.padX,
    required this.padY,
    required this.callback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: padX, vertical: padY),
        ),
        backgroundColor: MaterialStatePropertyAll(
          AppColors.primary,
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      onPressed: callback!,
      child: Text(
        text,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
