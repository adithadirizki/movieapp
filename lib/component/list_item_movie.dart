import 'package:flutter/material.dart';
import 'package:movieapp/component/item_movie.dart';
import 'package:movieapp/model/movie.dart';

class ListItemMovie extends StatelessWidget {
  final int gridCount;
  final List<Movie> movies;

  const ListItemMovie({super.key, this.gridCount = 2, required this.movies});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: gridCount,
      childAspectRatio: 3 / 4,
      padding: const EdgeInsets.all(2),
      children: movies.map((movie) => ItemMovie(movie: movie)).toList(),
    );
  }
}
