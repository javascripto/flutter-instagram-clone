import 'package:flutter/material.dart';

class ShopGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(4),
          child: Container(
            color: Colors.pink[100],
          ),
        );
      },
    );
  }
}
