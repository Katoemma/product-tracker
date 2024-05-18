import 'package:flutter/material.dart';
import 'package:mobile_app/components/home/cards.dart';

class MostInterestedCards extends StatefulWidget {
  const MostInterestedCards({super.key});

  @override
  State<MostInterestedCards> createState() => _MostInterestedCardsState();
}

class _MostInterestedCardsState extends State<MostInterestedCards> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ProductSmallCard(),
          ProductSmallCard(),
          ProductSmallCard(),
          ProductSmallCard(),
        ],
      ),
    );
  }
}
