import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go('/login'),
      child: Image.asset('assets/images/logo.png', width: 250, height: 250),
    );
  }
  
}