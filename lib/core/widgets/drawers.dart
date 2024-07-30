import 'package:flutter/material.dart';

Widget AppDrawer() {
  return Drawer(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
      topRight: Radius.circular(50),
      bottomRight: Radius.circular(50)),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
        padding: const EdgeInsets.only(left:8.0,top: 17),

          child: Row(
            children: [
              Icon(Icons.arrow_back_ios_new),
              Text("Back"),
            ],
          ),
        ),
        UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.person),
            ),
            decoration: BoxDecoration(
             color: Colors.white,

            ),
            accountName: Text(
              "Samsan",
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text("samsan@gmail.com",
                style: TextStyle(color: Colors.black)),
                
            
         ),
        ListTiles(text: "History", icon: Icon(Icons.history)),
        Divider(),
        ListTiles(text: "Complain", icon: Icon(Icons.warning_rounded)),
        Divider(),
        ListTiles(text: "Referral", icon: Icon(Icons.people)),
        Divider(),
        ListTiles(text: "About Us", icon: Icon(Icons.warning_rounded)),
        Divider(),
        ListTiles(text: "Settings", icon: Icon(Icons.settings)),
        Divider(),
        ListTiles(text: "Help and Support", icon: Icon(Icons.help_outlined)),
        Divider(),
        ListTiles(text: "Logout", icon: Icon(Icons.logout_rounded)),
        Spacer(),
      ]));
}

Widget ListTiles({required String text, required Icon icon}) {
  return ListTile(
    title: Text(text),
    onTap: () {},
    leading: icon,
  );
}
