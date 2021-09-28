import 'package:flutter/material.dart';

class AccountTab extends StatelessWidget {
  final Color? color;
  final List<String> userPosts = [];

  AccountTab({this.color});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 5,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            color: color,
          ),
        );
      },
    );
  }
}
