import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/utilities/constants.dart';

class OffersSwiper extends StatefulWidget {
  const OffersSwiper({super.key});

  @override
  State<OffersSwiper> createState() => _OffersSwiperState();
}

class _OffersSwiperState extends State<OffersSwiper> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Swiper(
      autoplay: true,
      layout: SwiperLayout.CUSTOM,
      customLayoutOption: CustomLayoutOption(startIndex: -1, stateCount: 3)
          .addRotate([-0.0 / 180, 0.0, 0.0 / 180]).addTranslate([
        const Offset(-370.0, -40.0),
        const Offset(0.0, 0.0),
        const Offset(335.0, -0.0)
      ]),
      itemWidth: width * 0.8,
      itemHeight: height * 0.18,
      itemBuilder: (context, index) {
        return new Container(
          height: height * 0.18,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('images/Charcoal-1.png'),
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  20.0,
                ),
              ),
              color: Colors.black.withOpacity(0.5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '25% Discount',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'For Every Bag of Charcoal',
                  style: GoogleFonts.roboto(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  style: greenButtonStyle.copyWith(
                    padding: const WidgetStatePropertyAll(
                      EdgeInsets.all(
                        10,
                      ),
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Learn More',
                  ),
                ),
              ],
            ),
          ),
        );
      },
      pagination: const SwiperPagination(
        alignment: Alignment.topCenter,
        builder: SwiperPagination.dots,
      ),
      itemCount: 5,
    );
  }
}
