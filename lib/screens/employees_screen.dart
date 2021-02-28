import 'package:flutter/material.dart';

class EmployeesScreen extends StatelessWidget {
  static const routeName = '/employees';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Uposlenici i usluge',
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
            child: Column(
              children: [
                Text(
                  'Uposlenik 1',
                ),
                Text(
                  'Usluge/Cijene',
                ),
              ],
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
            child: Column(
              children: [
                Text(
                  'Uposlenik 2',
                ),
                Text(
                  'Usluge/Cijene',
                ),
              ],
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
            child: Column(
              children: [
                Text(
                  'Uposlenik 3',
                ),
                Text(
                  'Usluge/Cijene',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
