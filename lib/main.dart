import 'package:flutter/material.dart';
import 'accounts.dart';
import 'list.dart';
import 'home.dart';

void main() {
  runApp(new MaterialApp(debugShowCheckedModeBanner: false, home: new MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

final themeC = Color(0xfffe0f52);

class MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 4, vsync: this);
    controller.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(
        children: <Widget>[
          HomePage(),
          new Tab(icon: new Icon(Icons.search)),
          SongsList(),
          AccountInfo(),
        ],
        controller: controller,
      ),
      bottomNavigationBar: new Material(
        color: Colors.white,
        child: new TabBar(
          indicatorColor: Colors.white,
          labelColor: themeC,
          unselectedLabelColor: Colors.grey,
          tabs: <Tab>[
            new Tab(
              icon: new Icon(Icons.home),
            ),
            new Tab(
              icon: new Icon(Icons.search),
            ),
            new Tab(
              icon: new Icon(Icons.music_note),
            ),
            new Tab(
              icon: new Icon(Icons.person),
            ),
          ],
          controller: controller,
        ),
      ),
    );
  }
}
