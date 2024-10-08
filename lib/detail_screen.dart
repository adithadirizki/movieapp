import 'package:flutter/material.dart';
import 'package:movieapp/component/detail_item_movie.dart';
import 'package:movieapp/component/poster_item_movie.dart';
import 'package:movieapp/model/movie.dart';

class DetailScreen extends StatelessWidget {
  final Movie movie;

  const DetailScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (builder, constraints) {
            if (constraints.maxWidth <= 600) {
              return Flex(
                direction: Axis.vertical,
                children: [
                  Stack(
                    children: [
                      PosterItemMovie(movie: movie),
                      const SafeArea(child: BackButton()),
                    ],
                  ),
                  DetailItemMovie(movie: movie),
                ],
              );
            } else if (constraints.maxWidth <= 1200) {
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Flex(
                  direction: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          PosterItemMovie(movie: movie),
                          const SafeArea(child: BackButton()),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 2,
                      child: DetailItemMovie(movie: movie),
                    ),
                  ],
                ),
              );
            } else {
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Flex(
                  direction: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          PosterItemMovie(movie: movie),
                          const SafeArea(child: BackButton()),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 3,
                      child: DetailItemMovie(movie: movie),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
