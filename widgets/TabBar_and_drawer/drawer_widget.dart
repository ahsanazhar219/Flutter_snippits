import 'package:flutter/material.dart';
class CDrawer extends StatelessWidget {
  const CDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [

          const UserAccountsDrawerHeader(
            accountName: Text(
              'Ahsan Azhar',
              style: TextStyle(fontSize: 25),
            ),
            accountEmail: Text('ahsanazharx@gmail.com'),
            decoration: BoxDecoration(color: Colors.blueAccent),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Text('Picture'),
            ),
            // otherAccountsPictures: [],
          ),
          //List tile will shown in drawer.
          ListTile(

            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(

            leading: Icon(Icons.account_box_outlined),
            title: Text('About'),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
