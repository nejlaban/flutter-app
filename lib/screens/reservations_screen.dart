import 'package:flutter/material.dart';

import '../widgets/bottom_navigation_bar.dart';

class ReservationsScreen extends StatelessWidget {
  static const routeName = '/reservations';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Moje Rezervacije',
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.calendar_today_outlined,
            size: 100,
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            'Trenutno nemate nijednu rezervaciju.',
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 200,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text('Prijavite se da biste napravili rezervaciju.'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
