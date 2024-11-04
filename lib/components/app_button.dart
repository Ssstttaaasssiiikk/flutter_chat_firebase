import 'package:chat_flutter_firebase/theme/colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const AppButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        child: Text(text),
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
  final String text;
  final bool loading;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.loading,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          child: loading
              ? const CircularProgressIndicator(
                  color: AppColors.white,
                )
              : Text(text, style: const TextStyle(color: AppColors.white))),
    );
  }
}
