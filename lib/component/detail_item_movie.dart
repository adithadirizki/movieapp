import 'package:flutter/material.dart';
import 'package:movieapp/component/favorite_button.dart';
import 'package:movieapp/component/list_item_cast.dart';
import 'package:movieapp/component/list_item_genre.dart';
import 'package:movieapp/model/movie.dart';

class DetailItemMovie extends StatelessWidget {
  final Movie movie;

  const DetailItemMovie({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  movie.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const FavoriteButton(),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                size: 16,
                color: Colors.amberAccent,
              ),
              const SizedBox(width: 5),
              Text(movie.rating.toString()),
              const SizedBox(width: 5),
              const Text('|'),
              const SizedBox(width: 5),
              Text('${movie.duration}min'),
            ],
          ),
          const SizedBox(height: 10),
          ListItemGenre(genres: movie.genre),
          const SizedBox(height: 10),
          Column(
            children: [
              Row(
                children: [
                  const Expanded(child: Text('Release')),
                  Expanded(
                    flex: 3,
                    child: Text(': ${movie.releaseYear}'),
                  ),
                ],
              ),
              Row(
                children: [
                  const Expanded(child: Text('Director')),
                  Expanded(
                    flex: 3,
                    child: Text(': ${movie.director}'),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(child: Text('Casts')),
                  Expanded(
                    flex: 3,
                    child: ListItemCast(casts: movie.cast),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Description',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(movie.description),
        ],
      ),
    );
  }
}
