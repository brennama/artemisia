enum Media {
  painting,
  sculpture,
  print,
}

enum Region {
  europe,
  asia,
  americas,
}

class Artwork {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> details;
  final List<String> summary;
  final int year;
  final Media media;
  final Region region;
  final bool isFemaleArtist;
  final bool isAsianArt;
  final bool isModernArt;
  final bool isPainting;

  const Artwork({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.details,
    required this.summary,
    required this.year,
    required this.media,
    required this.region,
    required this.isFemaleArtist,
    required this.isAsianArt,
    required this.isModernArt,
    required this.isPainting,
  });
}
