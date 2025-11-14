import 'package:flutter/material.dart';
import 'package:flutter_widgets/core/constants/app_textstyles.dart';
import 'package:go_router/go_router.dart';

Row registertxt(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('Create An Account',style: AppTextstyles.title,),
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
