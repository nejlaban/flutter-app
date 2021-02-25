import 'package:flutter/material.dart';

import '../widgets/bottom_navigation_bar.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
