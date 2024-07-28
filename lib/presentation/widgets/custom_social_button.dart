import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants/colors.dart';
import '../../constants/dimens.dart';
class CustomSocialButton extends StatelessWidget {
  final Icon? icon;
  final String? asset;
  const CustomSocialButton({
    super.key,  this.icon, this.asset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
          border: Border.all(color: TasktrekColors.primaryColor.withOpacity(0.5)),
          borderRadius: TaskTrekDimens.borderRadius
      ),
      child: Padding(
        padding: const EdgeInsets.all(TaskTrekDimens.paddingMedium),
        child: SvgPicture.asset(asset!,width: 40, height: 40,),
      ),
    );
  }
}