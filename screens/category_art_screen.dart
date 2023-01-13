import 'package:flutter/material.dart';

import '../models/art.dart';
import '../widgets/art_item.dart';

class ArtCategoryScreen extends StatefulWidget {
  static const routeName = '/art-categories';

  final List<Artwork> availableArtworks;

  const ArtCategoryScreen(this.availableArtworks, {Key? key}) : super(key: key);

  @override
  State<ArtCategoryScreen> createState() => _ArtCategoryScreenState();
}

class _ArtCategoryScreenState extends State<ArtCategoryScreen> {
  late String categoryTitle;
  late List<Artwork> displayedArtworks;
  var _loadedInitData = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context)?.settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'] ?? 'default';
      final categoryId = routeArgs['id'];
      displayedArtworks = widget.availableArtworks.where((artwork) {
        return artwork.categories.contains(categoryId);
      }).toList();
      _loadedInitData = true;
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color(0x44000000),
        title: Text(categoryTitle),
      ),
      body: Container(decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          opacity: 0.8,
          fit: BoxFit.cover,
          image: AssetImage('assets/images/tang.jpeg'),
        ),),
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return ArtItem(
              id: displayedArtworks[index].id,
              title: displayedArtworks[index].title,
              imageUrl: displayedArtworks[index].imageUrl,
              year: displayedArtworks[index].year,
              region: displayedArtworks[index].region,
              media: displayedArtworks[index].media,
            );
          },
          itemCount: displayedArtworks.length,
        ),
      ),
    );
  }
}
