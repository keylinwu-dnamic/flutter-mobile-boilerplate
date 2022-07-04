import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  final double? value;

  const LoadingIndicator({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: CircularProgressIndicator(
          value: value,
          semanticsLabel: 'Linear progress indicator',
        ),
      ),
    );
  }
}
