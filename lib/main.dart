import 'package:flutter/material.dart';
import 'package:moovezz/screens/movie_screen.dart';
import 'package:moovezz/models/movie_data.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MovieData(),
      child: MaterialApp(
        home: MovieScreen(),
      ),
    );
  }
}
