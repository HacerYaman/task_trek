import 'package:flutter/material.dart';
import 'package:task_trek/constants/colors.dart';
import 'package:task_trek/constants/dimens.dart';

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
    return Container(
      height: TaskTrekDimens.buttonHeight,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: TasktrekColors.primaryColor,
            //minimumSize: const Size(300, 55),
            shape: const RoundedRectangleBorder(
                borderRadius: TaskTrekDimens.borderRadius,
                side: BorderSide(color: TasktrekColors.secondaryColor))),
        child: Text(
          buttonText,
          style: const TextStyle(color: Colors.white, fontSize: TaskTrekDimens.fontSizeMedium),
        ),
      ),
    );
  }
}
