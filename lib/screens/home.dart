import 'package:flutter/material.dart';
import 'package:flutter_instagram/util/bubble_stories.dart';
import 'package:flutter_instagram/util/user_post.dart';

class UserHome extends StatelessWidget {
  final List<String> people = [
    'dicasdodev',
    'leolins',
    'carioca',
    'codar',
    'gabrielpato',
    'eutiringaoficial',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            // STORIES
            Container(
              height: 130,
              child: ListView.builder(
                itemCount: people.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return BubbleStories(text: people[index]);
                },
              ),
            ),
            // POSTS
            Expanded(
              child: ListView.builder(
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return UserPost(
                      name: people[index],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
