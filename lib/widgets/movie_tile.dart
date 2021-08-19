import 'package:flutter/material.dart';
import 'package:moovezz/widgets/movie_list.dart';

class MovieTile extends StatelessWidget {
  final bool isChecked;
  final String movieTitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  MovieTile(
      {required this.isChecked,
      required this.movieTitle,
      required this.checkboxCallback,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback(),
      title: Text(
        movieTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback(),
      ),
    );
  }
}
