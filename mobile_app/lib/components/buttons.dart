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
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      padding: const EdgeInsets.all(24),
      child: TextButton(
        style: ButtonStyle(
          padding: const WidgetStatePropertyAll(EdgeInsets.all(18)),
          backgroundColor: const WidgetStatePropertyAll(primaryColor),
          foregroundColor: const WidgetStatePropertyAll(Colors.white),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
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
