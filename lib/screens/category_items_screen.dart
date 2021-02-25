import 'package:flutter/material.dart';

import '../widgets/bottom_navigation_bar.dart';

class CategoryItemsScreen extends StatelessWidget {
  static const routeName = '/category-items';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ime Kategorije',
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: Text(
              'Frizerski Salon 1',
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                15,
              ),
            ),
            elevation: 5,
            margin: EdgeInsets.all(
              10,
            ),
            child: Text(
              'Frizerski Salon 2',
            ),
          ),
          Card(
            color: Theme.of(
              context,
            ).accentColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                15,
              ),
            ),
            elevation: 5,
            margin: EdgeInsets.all(
              10,
            ),
            child: Text(
              'Frizerski Salon 3',
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
