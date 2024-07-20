import 'package:flutter/material.dart';
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
      body: Stack(children: [
        PageView(
          onPageChanged: (int page){
            setState(() {
              currentPage=page;
            });
          },
          controller: _pageController,
          children: [
            Container(color: Colors.white),
            Container(color: Colors.white,),
            Container(color: Colors.white),
          ],
        ),
        Container(
            alignment: Alignment(0,0.9),
            child: CustomPageIndicator(currentPage: currentPage))
      ]),
    );
  }
}
