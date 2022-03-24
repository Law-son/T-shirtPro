import 'package:flutter/material.dart';
import 'package:sampleproject/main.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _home() {
      Navigator.popAndPushNamed(context, "/home");
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Account", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          const ListTile(
            title: Text(
              'User name',
              style: TextStyle(fontSize: 25),
            ),
            tileColor: Colors.amber,
            subtitle: Text(
              'user@mail.com',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          const ListTile(
            title: Text(
              'My Account Details',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
            title: Text(
              'Orders',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.black,
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.pending_actions,
              color: Colors.black,
            ),
            title: Text(
              'Pending Reviews',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.black,
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.favorite_outline,
              color: Colors.black,
            ),
            title: Text(
              'Saved Items',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.black,
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.timelapse_outlined,
              color: Colors.black,
            ),
            title: Text(
              'Recently Viewed',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.black,
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.star_border_outlined,
              color: Colors.black,
            ),
            title: Text(
              'Prime Membership',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.black,
            ),
          ),
          const ListTile(
            title: Text(
              'My Settings',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
          const ListTile(
            title: Text(
              'Details',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.black,
            ),
          ),
          const ListTile(
            title: Text(
              'Address book',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.black,
            ),
          ),
          const ListTile(
            title: Text(
              'Change password',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.black,
            ),
          ),
          ListTile(
            title: TextButton(
                onPressed: () {},
                child: const Text(
                  'Log Out',
                  style: TextStyle(fontSize: 25),
                )),
            onTap: _home,
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBarFb1(),
    );
  }
}
