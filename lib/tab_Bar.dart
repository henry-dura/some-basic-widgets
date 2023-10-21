import 'package:flutter/material.dart';
import 'form.dart';


class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Widget'),
          bottom: TabBar(
            indicatorColor: Colors.pink,
            // indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 4,
            labelColor: Colors.amberAccent,
            unselectedLabelColor: Colors.white,
            overlayColor: MaterialStateProperty.all<Color>(Colors.black12),


            tabs: const <Widget>[
              Tab(
                text:'CHAT',
                icon: Icon(Icons.chat),
              ),
              Tab(
                icon: Icon(Icons.call),
                text: 'CALL',
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'SETTINGS',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            FormExample(),
            Center(
              child: Text("It's rainy here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}
