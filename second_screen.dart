import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Organic();
  }
}

class Organic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text(
              'Organic Basket',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  showSearch(context: context, delegate: DataSearch());
                },
              )
            ]),
        body: SafeArea(
          child: Row(
            children: <Widget>[],
          ),
        ),
        drawer: Drawer(),
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final products = [
    "cabbage",
    "Okra",
    "Tomato",
    "Chilli",
    "Bitter Gourd",
    "Radish",
    "Cucumber",
    "Pumpkin",
    "Brinjal",
  ];
  final recentvegetables = [
    "Chilli",
    "Bitter Gourd",
    "Radish",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
//actions for app bar
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

//  @override
//  Animation<double> get transitionAnimation {}

  @override
  void showSuggestions(BuildContext context) {}

  @override
  Widget buildResults(BuildContext context) {
    // show some results based on the selection
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentvegetables
        : products.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
        itemBuilder: (context, index) => ListTile(
              onTap: () {
                showResults(context);
              },
              leading: Icon(Icons.toys),
              title: RichText(
                text: TextSpan(
                    text: suggestionList[index].substring(0, query.length),
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: suggestionList[index].substring(query.length),
                          style: TextStyle(color: Colors.grey)),
                    ]),
              ),
            ),
        itemCount: suggestionList.length);
  }
}
