// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  final String imageUrl =
      "https://scontent.fdac5-1.fna.fbcdn.net/v/t39.30808-6/209418768_4548362268529084_9115193603764841283_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGQO23wshUUZNJh_XWWD2RKy7mesplTH_DLuZ6ymVMf8G9m90qMha8CFCJ17_z_c0ktD9D_T1gjMn3_VyundTRt&_nc_ohc=h9gAX_HK-y4AX_yvbZ5&tn=9EjjDnIlN_SoAeT4&_nc_ht=scontent.fdac5-1.fna&oh=00_AT8udWC9mZXc7PBk84Ot1Jg559LXjrPmU75cDtRYb_wx2w&oe=62B5D1AC";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(0),
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.all(0),
              accountName: Text('Farhan Uddin Bhuiyan'),
              accountEmail: Text('farhan17p@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
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
    );
  }
}
