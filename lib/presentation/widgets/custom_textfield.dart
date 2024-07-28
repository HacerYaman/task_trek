import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/dimens.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Icon icon;

  const CustomTextField({
    super.key, required this.hintText, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        prefixIcon: icon,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        enabledBorder:  OutlineInputBorder(      //bu eklenmezse border rengi değişmiyor
          borderSide: BorderSide(
            color: TasktrekColors.primaryColor.withOpacity(0.5),
          ),
          borderRadius: TaskTrekDimens.borderRadius,
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
          borderRadius: TaskTrekDimens.borderRadius,
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
          borderRadius: TaskTrekDimens.borderRadius,
        ),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: TasktrekColors.primaryColor,
            ),
            borderRadius: TaskTrekDimens.borderRadius),
        border: const OutlineInputBorder(
            borderRadius: TaskTrekDimens.borderRadius,
            borderSide: BorderSide(
                color: TasktrekColors.primaryColor
            )
        ),
      ),
    );
  }
}