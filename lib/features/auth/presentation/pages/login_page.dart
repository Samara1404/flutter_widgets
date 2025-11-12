import 'package:flutter/material.dart';
import 'package:flutter_widgets/features/auth/presentation/widgets/accunt_text.dart';
import 'package:flutter_widgets/features/auth/presentation/widgets/custom_button.dart';
import 'package:flutter_widgets/features/auth/presentation/widgets/custom_textfield.dart';
import 'package:flutter_widgets/features/auth/presentation/widgets/google_button.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
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
              SizedBox(height: 8),
              GestureDetector(
                onTap: () => context.go('/forgot'),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              CustomButton(onPressed: () {}, text: 'Login'),
              SizedBox(height: 30),
              Center(child: Text('- OR Continue with -')),
              SizedBox(height: 30),
              google_button(),
              SizedBox(height: 30),
              accaunt_text(context),
            ],
          ),
        ),
      ),
    );
  }
}
