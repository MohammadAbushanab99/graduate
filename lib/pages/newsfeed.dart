import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresh_graduate/pages/profile_page.dart';


import 'newsfeed_widgets/cat_list.dart';
import 'newsfeed_widgets/feed_bloc.dart';
import 'newsfeed_widgets/feedlatestArtical.dart';
import 'newsfeed_widgets/widget_feed.dart';

class NewsFeed extends StatefulWidget {

  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {

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
        child: Column(
          children: <Widget>[
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
                      // List section for the News Feed.
                      GestureDetector(
                        onTap: viewDetailPage,
                        child:
                        feedNewsCardItem(context, FeedBloc().feedList[0]),
                      ),

                      topSpace(),
                      GestureDetector(
                        onTap: viewDetailPage,
                        child:
                        feedNewsCardItem(context, FeedBloc().feedList[1]),
                      ),

                      topSpace(),
                      GestureDetector(
                        onTap: viewDetailPage,
                        child: feedNewsCardItemQuestion(
                            context, FeedBloc().feedList[2]),
                      ),

                      topSpace(),
                      GestureDetector(
                        onTap: viewDetailPage,
                        child: feedNewsCardWithImageItem(
                            context, FeedBloc().feedList[3]),
                      ),

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

                      topSpace(),
                      pollingCard(context, FeedBloc().feedList[4]),

                      topSpace(),
                      GestureDetector(
                        onTap: viewDetailPage,
                        child: feedNewsCardItem(context, FeedBloc().feedList[1]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future viewDetailPage() {
    print('Go To Detail Screen');
    return Navigator.push(context,
        new MaterialPageRoute(builder: (context) => ProfilePage()));

  }}