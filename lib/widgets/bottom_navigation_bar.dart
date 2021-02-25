import 'package:flutter/material.dart';

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
          icon: Icon(
            Icons.search,
          ),
          label: 'Pretraži',
        ),
        BottomNavigationBarItem(
          backgroundColor: Theme.of(
            context,
          ).primaryColor,
          icon: Icon(
            Icons.calendar_today_outlined,
          ),
          label: 'Rezervacije',
        ),
        BottomNavigationBarItem(
          backgroundColor: Theme.of(
            context,
          ).primaryColor,
          icon: Icon(
            Icons.account_circle_outlined,
          ),
          label: 'Profil',
        ),
      ],
    );
  }
}
