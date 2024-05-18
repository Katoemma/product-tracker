import 'package:flutter/material.dart';

class MySearchBarWidget extends StatefulWidget {
  const MySearchBarWidget({super.key});

  @override
  State<MySearchBarWidget> createState() => _MySearchBarWidgetState();
}

class _MySearchBarWidgetState extends State<MySearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: SearchBar(
        leading: const Icon(Icons.search_rounded),
        hintText: 'Search for a product',
        hintStyle: const WidgetStatePropertyAll(
          TextStyle(color: Colors.grey),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        elevation: const WidgetStatePropertyAll(0.0),
        trailing: <Widget>[
          IconButton(
            icon: const Icon(Icons.tune_rounded),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
