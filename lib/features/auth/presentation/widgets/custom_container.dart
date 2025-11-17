import 'package:flutter/material.dart';
import 'package:flutter_widgets/core/constants/app_textstyles.dart';

class CustomContainer extends StatelessWidget {
  final String iconPath;      
  final String title;         
  final String subtitle;   
  final Color color;          
  final double height;
  final double width;
  final double borderRadius;

  const CustomContainer({
    super.key,
    required this.iconPath,
    required this.title,
    required this.subtitle,
    this.color = Colors.blue,
    this.height = 176,
    this.width = 300,
    this.borderRadius = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 10,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Image.asset(iconPath),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AppTextstyles.medium),
                  Text(subtitle, style: AppTextstyles.medi),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
