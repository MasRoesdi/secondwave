import 'package:flutter/material.dart';

class TextWrapper extends StatelessWidget {
  final Widget text;
  final bool isCentered;

  const TextWrapper(this.text, {this.isCentered = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Wrap(
            alignment: isCentered ? WrapAlignment.center : WrapAlignment.start,
            children: [text],
          ),
        )
      ],
    );
  }
}
