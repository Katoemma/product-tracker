import 'package:flutter/material.dart';
import 'package:mobile_app/components/home/cards.dart';

class PopularItemsCards extends StatefulWidget {
  const PopularItemsCards({super.key});

  @override
  State<PopularItemsCards> createState() => _PopularItemsCardsState();
}

class _PopularItemsCardsState extends State<PopularItemsCards> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PopularProductSmallCard(),
          PopularProductSmallCard(),
          PopularProductSmallCard(),
          PopularProductSmallCard(),
          PopularProductSmallCard(),
          PopularProductSmallCard(),
          PopularProductSmallCard(),
        ],
      ),
    );
  }
}
