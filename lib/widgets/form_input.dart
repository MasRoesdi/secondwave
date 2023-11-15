import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inhacks_2023/widgets/properties.dart';

class FormInput extends StatelessWidget {
  final String? placeholder;
  final bool isMultipleLine;
  final IconData? icon;
  final IconData? prefixIcon;
  final bool useBottomPadding;
  final bool isNumber;

  const FormInput({
    this.placeholder,
    this.isMultipleLine = false,
    this.icon,
    this.prefixIcon,
    this.useBottomPadding = true,
    this.isNumber = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: useBottomPadding ? 24 : 0),
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
          suffixIcon: icon != null ? Icon(icon, color: Colors.grey[600]) : null,
          prefixIcon: prefixIcon != null
              ? Icon(prefixIcon, color: Colors.grey[600])
              : null,
        ),
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
        inputFormatters: isNumber
            ? [
                FilteringTextInputFormatter.digitsOnly,
              ]
            : [],
        minLines: 1,
        maxLines: isMultipleLine ? null : 1,
      ),
    );
  }
}
