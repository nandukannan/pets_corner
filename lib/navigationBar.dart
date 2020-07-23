import 'package:flutter/material.dart';
import 'account page.dart';
import 'homepage.dart';
import 'destination.dart';
import 'homescreeen.dart';

class MybottomNavigationBar extends StatefulWidget {
  @override
  _MybottomNavigationBarState createState() => _MybottomNavigationBarState();
}

class _MybottomNavigationBarState extends State<MybottomNavigationBar> {
  int _currentTab = 0;
  final _pageoptions = [
    Organic(),
    Category(),
    account(),
  ];
  int _selected = 0;
  Future<List<Post>> search(String search) async {
    await Future.delayed(Duration(seconds: 2));
    return List.generate(search.length, (int index) {
      return Post(
        "Title : $search $index",
        "Description :$search $index",
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        titleSpacing: 55,
        backgroundColor: Colors.teal,
        title: Text(
          'Pets Corner',
          style: TextStyle(
            color: Colors.yellow.shade100,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: 'Pacifico',
          ),
        ),
      ),
      body: _pageoptions[_currentTab],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.pink,
        backgroundColor: Colors.white,
        currentIndex: _currentTab,
        onTap: (int value) {
          print('hello$value');
          setState(() {
            // ignore: unnecessary_statements
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.camera_alt,
              size: 30.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage('http://i.imgur.com/zL4Krbz.jpg'),
            ),
            title: SizedBox.shrink(),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.yellow.shade700),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(''),
                    child: Text(
                      'Pets corner',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Pacifico',
                      ),
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              selected: _selected == 0,
              leading: Icon(Icons.settings, size: 15, color: Colors.black),
              title: Text('Settings',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  )),
              onTap: () {
                ChangeSelected(0);
              },
            ),
            ListTile(
              selected: _selected == 1,
              leading: Icon(Icons.notifications, size: 15, color: Colors.black),
              title: Text('Notifications',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  )),
              onTap: () {
                ChangeSelected(0);
              },
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  void ChangeSelected(int index) {
    setState(() {
      _selected = index;
    });
  }
}
