import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final VoidCallback? onPressed;
  const CustomButton({
    super.key,
     required this.onPressed,
    required this.text, 
     });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          minimumSize: Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),

        onPressed: () {
          context.go('/register');
        },
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
      ),),
    );
  }
}
