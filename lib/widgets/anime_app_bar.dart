import 'package:anime_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AnimeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AnimeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  // Add search functionality here
                },
              ),
            ],
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                // Add back navigation functionality here
              },
            ),
            backgroundColor: Colors.transparent,
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                var top = constraints.biggest.height;
                return FlexibleSpaceBar(
                  title: AnimatedOpacity(
                    opacity: top <= kToolbarHeight ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 300),
                    child: const Text('Anime App'),
                  ),
                  background: Container(
                    color: AppThemes.bgColor,
                  ),
                );
              },
            ),
          ),
          // Add other slivers here if needed
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
