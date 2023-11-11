import 'package:flutter/material.dart';
import 'package:inhacks_2023/widgets/opaque_button.dart';

class NavigationTop extends StatelessWidget {
  final String? title;
  final VoidCallback callback;

  const NavigationTop({this.title, required this.callback, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        OpaqueButton(
          '<',
          fontSize: 18,
          fontWeight: FontWeight.normal,
          padX: 16,
          padY: 14,
          callback: callback,
        ),
        const SizedBox(width: 16),
        if (title != null)
          Text(
            title!,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
      ],
    );
  }
}
