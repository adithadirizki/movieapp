import 'package:flutter/material.dart';
import 'package:movieapp/component/list_item_movie.dart';
import 'package:movieapp/model/movie.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return ListItemMovie(movies: movies);
          } else if (constraints.maxWidth <= 1200) {
            return ListItemMovie(movies: movies, gridCount: 4);
          } else {
            return ListItemMovie(movies: movies, gridCount: 6);
          }
        },
      ),
    );
  }
}
