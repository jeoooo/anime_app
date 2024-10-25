// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anime_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HeroImage extends StatelessWidget {
  final String imageUrl;
  final String heroTag;

  const HeroImage({
    super.key,
    required this.imageUrl,
    required this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Hero(
        tag: heroTag,
        child: Stack(
          children: [
            Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0x00181A20), // #181A20 with 0% opacity
                    Color(0xFF181A20), // #181A20 with 100% opacity
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Title',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: Colors.white),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Subtitle or additional content goes here.',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall
                          ?.copyWith(color: Colors.white),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            // Define the action when the button is pressed
                          },
                          icon: Icon(Icons.play_arrow),
                          label: Text(
                            'Play',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor:
                                AppThemes.primaryColor, // Text color
                          ),
                        ),
                        SizedBox(width: 8),
                        OutlinedButton.icon(
                          onPressed: () {
                            // Define the action when the button is pressed
                          },
                          icon: Icon(Icons.add, color: Colors.white),
                          label: Text(
                            'My List',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: Colors.white),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.white),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
