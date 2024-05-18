import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductSmallCard extends StatefulWidget {
  const ProductSmallCard({super.key});

  @override
  State<ProductSmallCard> createState() => _ProductSmallCardState();
}

class _ProductSmallCardState extends State<ProductSmallCard> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'images/sack.png',
            fit: BoxFit.fill,
            height: height * 0.2,
            width: width * 0.4,
          ),
          const SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Monster plus',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      '50 kgs per sack',
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.start,
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  'UGX 100,000',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PopularProductSmallCard extends StatefulWidget {
  const PopularProductSmallCard({super.key});

  @override
  State<PopularProductSmallCard> createState() =>
      _PopularProductSmallCardState();
}

class _PopularProductSmallCardState extends State<PopularProductSmallCard> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'images/sack-2.png',
            fit: BoxFit.fill,
            height: height * 0.1,
            width: width * 0.2,
          ),
          const SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Monster Premium',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      '50 kgs per sack',
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.start,
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  'UGX 100,000',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
