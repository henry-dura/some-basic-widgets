import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Widget'),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white70,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 50,
                  child: Text('P O'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('Mr Peter Obi'), Text('petergregory@ng.com')],
                )
              ],
            )),
            ListTile(leading: Icon(Icons.mail),title: Text('Message'),),
            ListTile(leading: Icon(Icons.account_circle),title: Text('Profile'),),
            ListTile(leading: Icon(Icons.folder),title: Text('Files'),),
            Divider(color: Colors.white,),
            ListTile(leading: Icon(Icons.settings),title: Text('Settings'),),
            ListTile(leading: Icon(Icons.logout_outlined),title: Text('Log Out'),)
          ],
        ),
      ),
    );
  }
}
