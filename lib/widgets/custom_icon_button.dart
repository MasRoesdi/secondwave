import 'package:flutter/material.dart';
import 'package:inhacks_2023/widgets/properties.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;

  const CustomIconButton(this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
        padding: MaterialStatePropertyAll(EdgeInsets.zero),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStatePropertyAll(Size.zero),
      ),
      onPressed: () {},
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: AppColors.primary,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
