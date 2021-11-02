import 'package:flutter/material.dart';
import 'package:instayum1/data.dart';

import 'package:instayum1/widget/cookbook_item.dart';

class bookmarked_recipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        // Design a clickable container wich has a row of icon and text.
        InkWell(
          child: Align(
            // Align them on the left of the screen.
            alignment: Alignment.centerLeft,
            child: Container(
                margin: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Icon(Icons.add),
                    Text("Add new cookbook", style: TextStyle(fontSize: 16)),
                  ],
                )),
          ),
          onTap: () {},
        ),
        // make the rest of the sceen for the gridview items.
        Expanded(
          child: GridView.count(
            crossAxisCount: 2, // 2 items in each row
            padding: EdgeInsets.all(25),
            // map all available cookbooks and list them in Gridviwe.
            children: Cookbook_Data.map((c) => cookbook_item(
                  key,
                  c.id,
                  c.cookbookName,
                  c.imageURLCookbook,
                )).toList(),
          ),
        ),
      ]),
    );
  }
}
