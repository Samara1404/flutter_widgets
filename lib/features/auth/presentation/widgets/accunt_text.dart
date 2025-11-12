
  import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Row accaunt_text(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('I Already Have an Account'),
              SizedBox(width: 5),
              GestureDetector(
                onTap: () => context.go('/login'),
                child: Text(
                  'Login',
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
