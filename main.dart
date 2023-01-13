import 'package:flutter/material.dart';
import 'package:meals_app/art_data.dart';
import 'package:meals_app/models/art.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/category_art_screen.dart';
import 'package:meals_app/screens/filters_screen.dart';
import 'package:meals_app/screens/art_detail_screen.dart';
import 'package:meals_app/screens/tabs_screen.dart';
import 'constants.dart';

import './screens/filters_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> filters = {
    'female': false,
    'asian': false,
    'modern': false,
    'painting': false,
  };

  List<Artwork> _availableArtworks = artworks;
  final List<Artwork> _favoriteArtworks = [];

  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      filters = filterData;

      _availableArtworks = artworks.where((meal) {
        if (filters['female']! && !meal.isFemaleArtist) {
          return false;
        }
        if (filters['asian']! && !meal.isAsianArt) {
          return false;
        }
        if (filters['modern']! && !meal.isModernArt) {
          return false;
        }
        if (filters['painting']! && !meal.isPainting) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  void _toggleFavorite(String artworkID) {
    final existingIndex =
        _favoriteArtworks.indexWhere((artwork) => artwork.id == artworkID);
    if (existingIndex >= 0) {
      setState(() {
        _favoriteArtworks.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteArtworks.add(
          artworks.firstWhere((artwork) => artwork.id == artworkID),
        );
      });
    }
  }

  bool _isArtworkFavorite(String id) {
    return _favoriteArtworks.any((artwork) => artwork.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Artemisia App',
      theme: ThemeData(
        canvasColor: const Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText2: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            headline6: const TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.indigo)
            .copyWith(secondary: Colors.white),
      ),
      //home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(_favoriteArtworks),
        ArtCategoryScreen.routeName: (ctx) =>
            ArtCategoryScreen(_availableArtworks),
        ArtworkDetailScreen.routeName: (ctx) =>
            ArtworkDetailScreen(_toggleFavorite, _isArtworkFavorite),
        FiltersScreen.routeName: (ctx) => FiltersScreen(filters, _setFilters),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        return MaterialPageRoute(
          builder: (ctx) => const CategoriesScreen(),
        );
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => const CategoriesScreen(),
        );
      },
    );
  }
}
