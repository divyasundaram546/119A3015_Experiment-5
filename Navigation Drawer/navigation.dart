import 'package:flutter/material.dart';
import 'mailpage.dart';
import 'primarypage.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyNavigationWidget createState() => _MyNavigationWidget();
}

class _MyNavigationWidget extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Navigation Drawer"),
      ),
      drawer: Drawer(
        elevation: 20.0,
        child: Column(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("Divyalaxmi Thiruganan"),
              accountEmail: Text("divyalaxmithiruganan19@siesgst.ac.in"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.pink,
                child: Text("Divya"),
              ),
            ),
            ListTile(
              title: const Text("Inbox"),
              leading: const Icon(Icons.mail),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MailPage()));
              },
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: const Text("Primary"),
              leading: const Icon(Icons.inbox),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PrimaryPage()));
              },
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: const Text("Social"),
              leading: const Icon(Icons.people),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: const Text("Promotions"),
              leading: const Icon(Icons.local_offer),
            )
          ],
        ),
      ),
    );
  }
}
