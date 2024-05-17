import 'package:flutter/material.dart';

class CirCularImage extends StatefulWidget {
  const CirCularImage({super.key, required this.imgUrl});

  final String imgUrl;

  @override
  State<CirCularImage> createState() => _CirCularImageState();
}

class _CirCularImageState extends State<CirCularImage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Container(
      height: height * 0.55,
      width: width,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        widget.imgUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
