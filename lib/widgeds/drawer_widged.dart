import 'package:flutter/material.dart';

class NewWidgetDrawer extends StatelessWidget {
  const NewWidgetDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Unal',
              style: TextStyle(fontSize: 25),
            ),
            accountEmail: Text('unalcanpolat@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Image.asset('images/unal.jpg'),
              ),
            ),
            // decoration: BoxDecoration(),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text(
                'Home Page',
                style: TextStyle(fontSize: 25),
              ),
              leading: Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text(
                'My Account',
                style: TextStyle(fontSize: 25),
              ),
              leading: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text(
                'My Orders',
                style: TextStyle(fontSize: 25),
              ),
              leading: Icon(
                Icons.shopping_basket,
                color: Colors.black,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text(
                'Categoris',
                style: TextStyle(fontSize: 25),
              ),
              leading: Icon(
                Icons.dashboard,
                color: Colors.black,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text(
                'Favorites',
                style: TextStyle(fontSize: 25),
              ),
              leading: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
            ),
          ),
          Divider(
            height: 10,
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text(
                'Settings',
                style: TextStyle(fontSize: 25),
              ),
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text(
                'About',
                style: TextStyle(fontSize: 25),
              ),
              leading: Icon(
                Icons.help,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
