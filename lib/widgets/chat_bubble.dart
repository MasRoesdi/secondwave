import 'package:flutter/material.dart';
import 'package:inhacks_2023/widgets/properties.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSelf;

  const ChatBubble(this.text, {this.isSelf = false, super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment:
          isSelf ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: screenSize.width * 0.5,
          ),
          child: Container(
            margin: const EdgeInsets.only(bottom: 18),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: isSelf ? AppColors.primary : Colors.grey[200],
            ),
            child: Wrap(
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: isSelf ? Colors.white : Colors.black,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
