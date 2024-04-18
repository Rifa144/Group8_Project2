import 'package:flutter/material.dart';
class DrawerLayoutWidget extends StatefulWidget {
  const DrawerLayoutWidget({super.key});

  @override
  _drawerLayoutState createState() => _drawerLayoutState();
}

class _drawerLayoutState extends State<DrawerLayoutWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Recruiting Group Project',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: const Text('Home Page'),
            onTap: () {
              Navigator.pushNamed(context, '/home-page');
            },
          ),
          ListTile(
            title: const Text('Create Post'),
            onTap: () {
              Navigator.pushNamed(context, '/create-post');
            },
          ),
          ListTile(
            title: const Text('Candidates'),
            onTap: () {
              Navigator.pushNamed(context, '/create-post');
            },
          ),
          ListTile(
            title: const Text('Job Listings'),
            onTap: () {
              Navigator.pushNamed(context, '/create-post');
            },
          ),
        ],
      ),
    );
  }
}