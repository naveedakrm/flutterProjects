import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  final imgUrl="https://avatars.githubusercontent.com/u/32924841?s=400&u=6719bba8b0507d3395a92707b000603e2e6e1851&v=4";
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Container(
        color: Colors.indigo,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                    accountName: Text("Naveed Akram"),
                  accountEmail: Text("naveedakram@live.com"),
                  //currentAccountPicture: Image.network(imgUrl),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imgUrl),
                  )
                  //Image.network(imgUrl),
                ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white),
              title: Text("Home",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white),
              title: Text("Profile",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white),
              title: Text("e-mail",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),

            Text("Item 1"),
            Text("Item 2"),
            Text("Item 3"),
            ],
        ),
      ),
    );
  }
}
