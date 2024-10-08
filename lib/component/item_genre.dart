import 'package:flutter/material.dart';

class ItemGenre extends StatelessWidget {
  final String genre;

  const ItemGenre({super.key, required this.genre});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(genre),
    );
  }
}
