import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  String imageURL =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4yPm7xXWr5zkytQnsTq4c5ON7fyiSuELZLg&usqp=CAU';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.purple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text('Priyanka Khandelwal'),
                accountEmail: Text('test@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageURL),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
                size: 40,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
                size: 40,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
                size: 40,
              ),
              title: Text(
                'Email',
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
