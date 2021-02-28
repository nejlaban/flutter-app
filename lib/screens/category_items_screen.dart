import 'package:flutter/material.dart';
import 'package:flutter_app/screens/category_item_screen.dart';

import '../widgets/bottom_navigation_bar.dart';

class CategoryItemsScreen extends StatelessWidget {
  static const routeName = '/category-items';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Container(
          margin: EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 10.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                20.0,
              ),
            ),
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Pretraži',
                        hintStyle: TextStyle(color: Colors.white),
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Mjesto?',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Vrijeme?',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 5,
            margin: EdgeInsets.all(
              20,
            ),
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
              20,
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
              20,
            ),
            child: Text(
              'Frizerski Salon 3',
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.location_on_outlined,
        ),
        onPressed: () {
          print(
            'Otvori lokacije na mapi',
          );
        },
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
