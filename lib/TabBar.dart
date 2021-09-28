import 'package:flutter/material.dart';

class TabBarclass extends StatefulWidget {
  const TabBarclass({Key? key}) : super(key: key);

  @override
  _TabBarState createState() => _TabBarState();
}

class _TabBarState extends State<TabBarclass> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Color(0xff6b91d4),
          title: Text('TabBar Example'),
          bottom: TabBar(
            tabs: [
              Text(
                'all',
                style: TextStyle(fontSize: 17.0),
              ),
              Text(
                'mummy',
                style: TextStyle(fontSize: 17.0),
              ),
              Text(
                'papa',
                style: TextStyle(fontSize: 17.0),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Image.asset('images/all.jpg'),
            ),
            Container(
              child: Image.asset('images/mummy.jpg'),
            ),
            Container(
              child: Image.asset('images/papa.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}