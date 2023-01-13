import 'package:flutter/material.dart';
import 'package:meals_app/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget buildListTile(
    String title,
    IconData icon,
    final VoidCallback tapHandler,
  ) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0x44000000),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.black,
        image: DecorationImage(
          opacity: 0.7,
          fit: BoxFit.cover,
          image: AssetImage('assets/images/gade_cloud.jpeg'),
        ),
      ),
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(42),
           // color: Theme.of(context).colorScheme.primary,
            child: Text('Artemisia',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          buildListTile('Art Categories', Icons.museum, () {
            Navigator.of(context).pushNamed('/');
          }),
          buildListTile('Filters', Icons.settings, () {
            Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
          }),
        ],
      ),
    );
  }
}
