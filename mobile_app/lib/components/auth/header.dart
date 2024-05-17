import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHeader extends StatefulWidget {
  const AuthHeader({super.key, required this.title1, required this.title2});

  final String title1;
  final String title2;

  @override
  State<AuthHeader> createState() => _AuthHeaderState();
}

class _AuthHeaderState extends State<AuthHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title1,
          style: GoogleFonts.roboto(
            fontSize: 38,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          widget.title2,
          style: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Theme.of(context).hintColor,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        )
      ],
    );
  }
}
