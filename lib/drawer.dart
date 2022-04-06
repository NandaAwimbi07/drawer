import 'package:flutter/material.dart';
import 'main.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _drawerHeader(),
          _drawerItem(
              icon: (Icons.audiotrack),
              text: 'My Music',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pop(context);
              }),
          Divider(
            height: 10,
            thickness: 1,
          ),
          _drawerItem(
              icon: (Icons.collections),
              text: 'Galery',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(1);
                Navigator.pop(context);
              }),
          Divider(
            height: 10,
            thickness: 1,
          ),
          _drawerItem(
              icon: (Icons.message),
              text: 'Message',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(2);
                Navigator.pop(context);
              }),
          Divider(
            height: 10,
            thickness: 1,
          ),
          _drawerItem(
            icon: (Icons.delete),
            text: 'Trash',
            onTap: () => print('Tap to Deleted Menu'),
          ),
          Divider(
            height: 25,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text(
              'Label',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ),
          _drawerItem(
            icon: (Icons.bookmark),
            text: 'Family',
            onTap: () => print('Tap to Deleted Menu'),
          ),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage("assets/images/22.jpeg"), fit: BoxFit.cover),
    ),
    accountName: Text('Nanda Awimbi Yahya'),
    accountEmail: Text('nandaawimbi9621@gmail.com'),
  );
}

Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}

class Songs extends StatelessWidget {
  final List music = [
    "Here's Your Prefect.mp3",
    "Doule Take.mp3",
    "Love Is Gone.mp3",
    "Roman Picisan.mp3",
    "Pangeran Cinta.mp3",
    "Satu Hati.mp3",
    "Kangen.mp3",
    "Elang.mp3",
    "Pupus",
    "Separuh Nafas.mp3",
    "Aku Milikmu.mp3",
    "Cukup Siti Nurbaya"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            title: Text(music[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            subtitle: Text('Music from ' + music[index]),
            leading: Icon(Icons.audiotrack),
          ));
        },
        itemCount: music.length,
      ),
    );
  }
}

class Galery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          Container(
            child: Card(
              elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/3.webp",
                    height: 350.0,
                    width: 350.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/4.webp",
                    height: 350.0,
                    width: 350.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/5.webp",
                    height: 350.0,
                    width: 350.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/6.webp",
                    height: 350.0,
                    width: 350.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/9.webp",
                    height: 350.0,
                    width: 350.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Email extends StatelessWidget {
  final List mesage = [
    "Telkomsel",
    "BPJSKES",
    "3",
    "TSEL-APPS",
    "Nanda Awimbi",
    "Lazada",
    "Shoppe",
    "3TopUp",
    "KOMINFO",
    "DANA",
    "Kemendikbud",
    "PEDULICOVID"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            title: Text(mesage[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            subtitle: Text(' New message from ' + mesage[index]),
            leading: Icon(Icons.message),
          ));
        },
        itemCount: mesage.length,
      ),
    );
  }
}
