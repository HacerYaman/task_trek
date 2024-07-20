import 'package:flutter/material.dart';
import 'package:task_trek/constants/colors.dart';

class CustomPageIndicator extends StatefulWidget {
  final int currentPage;

  const CustomPageIndicator({super.key, required this.currentPage});

  @override
  State<CustomPageIndicator> createState() => _CustomPageIndicatorState();
}

class _CustomPageIndicatorState extends State<CustomPageIndicator> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 0,
      right: 0,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(3, (index) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 300),
            margin: EdgeInsets.symmetric(horizontal: 4),
            height: 10,
            width: widget.currentPage == index ? 20 : 10,
            decoration: BoxDecoration(
              color: widget.currentPage == index ? TasktrekColors.primaryColor : Colors.grey,
              borderRadius: BorderRadius.circular(5),
            ),
          );
        }),
      ),
    );
  }
}
