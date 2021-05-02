
import 'package:flutter/material.dart';

Widget myAppBar(themeColor) {
  return AppBar(
    backgroundColor:themeColor,
    elevation: 0.0,
    leading: Padding(
      padding: const EdgeInsetsDirectional.only(start: 18.0, top: 12.0),
      child: Stack(
        alignment: Alignment(2.8, -1.6),
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
          ),
          Container(
            padding: EdgeInsets.all(.6),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white, width: 3.0),
            ),
            height: 22,
            width: 29,
            child: Text(
              ' 9+',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    ),
    title: Text(
      'Chats',
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
    ),
    actions: [
      doActionsIcons(Icon(Icons.camera_alt)),
      doActionsIcons(Icon(Icons.edit)),
    ],
  );
}

Widget doActionsIcons(Widget actionIcon) {
  return Container(
    margin: EdgeInsets.only(top: 10,right: 10 ),
    child: CircleAvatar(
        backgroundColor: Colors.grey.withOpacity(.2),
        child: IconButton(
          icon: actionIcon,
          onPressed: () {},
          color: Colors.black,
        ),
      ),
  );
}
