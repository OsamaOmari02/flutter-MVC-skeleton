import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvc_skeleton/core/components/seperator.dart';

import 'list_tile.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 1,
      child: ListView.separated(
          itemBuilder: (context, index) => listTileBuilder(
              context: context,
              title: _itemCountList[index]['title'],
              route: _itemCountList[index]['route']),
          separatorBuilder: (context, index) => Seperator.sizedBox(),
          itemCount: _itemCountList.length),
    );
  }
}

List _itemCountList = [
  {
    "title": "some title",
    "route": "some route" // MaterialPageRoute,
  },
  {
    "title": "some title",
    "route": "some route" // MaterialPageRoute,
  },
];
