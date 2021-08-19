import 'package:flutter/foundation.dart';
import 'package:moovezz/models/movie.dart';
import 'dart:collection';

class MovieData extends ChangeNotifier {
  List<Movie> _movie = [
    Movie(name: 'ROCKY HANDSOME'),
    Movie(name: 'FORCE'),
    Movie(name: 'MADRAS CAFE'),
    Movie(name: 'COMMANDO'),
    Movie(name: 'DHOOM'),
    Movie(name: 'RAMBO'),
    Movie(name: 'BAAGHI'),
    Movie(name: 'RUN'),
    Movie(name: 'F&F'),
    Movie(name: 'GHOST'),
  ];

  UnmodifiableListView<Movie> get movies {
    return UnmodifiableListView(_movie);
  }

  int get movieCount {
    return _movie.length;
  }

  void addMovie(String newmovieTitle) {
    final movie = Movie(name: newmovieTitle);
    _movie.add(movie);
    notifyListeners();
  }

  void updateMovie(Movie movie) {
    movie.toggleDone();
    notifyListeners();
  }

  void deleteMovie(Movie movie) {
    _movie.remove(movie);
    notifyListeners();
  }
}
