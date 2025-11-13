import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LostButton extends StatelessWidget {
   final String text;
  final VoidCallback? onPressed;
  const LostButton({
    super.key,
     required this.onPressed,
    required this.text, 
     });
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 16),
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
          context.go('/');
        },
        child: Text(
          'Жоголду',
          style: TextStyle(
            fontSize: 16,
            
          ),
      ),),
    );
  }
}