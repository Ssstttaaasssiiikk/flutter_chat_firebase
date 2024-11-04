import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const UserTile({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red[300],
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.person,
                      size: 64,
                    ),
                    const SizedBox(width: 12),
                    Text(text),
                  ],
                ),
              ],
            ),
            const Column(
              children: [
                Text('12:00'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
