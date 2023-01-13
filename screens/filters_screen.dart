import 'package:flutter/material.dart';
import 'package:meals_app/constants.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  final Function saveFilters;
  final Map<String, bool> currentFilters;

  const FiltersScreen(this.currentFilters, this.saveFilters, {Key? key})
      : super(key: key);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _femaleArtist = false;
  bool _painting = false;
  bool _modern = false;
  bool _asianArt = false;

  @override
  initState() {
    _femaleArtist = widget.currentFilters['female']!;
    _asianArt = widget.currentFilters['asian']!;
    _modern = widget.currentFilters['modern']!;
    _painting = widget.currentFilters['painting']!;
    super.initState();
  }

  Widget _buildSwitchListTile(
    String title,
    String description,
    bool currentValue,
    Function(bool) updateValue,
  ) {
    return SwitchListTile(
      title: Text(title,
          style: TextStyle(color: primaryBlack, fontSize: 25.0)),
      value: currentValue,
      subtitle: Text(
        description,
        style: TextStyle(color: primaryBlack, fontSize: 15.0),
      ),
      onChanged: updateValue,

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Color(0x44000000),
          title: const Text('Filter Artworks'), actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.save),
          onPressed: () {
            final selectedFilters = {
              'female': _femaleArtist,
              'asian': _asianArt,
              'modern': _modern,
              'painting': _painting,
            };
            widget.saveFilters(selectedFilters);
          },
        )

      ]),
      drawer: const MainDrawer(),
      body: Column(
        children: <Widget>[

          Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: new ColorFilter.mode(Colors.white.withOpacity(0.8), BlendMode.dstATop),
                    image: AssetImage('assets/images/monet.jpg'),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 50.0, right: 15.0,),
                  child: ListView(
            children: <Widget>[
                  _buildSwitchListTile(
                      'Female Artists', 'Only include female artists', _femaleArtist,
                      (newValue) {
                    setState(() {
                      _femaleArtist = newValue;
                    });
                  }),
                  _buildSwitchListTile('Asian Art',
                      'Only include asian art', _asianArt, (newValue) {
                    setState(() {
                      _asianArt = newValue;
                    });
                  }),
                  _buildSwitchListTile(
                      'Paintings', 'Only include paintings', _painting,
                      (newValue) {
                    setState(() {
                      _painting = newValue;
                    });
                  }),
                  _buildSwitchListTile('Modern Art', 'Only include modern art', _modern,
                      (newValue) {
                    setState(() {
                      _modern = newValue;
                    });
                  }),
            ],
          ),
                ),
              ))
        ],
      ),
    );
  }
}
