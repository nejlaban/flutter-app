import 'package:flutter/material.dart';
import 'package:flutter_app/screens/employees_screen.dart';

class CategoryItemScreen extends StatelessWidget {
  static const routeName = '/category-item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Individualni objekat',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('OVDJE IDU SKRINOVI INDIVIDUALNIH OBJEKATA'),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(EmployeesScreen.routeName);
                },
                child: FittedBox(
                  child: Text('Uposlenici'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
