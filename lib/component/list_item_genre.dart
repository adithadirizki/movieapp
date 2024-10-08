import 'package:flutter/material.dart';
import 'package:movieapp/component/item_genre.dart';

class ListItemGenre extends StatelessWidget {
  final List<String> genres;

  const ListItemGenre({super.key, required this.genres});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: genres.map((genre) => ItemGenre(genre: genre)).toList(),
      ),
    );
  }
}
