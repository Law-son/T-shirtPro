import 'package:flutter/material.dart';

class MySideMenu extends StatelessWidget {
  const MySideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _home() {
      Navigator.popAndPushNamed(context, "/home");
    }

    void _cart() {
      Navigator.popAndPushNamed(context, "/cart");
    }

    void _account() {
      Navigator.popAndPushNamed(context, "/account");
    }

    void _devinfo() {
      Navigator.popAndPushNamed(context, "/devinfo");
    }

    const drawerHeader = UserAccountsDrawerHeader(
      accountName: Text(
        'User Name',
        style: TextStyle(fontSize: 20),
      ),
      accountEmail: Text(
        'user@mail.com',
        style: TextStyle(fontSize: 20),
      ),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(Icons.person, size: 42.0),
      ),
    );
    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
          leading: const Icon(
            Icons.home,
            color: Colors.amber,
          ),
          title: const Text(
            'Home',
            style: TextStyle(fontSize: 22),
          ),
          onTap: _home,
        ),
        ListTile(
          leading: const Icon(
            Icons.shopping_cart,
            color: Colors.amber,
          ),
          title: const Text(
            'Cart',
            style: TextStyle(fontSize: 22),
          ),
          onTap: _cart,
        ),
        ListTile(
          leading: const Icon(
            Icons.person,
            color: Colors.amber,
          ),
          title: const Text(
            'Account',
            style: TextStyle(fontSize: 22),
          ),
          onTap: _account,
        ),
        ListTile(
          leading: const Icon(
            Icons.help,
            color: Colors.amber,
          ),
          title: const Text(
            'About Developer',
            style: TextStyle(fontSize: 22),
          ),
          onTap: _devinfo,
        ),
        ListTile(
          leading: TextButton(
              onPressed: () {},
              child: const Text(
                'Log Out',
                style: TextStyle(fontSize: 25),
              )),
          onTap: _home,
        ),
      ],
    );
    return Drawer(
      child: drawerItems,
    );
  }
}
