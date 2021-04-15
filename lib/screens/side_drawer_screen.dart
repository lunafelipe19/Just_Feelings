import 'package:flutter/material.dart';
import 'package:just_feelings/utils/constants.dart';

import 'feed_screen.dart';
import 'login_screen.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/avatar.jpg'),
                    radius: 50,
                  ),
                  Text('Felipe Luna', style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.bold, fontSize: 20, color: kPrimaryFontColor),)
                ],
              ),
            ),
            decoration: BoxDecoration(
              borderRadius:BorderRadius.horizontal(left: Radius.circular(33), right: Radius.circular(35)),
              color: kPrimaryColor,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: kPrimaryFontColor),
            title: Text('Home'),
            onTap: () => {Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => new FeedScreen()),
                    (Route<dynamic> route) => false)},
          ),

          ListTile(
            leading: Icon(Icons.account_circle, color: kPrimaryFontColor),
            title: Text('Perfil'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app, color: kPrimaryFontColor),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => LoginScreen()),
            (Route<dynamic> route) => false)},
          ),
        ],
      ),
    );
  }
}