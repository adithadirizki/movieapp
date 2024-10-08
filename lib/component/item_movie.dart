import 'package:flutter/material.dart';
import 'package:movieapp/detail_screen.dart';
import 'package:movieapp/model/movie.dart';

class ItemMovie extends StatelessWidget {
  final Movie movie;

  const ItemMovie({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            child: Image.network(
              movie.posterUrl,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.black, Colors.black12],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  child: Text(
                    movie.title,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (builder) => DetailScreen(movie: movie),
                      ),
                    );
                  },
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.star, size: 16, color: Colors.amberAccent),
                    const SizedBox(width: 5),
                    Text(
                      movie.rating.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
