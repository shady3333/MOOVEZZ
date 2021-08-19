import 'package:flutter/material.dart';
import 'package:moovezz/widgets/movie_tile.dart';
import 'package:moovezz/models/movie_data.dart';
import 'package:provider/provider.dart';

class MovieList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MovieData>(
      builder: (context, movieData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final movie = movieData.movies[index];
            return MovieTile(
              movieTitle: movie.name,
              isChecked: movie.isDone,
              checkboxCallback: () {
                movieData.updateMovie(movie);
              },
              longPressCallback: () {
                movieData.deleteMovie(movie);
              },
            );
          },
          itemCount: movieData.movieCount,
        );
      },
    );
  }
}
