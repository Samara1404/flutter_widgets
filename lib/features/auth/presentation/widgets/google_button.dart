import 'package:flutter/material.dart';

class google_button extends StatelessWidget {
  const google_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {},
          child: Image.asset('assets/icons/icon1.png'),
        ),
        SizedBox(width: 30),
        ElevatedButton(
          onPressed: () {},
          child: Image.asset('assets/icons/icon2.png'),
        ),
      ],
    );
  }
}