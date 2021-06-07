import 'package:flutter/material.dart';
import 'package:getflix/models/movie.dart';
import 'package:getflix/screens/information/information.dart';

class ListOfBanner extends StatelessWidget {
  final List<Movie> movies;

  ListOfBanner(this.movies);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 145,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: builder,
        itemCount: this.movies.length,
      ),
    );
  }

  Widget builder(BuildContext context, int index) {
    Movie movie = this.movies.elementAt(index);
    return InkWell(
      child: Image.asset(
        "assets/images/${movie.photo}.jpg",
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext_) {
              return Information(movie);
            },
          ),
        );
      },
    );
  }
}