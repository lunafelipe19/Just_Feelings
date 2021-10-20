
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:just_feelings/screens/image_post_screen.dart';
import 'package:just_feelings/screens/login_screen.dart';
import 'package:just_feelings/screens/profile_screen.dart';
import 'package:just_feelings/utils/NewPageScreen.dart';
import 'package:just_feelings/utils/tweets.dart';
import 'package:just_feelings/utils/constants.dart';
import 'side_drawer_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  int _selectedIndex = 0;
  PageController pageController = PageController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  void onTapped(int index) {
    // switch (index) {
    //   case 0:
    //   Navigator.of(context).push(
    // MaterialPageRoute(builder: (context) => new FeedScreen()),
    // );
    //   break;
    //   case 1:
    // Navigator.of(context).push(
    // MaterialPageRoute(builder: (context) => new CameraScreen()),
    // );
    // break;
    //   case 2:
    // Navigator.of(context).push(
    // MaterialPageRoute(builder: (context) => new LoginScreen()),
    // );
    // break;
    //   case 3:
    // Navigator.of(context).push(
    // MaterialPageRoute(builder: (context) => new Profile()),
    // );
    // break;
    // }
    setState(() {
      _selectedIndex = index;
    });
    pageController.animateToPage(index, duration: Duration(milliseconds: 1), curve: Curves.bounceIn);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text('Home'),
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 40, right: 16),
          child: Align(
            alignment: Alignment.centerRight,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.jpg'),
            ),
          ),
        ),
        ),
      body: PageView(
        controller: pageController,
        children: [
          Container(
            child: listOfTweets(),
          ),
          Container(
            child: search(),
          ),
          Container(
            child: listOfNotifications(),
          ),
          Container(
            child: profile(),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(FontAwesomeIcons.camera),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => new CameraScreen()),
          );
        },
        backgroundColor: kPrimaryColor,
      ),
      bottomNavigationBar: AnimatedBuilder(
        animation: pageController,
        builder: (context, snapshot) {
          return BottomNavigationBar(
        items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Profile')],
        currentIndex: pageController?.page?.round() ?? 0,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kPrimaryFontColor,
        onTap: onTapped
        );
    }));
  }
  Widget buildBottomIconButton(IconData icon, Color color) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => new Profile()),
        );
      },
    );
  }

  Widget listOfTweets() {
    return Container(
      color: Colors.white,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return tweets[index];
        },
        separatorBuilder: (BuildContext context, int index) => Divider(
          height: 0,
        ),
        itemCount: tweets.length,
      ),
    );
  }

  Widget listOfNotifications() {
    return Container(
      color: Colors.white,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return tweets[index];
        },
        separatorBuilder: (BuildContext context, int index) => Divider(
          height: 0,
        ),
        itemCount: tweets.length,
      ),
    );
  }

  Widget search() {
    return Container(
      color: Colors.white,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return tweets[index];
        },
        separatorBuilder: (BuildContext context, int index) => Divider(
          height: 0,
        ),
        itemCount: tweets.length,
      ),
    );
  }

  Widget profile() {
    return Container(
      color: Colors.white,
      child: Profile()
      );
  }
}
