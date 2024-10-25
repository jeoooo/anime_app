// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anime_app/widgets/image_card.dart';
import 'package:flutter/material.dart';

class AnimeCategories extends StatelessWidget {
  final String categoryName;

  const AnimeCategories({
    super.key,
    this.categoryName = "Top Anime",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                categoryName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {
                  // Add your onPressed code here!
                },
                child: Text('See All'),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              AnimeImageCard(
                imageUrl:
                    'https://cdn.myanimelist.net/images/anime/1441/122795l.jpg',
                rating: '0.0',
                episodeNumber: '0.0',
                size: AnimeImageCardSize.medium,
              ),
              AnimeImageCard(
                imageUrl:
                    'https://cdn.myanimelist.net/images/anime/1441/122795l.jpg',
                rating: '0.0',
                episodeNumber: '0.0',
                size: AnimeImageCardSize.medium,
              ),
              AnimeImageCard(
                imageUrl:
                    'https://cdn.myanimelist.net/images/anime/1441/122795l.jpg',
                rating: '0.0',
                episodeNumber: '0.0',
                size: AnimeImageCardSize.medium,
              ),
              AnimeImageCard(
                imageUrl:
                    'https://cdn.myanimelist.net/images/anime/1441/122795l.jpg',
                rating: '0.0',
                episodeNumber: '0.0',
                size: AnimeImageCardSize.medium,
              ),
              AnimeImageCard(
                imageUrl:
                    'https://cdn.myanimelist.net/images/anime/1441/122795l.jpg',
                rating: '0.0',
                episodeNumber: '0.0',
                size: AnimeImageCardSize.medium,
              ),
              AnimeImageCard(
                imageUrl:
                    'https://cdn.myanimelist.net/images/anime/1441/122795l.jpg',
                rating: '0.0',
                episodeNumber: '0.0',
                size: AnimeImageCardSize.medium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
