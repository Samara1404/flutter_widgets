import 'package:flutter/material.dart';
import 'package:flutter_widgets/core/constants/app_textstyles.dart';
import 'package:flutter_widgets/features/auth/presentation/widgets/custom_button.dart';
import 'package:flutter_widgets/features/auth/presentation/widgets/custom_textfield.dart';
import 'package:go_router/go_router.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Forgot\nPassword',
                      style: AppTextstyles.title
                    ),
                  ),
                  SizedBox(height: 200),
                  CustomTextfield(
                    label: 'email',
                    hint: 'enter your email',
                    controller: TextEditingController(),
                    prefixIcon: Icons.mail,
                  ),
                  SizedBox(height: 20),
                  CustomButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            '* We will send you a message to set or reset your new password',
                          ),
                        ),
                      );
                      context.go('/login');
                    },
                    text: 'Submit',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
