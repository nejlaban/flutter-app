import 'package:flutter/material.dart';
import 'package:flutter_app/categoriesBloc/categories_bloc.dart';

import './screens/category_item_screen.dart';
import './screens/profile_screen.dart';
import './screens/category_items_screen.dart';
import './screens/reservations_screen.dart';
import './screens/employees_screen.dart';
import './screens/HomePage.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        bloc: CategoriesBloc(),
        child: MaterialApp(
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
                HomePage(),
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
                  HomePage(),
            );
          },
        ));
  }
}
