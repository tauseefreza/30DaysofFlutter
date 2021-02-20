import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://pbs.twimg.com/profile_images/1272208346003587072/gcpHikg6_400x400.jpg";
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Tauseef Reza"),
                accountEmail: Text("mdtauseefreza@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              )),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.deepPurple,
            ),
            title: Text("Home",
                style: TextStyle(color: Colors.deepPurple, fontSize: 18)),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.deepPurple,
            ),
            title: Text("My Account",
                style: TextStyle(color: Colors.deepPurple, fontSize: 18)),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.heart_fill,
              color: Colors.deepPurple,
            ),
            title: Text("My Wishlist",
                style: TextStyle(color: Colors.deepPurple, fontSize: 18)),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.bag,
              color: Colors.deepPurple,
            ),
            title: Text("My Orders",
                style: TextStyle(color: Colors.deepPurple, fontSize: 18)),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.creditcard,
              color: Colors.deepPurple,
            ),
            title: Text("My Wallet",
                style: TextStyle(color: Colors.deepPurple, fontSize: 18)),
          )
        ],
      ),
    );
  }
}
