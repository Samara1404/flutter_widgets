import 'package:flutter/material.dart';
import 'package:flutter_widgets/core/constants/app_textstyles.dart';
import 'package:flutter_widgets/features/auth/presentation/widgets/custom_button.dart';
import 'package:flutter_widgets/features/auth/presentation/widgets/custom_textfield.dart';
import 'package:flutter_widgets/features/auth/presentation/widgets/google_button.dart';
import 'package:go_router/go_router.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
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
                        'Create an \naccount',

                        style: AppTextstyles.title,
                      ),
                    ),
                    SizedBox(height: 30),
                    CustomTextfield(
                      label: 'user name',
                      hint: 'email',
                      controller: TextEditingController(),
                      prefixIcon: Icons.email,
                    ),
                    SizedBox(height: 2),
                    CustomTextfield(
                      label: 'password',
                      hint: '**********',
                      prefixIcon: Icons.lock,
                      controller: TextEditingController(),
                      isPassword: true,
                    ),
                    SizedBox(height: 2),
                    CustomTextfield(
                      label: 'confirm password',
                      hint: '**********',
                      prefixIcon: Icons.lock,
                      controller: TextEditingController(),
                      isPassword: true,
                    ),
                    GestureDetector(
                      onTap: () => context.go('/home'),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Forgot Password?',
                              style: AppTextstyles.subtitle,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    CustomButton(onPressed: () {}, text: 'Create Account'),
                    SizedBox(height: 30),
                    Center(child: Text('- OR Continue with -')),
                    SizedBox(height: 30),
                    google_button(),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
