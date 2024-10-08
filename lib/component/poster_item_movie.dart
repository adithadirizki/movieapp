import 'package:flutter/material.dart';
import 'package:movieapp/model/movie.dart';

class PosterItemMovie extends StatelessWidget {
  final Movie movie;

  const PosterItemMovie({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.5),
            spreadRadius: 5,
            blurRadius: 15,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(child: Image.network(movie.posterUrl)),
    );
  }
}
