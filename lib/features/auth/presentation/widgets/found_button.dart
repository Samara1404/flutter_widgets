import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FoundButton extends StatelessWidget {
   final String text;
  final VoidCallback? onPressed;
  const FoundButton({
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
          backgroundColor: Colors.yellow,
          foregroundColor: Colors.black87,
          minimumSize: Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),

        onPressed: () {
          context.go('/');
        },
        child: Text(
          'Табылды',
          style: TextStyle(
            fontSize: 16,
            
          ),
      ),),
    );
  }
}