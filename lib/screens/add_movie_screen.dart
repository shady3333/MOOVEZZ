import 'package:flutter/material.dart';
import 'package:moovezz/models/movie.dart';
import 'package:moovezz/models/movie_data.dart';
import 'package:provider/provider.dart';

class AddMovieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newMovieTitle = "";

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Movie',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.orange,
              ),
            ),
            TextField(
              autofocus: true,
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newMovieTitle = newText;
              },
            ),
            TextButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange)),
              onPressed: () {
                Provider.of<MovieData>(context).addMovie(newMovieTitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
