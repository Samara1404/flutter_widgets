import 'package:flutter/material.dart';
import 'package:flutter_widgets/features/auth/presentation/widgets/accunt_text.dart';
import 'package:flutter_widgets/features/auth/presentation/widgets/custom_button.dart';
import 'package:flutter_widgets/features/auth/presentation/widgets/custom_textfield.dart';
import 'package:flutter_widgets/features/auth/presentation/widgets/google_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
            SizedBox(height: 20),
            CustomButton(onPressed: () {}, text: 'Create account'),
            SizedBox(height: 30),
            Center(child: Text('- OR Continue with -')),
            SizedBox(height: 30),
            google_button(),
            SizedBox(height: 30),
            accaunt_text(context),
          ],
        ),
      ),
    );
  }



}