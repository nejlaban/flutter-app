import 'package:flutter/material.dart';

import '../widgets/bottom_navigation_bar.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Moj profil',
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RawMaterialButton(
            onPressed: () {},
            elevation: 2.0,
            fillColor: Colors.white,
            child: Icon(
              Icons.photo_camera,
              size: 60.0,
            ),
            padding: EdgeInsets.all(15.0),
            shape: CircleBorder(),
          ),
          SizedBox(
            height: 30,
          ),
          FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            padding: EdgeInsets.all(30.0),
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(50.0)),
            onPressed: () {},
            child: Text(
              "Uredi profil",
              style: TextStyle(fontSize: 24.0),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            padding: EdgeInsets.all(30.0),
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(50.0)),
            onPressed: () {},
            child: Text(
              "Rezervacije",
              style: TextStyle(fontSize: 24.0),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text(
                'Odjavite se',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
