import 'package:flutter/material.dart';
import 'package:flutter_instagram/util/bubble_stories.dart';
import 'package:flutter_instagram/util/user_post.dart';

class UserHome extends StatelessWidget {
  final List<String> people = [
    'dicasdodev',
    'leolins',
    'carioca',
    'codar.me',
    'gabrielpato',
    'eutiringaoficial',
    'akitaonrails',
    'gadgetstrip',
    'thereptilezoo',
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
                GestureDetector(
                  onTap: () {
                    print('tap');
                  },
                  child: Icon(Icons.add),
                ),
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
            Expanded(
              child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Column(
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
                        UserPost(
                          name: people[index],
                        )
                      ],
                    );
                  }
                  return UserPost(
                    name: people[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
