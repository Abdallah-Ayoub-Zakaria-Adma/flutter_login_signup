import 'package:flutter/material.dart';

class textforms extends StatelessWidget {
  final String? hintTexts;
  final Widget? suffixIcons;
  final bool obscureTexts;
  const textforms({
    super.key,
    required this.hintTexts,
    required this.suffixIcons,

    required this.obscureTexts,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureTexts,
      decoration: InputDecoration(
        hintText: hintTexts,
        hintStyle: TextStyle(fontSize: 13),
        suffixIcon: suffixIcons,
        border: UnderlineInputBorder(),
      ),
    );
  }
}
