import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Row accounttxt(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('Create An Account'),
      SizedBox(width: 5),
      GestureDetector(
        onTap: () => context.go('/register'),
        child: Text(
          'Sign Up',
          style: TextStyle(
            color: Colors.blue,
            decoration: TextDecoration.underline,
            decorationColor: Colors.blue,
          ),
        ),
      ),
    ],
  );
}
