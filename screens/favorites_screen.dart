import 'package:flutter/material.dart';

import '../models/art.dart';
import '../widgets/art_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Artwork> favoriteArtworks;
  const FavoritesScreen(this.favoriteArtworks, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (favoriteArtworks.isEmpty) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            opacity: 0.8,
            fit: BoxFit.cover,
            image: AssetImage('assets/images/van_gogh.webp'),
          ),
        ),
        child: const Center(
          child: Text('Selected artworks will be displayed here', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

        ),
      );
    } else {
      return Container(decoration: BoxDecoration(
      color: Colors.black,
      image: DecorationImage(
      opacity: 0.8,
      fit: BoxFit.cover,
          image: AssetImage('assets/images/van_gogh.webp'),
    ),),
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return ArtItem(
              id: favoriteArtworks[index].id,
              title: favoriteArtworks[index].title,
              imageUrl: favoriteArtworks[index].imageUrl,
              year: favoriteArtworks[index].year,
              region: favoriteArtworks[index].region,
              media: favoriteArtworks[index].media,
            );
          },
          itemCount: favoriteArtworks.length,
        ),
      );
    }
  }
}
