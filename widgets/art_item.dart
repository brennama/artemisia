import 'package:flutter/material.dart';
import 'package:meals_app/models/art.dart';

import '../screens/art_detail_screen.dart';

class ArtItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int year;
  final Media media;
  final Region region;

  const ArtItem({
    Key? key,
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.region,
    required this.media,
    required this.year,
  }) : super(key: key);

  String get mediaText {
    switch (media) {
      case Media.painting:
        return 'Painting';
      case Media.sculpture:
        return 'Sculpture';
      case Media.print:
        return 'Print';
      default:
        return 'Other';
    }
  }

  String get regionText {
    switch (region) {
      case Region.europe:
        return 'Europe';
      case Region.asia:
        return 'Asia';
      case Region.americas:
        return 'The Americas';
      default:
        return 'Other';
    }
  }

  void selectMeal(BuildContext context) {
    Navigator.of(context)
        .pushNamed(
      ArtworkDetailScreen.routeName,
      arguments: id,
    )
        .then((result) {
      if (result != null) {
        //removeItem(result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const Icon(Icons.calendar_month),
                      const SizedBox(width: 6),
                      Text('$year th century'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(Icons.brush),
                      const SizedBox(width: 6),
                      Text(mediaText),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(Icons.map_outlined),
                      const SizedBox(width: 6),
                      Text(regionText),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
