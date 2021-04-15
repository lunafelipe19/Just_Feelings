import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:just_feelings/utils/tweets.dart';
import 'package:just_feelings/utils/constants.dart';
import 'side_drawer_screen.dart';

class FeedScreen extends StatelessWidget {
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
      body: listOfTweets(),
      floatingActionButton: FloatingActionButton(
        child: Icon(FontAwesomeIcons.pen),
        onPressed: () {},
        backgroundColor: kPrimaryColor,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildBottomIconButton(Icons.home, kPrimaryColor),
            buildBottomIconButton(Icons.search, Colors.black45),
            buildBottomIconButton(Icons.notifications, Colors.black45),
            buildBottomIconButton(Icons.mail_outline, Colors.black45),
          ],
        ),
      ),
    );
  }
  Widget buildBottomIconButton(IconData icon, Color color) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: () {},
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
}
