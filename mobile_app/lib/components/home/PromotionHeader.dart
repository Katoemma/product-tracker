import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PromotionHeader extends StatefulWidget {
  const PromotionHeader({super.key, required this.header});

  final String header;

  @override
  State<PromotionHeader> createState() => _PromotionHeaderState();
}

class _PromotionHeaderState extends State<PromotionHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Most Interested',
            style: GoogleFonts.roboto(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'View All',
              style: GoogleFonts.roboto(
                fontSize: 14,
                color: Colors.orange,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
