import 'package:flutter/material.dart';
import 'package:flutter_app/screens/reservations_screen.dart';

import '../screens/category_items_screen.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (
        context,
      ) {},
      backgroundColor: Theme.of(
        context,
      ).primaryColor,
      unselectedItemColor: Colors.white,
      selectedItemColor: Theme.of(
        context,
      ).accentColor,
      items: [
        BottomNavigationBarItem(
          backgroundColor: Theme.of(
            context,
          ).primaryColor,
          icon: FloatingActionButton(
            elevation: 0,
            onPressed: () {
              Navigator.of(
                context,
              ).pushNamed(
                CategoryItemsScreen.routeName,
              );
            },
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
            backgroundColor: Theme.of(
              context,
            ).primaryColor,
            heroTag: 'button1',
          ),
          label: 'Pretraži',
        ),
        BottomNavigationBarItem(
          backgroundColor: Theme.of(
            context,
          ).primaryColor,
          icon: FloatingActionButton(
            elevation: 0,
            onPressed: () {
              Navigator.of(
                context,
              ).pushNamed(
                ReservationsScreen.routeName,
              );
            },
            child: Icon(
              Icons.calendar_today_outlined,
              color: Colors.white,
            ),
            backgroundColor: Theme.of(
              context,
            ).primaryColor,
            heroTag: 'button2',
          ),
          label: 'Rezervacije',
        ),
        BottomNavigationBarItem(
          backgroundColor: Theme.of(
            context,
          ).primaryColor,
          icon: FloatingActionButton(
            elevation: 0,
            onPressed: () {},
            child: Icon(
              Icons.account_circle_outlined,
              color: Colors.white,
            ),
            backgroundColor: Theme.of(
              context,
            ).primaryColor,
            heroTag: 'button3',
          ),
          label: 'Profil',
        ),
      ],
    );
  }
}
