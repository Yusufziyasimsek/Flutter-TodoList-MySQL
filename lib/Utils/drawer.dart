import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key, required ListView child});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://media.licdn.com/dms/image/D4D03AQGcyfAm3CZQIA/profile-displayphoto-shrink_800_800/0/1679577384772?e=2147483647&v=beta&t=FiYXpdk0dIYUgTBk8BKwgM12WrDtXrAN4t8XN-yskOY"))),
                  ),
                  const Text("Mert Özoğul")
                ],
              )),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text('Ana Sayfa'),
            onTap: () {
              Navigator.pushNamed(context, "/");

              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.add_chart),
            title: const Text('Counter'),
            onTap: () {
              Navigator.pushNamed(context, "/counter");
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: const Text('Todo List'),
            onTap: () {
              Navigator.pushNamed(context, "/todolist");

              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.dataset),
            title: const Text('Todo List-DB'),
            onTap: () {
              Navigator.pushNamed(context, "/");

              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
