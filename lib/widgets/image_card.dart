// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';

enum AnimeImageCardSize { small, medium, large }

class AnimeImageCard extends StatelessWidget {
  final String imageUrl;
  final dynamic rating;
  final dynamic episodeNumber;
  final AnimeImageCardSize size;

  const AnimeImageCard({
    super.key,
    this.imageUrl = 'https://cdn.myanimelist.net/images/anime/1441/122795l.jpg',
    this.rating = '0.0',
    this.episodeNumber = '0.0',
    this.size = AnimeImageCardSize.large,
  });

  @override
  Widget build(BuildContext context) {
    double width;
    double height;

    switch (size) {
      case AnimeImageCardSize.large:
        width = 186;
        height = 248;
        break;
      case AnimeImageCardSize.medium:
        width = 150;
        height = 200;
        break;
      case AnimeImageCardSize.small:
        width = 150;
        height = 112.5;
        break;
    }

    return Stack(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imageUrl,
              width: width,
              height: height,
              fit: BoxFit.fill,
            ),
          ),
        ),
        // ? Rating
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Positioned(
            top: 0,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.fromLTRB(10, 6, 10, 6),
              child: Text(
                rating, // must be a parameter
                style: Theme.of(context)
                    .textTheme
                    .labelSmall
                    ?.copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
        // ? Episode Number
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 6, 10, 6),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                episodeNumber, // must be a parameter
                style: Theme.of(context)
                    .textTheme
                    .labelSmall
                    ?.copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
