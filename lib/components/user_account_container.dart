import 'package:flutter/material.dart';

class UserContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Image.asset(
        'assets/images/user.jpg',
        width: 50,
      ),
    );
  }
}
