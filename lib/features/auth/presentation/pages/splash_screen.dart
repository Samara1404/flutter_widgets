import 'package:flutter/material.dart';
import 'package:flutter_widgets/features/auth/presentation/widgets/logo_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: LogoWidget(),
      ),
        
      
    );
  }
}
