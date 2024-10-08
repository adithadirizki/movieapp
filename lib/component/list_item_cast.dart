import 'package:flutter/material.dart';
import 'package:movieapp/component/item_cast.dart';
import 'package:movieapp/model/movie.dart';

class ListItemCast extends StatelessWidget {
  final List<Cast> casts;

  const ListItemCast({super.key, required this.casts});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: casts.map((cast) => ItemCast(cast: cast)).toList(),
    );
  }
}
