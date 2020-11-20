import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: ListTile(
              title: Text("Google Sheets"),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 2.0,
              color: Colors.black45,
            ),
          ),
          ListTile(
            leading: Icon(Icons.access_time_outlined),
            title: Text("Recent"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.people_alt_outlined),
            title: Text("Shared With Me"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text("Starred"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.download_done_rounded),
            title: Text("Offline Files"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text("Bin"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notifications"),
            onTap: () {},
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 2.0,
              width: 130.0,
              color: Colors.black45,
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.help_outline_rounded),
            title: Text("Help and Feedback"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.add_to_drive),
            title: Text("Google Drive"),
            onTap: () {},
          ),
        ],
      )),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _drawerKey.currentState.openDrawer();
                    },
                    child: Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Icon(Icons.menu)),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    width: 200,
                    child: TextField(
                      decoration: new InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 0, bottom: 11, top: 11, right: 15),
                          hintText: "Search Sheets"),
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                  ),
                  Icon(Icons.folder),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
