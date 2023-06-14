import 'package:flutter/material.dart';
import 'package:flutter_first/utils/common_methods.dart';

class CommonNavigationDrawer extends StatelessWidget {
  const CommonNavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Text(
              'Navigation Drawer',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('My Profile'),
            onTap: () {
              Navigator.pop(context);
              showToastMessage("My Profile");
            },
          ),
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('My course'),
            onTap: () {
              Navigator.pop(context);
              showToastMessage("My course");
            },
          ),
          ListTile(
            leading: const Icon(Icons.workspace_premium),
            title: const Text('Go premium'),
            onTap: () {
              showToastMessage("Go permium");
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.video_label),
            title: const Text('Saved videos'),
            onTap: () {
              Navigator.pop(context);
              showToastMessage("Saved videos");
            },
          ),
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text('Edit Profile'),
            onTap: () {
              showToastMessage("Edit Profile");
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
