import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class GreenButton extends StatefulWidget {
  const GreenButton(
      {super.key, required this.labelText, required this.onPressed});

  final String labelText;
  final Function onPressed;

  @override
  State<GreenButton> createState() => _GreenButtonState();
}

class _GreenButtonState extends State<GreenButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        style: greenButtonStyle,
        onPressed: () {
          widget.onPressed();
        },
        child: Text(
          widget.labelText,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
