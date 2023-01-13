import 'package:flutter/material.dart';

import '../art_data.dart';

class ArtworkDetailScreen extends StatelessWidget {
  static const routeName = '/artwork-detail';

  final Function toggleFavorite;
  final Function isFavorite;

  const ArtworkDetailScreen(this.toggleFavorite, this.isFavorite, {Key? key})
      : super(key: key);

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0x44000000),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      height: 150,
      width: 400,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final artId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedArtwork = artworks.firstWhere((artwork) => artwork.id == artId);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color(0x44000000),
        title: Text(selectedArtwork.title),
      ),
      body: Container(decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          opacity: 0.8,
          fit: BoxFit.cover,
          image: AssetImage('assets/images/hoch.jpeg'),
        ),),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 108.0, left: 8.0, right: 8.0),
                child: SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Image.network(
                    selectedArtwork.imageUrl,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              buildSectionTitle(context, 'Details'),
              buildContainer(
                ListView.builder(
                  itemBuilder: (ctx, index) => Card(
                    color: Color(0x44000000),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 2,
                        horizontal: 2,
                      ),
                      child: Text(selectedArtwork.details[index], style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  itemCount: selectedArtwork.details.length,
                ),
              ),
              buildSectionTitle(context, 'Summary'),
              buildContainer(
                ListView.builder(
                  itemBuilder: (stx, index) => Column(
                    children: [
                      ListTile(
                        title: Text(
                          selectedArtwork.summary[index],
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const Divider(),
                    ],
                  ),
                  itemCount: selectedArtwork.summary.length,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          isFavorite(artId) ? Icons.favorite : Icons.favorite_border,
          color: Colors.pink,
        ),
        onPressed: () => toggleFavorite(artId),
      ),
    );
  }
}
