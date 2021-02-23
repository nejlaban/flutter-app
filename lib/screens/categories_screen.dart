import 'package:flutter/material.dart';

import './category_items_screen.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kategorije',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Ovdje ide ListView kategorija',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.star,
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(
            CategoryItemsScreen.routeName,
          );
        },
      ),
    );
  }
}
