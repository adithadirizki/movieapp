import 'package:flutter/material.dart';
import 'package:movieapp/model/movie.dart';

class ItemCast extends StatelessWidget {
  final Cast cast;

  const ItemCast({super.key, required this.cast});

  @override
  Widget build(BuildContext context) {
    return Text('• ${cast.name} - (${cast.role})');
  }
}
