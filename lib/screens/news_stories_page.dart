import 'package:flutter/material.dart';
import '../widgets/story_thumbnail.dart';
import '../widgets/news_sheet.dart';
import '../widgets/bottom_bar.dart';

class NewsStoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      // bottomNavigationBar: CustomBottomBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 5),
            Center(
              child: Container(
                child: Text(
                  'News',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  StoryThumbnail(),
                  StoryThumbnail(),
                  StoryThumbnail(),
                  StoryThumbnail(),
                  StoryThumbnail(),
                  StoryThumbnail(),
                ],
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  itemExtent: 230,
                  children: <Widget>[
                    NewsItem(),
                    NewsItem(),
                    NewsItem(),
                    NewsItem(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}