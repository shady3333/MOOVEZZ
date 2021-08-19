class Movie {
  final String name;
  bool isDone;

  Movie({required this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
