import 'package:flutter/material.dart';

class CustomMessage extends StatelessWidget {
  final String message;

  const CustomMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(message);
  }
}
