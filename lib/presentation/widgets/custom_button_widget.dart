import 'package:flutter/material.dart';
import 'package:task_trek/constants/colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: TasktrekColors.primaryColor,
          minimumSize: const Size(300, 55),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: TasktrekColors.secondaryColor))),
      child: Text(
        buttonText,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
