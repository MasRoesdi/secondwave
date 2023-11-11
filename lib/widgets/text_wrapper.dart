import 'package:flutter/material.dart';

class TextWrapper extends StatelessWidget {
  final Widget text;

  const TextWrapper(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Wrap(
            children: [text],
          ),
        )
      ],
    );
  }
}
