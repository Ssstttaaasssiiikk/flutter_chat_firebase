import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';

class AppChatBubble extends StatelessWidget {
  final String message;
  final bool tail;
  final bool isCurrentUser;

  const AppChatBubble({
    super.key,
    required this.tail,
    required this.message,
    required this.isCurrentUser,
  });

  @override
  Widget build(BuildContext context) {
    return BubbleSpecialThree(
      text: message,
      tail: true,
      isSender: isCurrentUser,
      color: isCurrentUser ? Colors.black : Colors.blue,
      textStyle: const TextStyle(color: Colors.white),
    );
  }
}
