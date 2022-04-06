import 'package:flutter/material.dart';
import 'drawer.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.purple),
    title: "Belajar Drawer",
    debugShowCheckedModeBanner: false,
    home: BelajarNavigationDrawer(),
  ));
}

class BelajarNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
              title: Text("Welcome to My Drawer Navigation"),
              bottom: TabBar(
                tabs: [
                  new Tab(icon: new Icon(Icons.audiotrack), text: "Music"),
                  new Tab(icon: new Icon(Icons.collections), text: "Gallery"),
                  new Tab(icon: new Icon(Icons.message), text: "Message"),
                ],
              )),
          drawer: CustomDrawer(),
          // endDrawer: CustomDrawer(),
          body: TabBarView(
            children: <Widget>[
              Songs(),
              Galery(),
              Email(),
            ],
          )));
}
