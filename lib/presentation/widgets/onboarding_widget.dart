import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'custom_button_widget.dart';

class OnboardingWidget extends StatelessWidget {
  final String asset;
  final String title;
  final String detail;

  const OnboardingWidget({
    super.key,
    required this.asset,
    required this.title,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          asset,
          width: 250,
          height: 250,
        ),
        Spacer(),
        Text(
          title,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        Text(
          detail,
          style: const TextStyle(fontSize: 16, color: Colors.black45),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: CustomButton(
            onPressed: () {},
            buttonText: 'Get Started',
          ),
        )
      ],
    );
  }
}
