import 'package:flutter/material.dart';

import './screens/category_item_screen.dart';
import './screens/profile_screen.dart';
import './screens/category_items_screen.dart';
import './screens/categories_screen.dart';
import './screens/reservations_screen.dart';
import './screens/employees_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rezervacije',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (
          context,
        ) =>
            CategoriesScreen(),
        CategoryItemsScreen.routeName: (
          context,
        ) =>
            CategoryItemsScreen(),
        ReservationsScreen.routeName: (
          context,
        ) =>
            ReservationsScreen(),
        ProfileScreen.routeName: (
          context,
        ) =>
            ProfileScreen(),
        CategoryItemScreen.routeName: (
          context,
        ) =>
            CategoryItemScreen(),
        EmployeesScreen.routeName: (
          context,
        ) =>
            EmployeesScreen(),
      },
      onUnknownRoute: (
        settings,
      ) {
        return MaterialPageRoute(
          builder: (
            ctx,
          ) =>
              CategoriesScreen(),
        );
      },
    );
  }
}
