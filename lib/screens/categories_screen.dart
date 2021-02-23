import 'package:flutter/material.dart';

import './category_items_screen.dart';

import 'package:flutter_app/dummy_category_data.dart';

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
          child: ListView(
        padding: const EdgeInsets.all(120),
        children: <Widget>[
          Container(
            height: 100,
            color: Colors.blue[600],
            child: const Center(
                child: Text(
              'Frizerski saloni',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            )),
          ),
          SizedBox(height: 30),
          Container(
            height: 100,
            color: Colors.blue[400],
            child: const Center(
                child: Text(
              'Kozmeticki saloni',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            )),
          ),
          SizedBox(height: 30),
          Container(
            height: 100,
            color: Colors.blue[200],
            child: const Center(
                child: Text(
              'Wellness',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            )),
          ),
          SizedBox(height: 30),
        ],
      )),
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
