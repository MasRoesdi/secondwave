import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthInput extends StatelessWidget {
  final String? placeholderText;
  final bool isPassword;

  const AuthInput({this.placeholderText, required this.isPassword, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 24,
      ),
      child: TextField(
        style: const TextStyle(
          fontSize: 14,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromRGBO(196, 196, 196, 0.2),
          hintText: placeholderText,
          hintStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
        obscureText: isPassword,
      ),
    );
  }
}
