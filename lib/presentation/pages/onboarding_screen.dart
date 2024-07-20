import 'package:flutter/material.dart';
import 'package:task_trek/constants/assets.dart';
import 'package:task_trek/constants/strings.dart';
import 'package:task_trek/presentation/widgets/onboarding_widget.dart';
import 'package:task_trek/presentation/widgets/page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();

}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController= PageController();
  int currentPage=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Stack(children: [
          PageView(
            onPageChanged: (int page){
              setState(() {
                currentPage=page;
              });
            },
            controller: _pageController,
            children:  const [
              OnboardingWidget(asset: TaskTrekAssets.onboarding1Asset, title: TaskTrekStrings.onboarding1, detail: TaskTrekStrings.onboarding1D, ),
              OnboardingWidget(asset: TaskTrekAssets.onboarding2Asset, title: TaskTrekStrings.onboarding2, detail: TaskTrekStrings.onboarding2D, ),
              OnboardingWidget(asset: TaskTrekAssets.onboarding3Asset, title: TaskTrekStrings.onboarding3, detail: TaskTrekStrings.onboarding3D, ),
            ],
          ),
          Container(
              alignment: const Alignment(0,0.9),
              child: CustomPageIndicator(currentPage: currentPage))
        ]),
      ),
    );
  }
}
