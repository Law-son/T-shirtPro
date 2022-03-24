import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Myinfo extends StatelessWidget {
  const Myinfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _gmail() async {
      const url = 'buabassahlawson@gmail.com';
      if (await canLaunch(url)) {
        await launch(
          url,
          forceSafariVC: true,
          forceWebView: true,
          enableJavaScript: true,
        );
      } else {
        throw 'Could not launch $url';
      }
    }

    void _git() async {
      const url = 'https://github.com/Law-son';
      if (await canLaunch(url)) {
        await launch(
          url,
          forceSafariVC: true,
          forceWebView: true,
          enableJavaScript: true,
        );
      } else {
        throw 'Could not launch $url';
      }
    }

    void _link() async {
      const url = 'https://www.linkedin.com/in/lawson-buabassah-792b34225/';
      if (await canLaunch(url)) {
        await launch(
          url,
          forceSafariVC: true,
          forceWebView: true,
          enableJavaScript: true,
        );
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Developer", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 90.0,
            ),
            const SizedBox(
              child: CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 100,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.png'),
                  radius: 90,
                ),
              ),
            ),
            const ListTile(
              title: Text(
                '              Lawson Buabassah',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.mail,
                color: Colors.black,
              ),
              title: const Text(
                'E-mail',
                style: TextStyle(fontSize: 20),
              ),
              subtitle: const Text(
                'buabassahlawson@gmail.com',
                style: TextStyle(fontSize: 20),
              ),
              onTap: _gmail,
            ),
            ListTile(
              leading: Image.asset(
                'assets/git.png',
                width: 30,
                height: 30,
              ),
              title: const Text(
                'Github',
                style: TextStyle(fontSize: 20),
              ),
              subtitle: const Text(
                'See my other projects',
                style: TextStyle(fontSize: 20),
              ),
              onTap: _git,
            ),
            ListTile(
              leading: Image.asset(
                'assets/link.jpg',
                width: 50,
                height: 50,
              ),
              title: const Text(
                'LinkedIn',
                style: TextStyle(fontSize: 20),
              ),
              subtitle: const Text(
                'View my LinkedIn profile',
                style: TextStyle(fontSize: 20),
              ),
              onTap: _link,
            ),
          ],
        ),
      ),
    );
  }
}
