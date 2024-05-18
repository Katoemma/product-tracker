import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/components/home/NavigationBar.dart';
import 'package:mobile_app/components/home/PromotionHeader.dart';
import 'package:mobile_app/components/home/Swipers.dart';
import 'package:mobile_app/components/home/userInfo.dart';
import 'package:mobile_app/widgets/SearchBar.dart';
import 'package:mobile_app/widgets/mostInterestedCards.dart';
import 'package:mobile_app/widgets/popularItems.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // User details widget
                const UserHeader(
                  username: 'Kato Emmanuel',
                  avatar: 'images/Charcoal-1.png',
                  notificationCount: 2,
                ),
                // Search bar widget
                const MySearchBarWidget(),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    'Special Offers',
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Swiper widget
                const OffersSwiper(),
                // Most interested items
                const PromotionHeader(header: 'Most Interested'),

                const MostInterestedCards(),

                const PromotionHeader(header: 'Popular'),

                const PopularItemsCards(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: () {},
        child: const Icon(
          Icons.qr_code_scanner,
          color: Colors.white,
        ), // Conditional theme color
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const NavigationBarWidget(),
    );
  }
}
