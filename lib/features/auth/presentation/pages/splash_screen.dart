import 'package:flutter/material.dart';
import 'package:flutter_widgets/core/constants/app_textstyles.dart';
import 'package:flutter_widgets/features/auth/presentation/widgets/logo_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LogoWidget(),
            SizedBox(height: 30),
            Text('Tap & Kg', style: AppTextstyles.title,),
          ],
        ),
      ),
        
      
    );
  }
}
