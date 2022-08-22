import 'package:flutter/material.dart';

import 'newsfeed_widgets/feedlatestArtical.dart';
import 'newsfeed_widgets/widget_feed.dart';

class LibraryPage extends StatefulWidget {
  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    Color color=Theme.of(context).accentColor;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: actionBarRow(color),
          centerTitle: false,
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          toolbarHeight: 80.0,
        ),
        body: SafeArea(
            child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                topSpace(),
                searchTextField(color),
                topSpace(),
                // Container(height: 55, child: CategoryList()),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('LATEST ARTICLE',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold))),
                    topSpace(),

                    Container(
                        height: 200,
                        padding: EdgeInsets.all(10),
                        child: LatestArticle()),
                  ],
                ),
              ),
            ),
          )
        ])));
  }
}
