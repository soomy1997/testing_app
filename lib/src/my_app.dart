import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: _myDrawer(),
        appBar: AppBar(title: Text('My First App Title')),
        body: _myListView(),
      ),
    );
  }
  Widget _myListView() {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('item 1'),
          onTap: () {
            print('you clicked me!');
          },
        ),
        ListTile(
          title: Text('item 2'),
          onTap: () {
            print('you clicked me!');
          },
        ),
        ListTile(
          title: Text('item 3'),
          onTap: () {
            print('you clicked me!');
          },
        ),
        ListTile(
          title: Text('item 4'),
          onTap: () {
            print('you clicked me!');
          },
        ),
      ],
    );
  }

  Widget _myDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Menu 1'),
            onTap: () {
              print('you clicked!');
            },
          ),
          ListTile(
            title: Text('Menu 2'),
            onTap: () {
              print('you clicked!');
            },
          ),
          ListTile(
            title: Text('Menu 3'),
            onTap: () {
              print('you clicked!');
            },
          ),
          ListTile(
            title: Text('Menu 4'),
            onTap: () {
              print('you clicked!');
            },
          ),
        ],
      ),
    );
  }
}
