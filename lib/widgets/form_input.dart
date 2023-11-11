import 'package:flutter/material.dart';
import 'package:inhacks_2023/widgets/properties.dart';

class FormInput extends StatelessWidget {
  final String? placeholder;
  final bool isMultipleLine;

  const FormInput({this.placeholder, this.isMultipleLine = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: placeholder,
          hintStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.primary, width: 1),
          ),
        ),
        minLines: 1,
        maxLines: isMultipleLine ? null : 1,
      ),
    );
  }
}
