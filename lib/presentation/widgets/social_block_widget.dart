import 'package:flutter/material.dart';

import '../../constants/assets.dart';
import '../../constants/dimens.dart';
import 'custom_social_button.dart';
class SocialBlockWidget extends StatelessWidget {
  const SocialBlockWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: TaskTrekDimens.paddingLarge, vertical: TaskTrekDimens.paddingMedium),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomSocialButton(asset: TaskTrekAssets.googleAsset,),
          SizedBox(width: TaskTrekDimens.sbLarge,),
          CustomSocialButton(asset: TaskTrekAssets.facebookAsset,),
          SizedBox(width: TaskTrekDimens.sbLarge,),
          CustomSocialButton(asset: TaskTrekAssets.xAsset,),
        ],
      ),
    );
  }
}
