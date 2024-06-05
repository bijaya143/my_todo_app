import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: 'Manage your Todos',
        style: TextStyle(fontSize: 30, color: Colors.black),
      ),
    );
  }
}
