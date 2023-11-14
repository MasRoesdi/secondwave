import 'package:flutter/material.dart';
import 'package:inhacks_2023/widgets/custom_icon_button.dart';
import 'package:inhacks_2023/widgets/opaque_button.dart';

class NavigationTop extends StatelessWidget {
  final String? title;
  final VoidCallback callback;
  final bool isChatDetail;

  const NavigationTop({
    this.title,
    required this.callback,
    this.isChatDetail = false,
    super.key,
  });

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
          padY: 7,
          callback: callback,
        ),
        const SizedBox(width: 16),
        if (title != null)
          Expanded(
            child: Text(
              title!,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        if (isChatDetail)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              CustomIconButton(Icons.video_call_outlined),
              SizedBox(width: 12),
              CustomIconButton(Icons.phone_outlined),
            ],
          ),
      ],
    );
  }
}
