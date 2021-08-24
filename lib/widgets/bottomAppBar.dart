import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget MyBottomBar() {
  return BottomNavigationBar(
    backgroundColor: Colors.white,
    items: [
      BottomNavigationBarItem(
        icon: Icon(
          CupertinoIcons.creditcard_fill,
          color: Colors.black,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          CupertinoIcons.compass_fill,
          color: Colors.grey,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.notifications,
          color: Colors.grey,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.settings,
          color: Colors.grey,
        ),
        label: "",
      ),
    ],
    currentIndex: 0,
    selectedItemColor: Colors.black,
  );
}
