
import 'package:flutter/material.dart';
import 'package:flutter_widgets/features/auth/presentation/widgets/custom_button.dart';
import 'package:flutter_widgets/features/auth/presentation/widgets/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            CustomButton(onPressed: () { 

             }, text: 'Enter', 
             

            ),
            
          ],
        ),
      ),
    );
  }
}
