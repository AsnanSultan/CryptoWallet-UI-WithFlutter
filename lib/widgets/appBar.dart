import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
PreferredSizeWidget MyAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    leading: IconButton(
      onPressed: () {},
      icon: Icon(Icons.menu),
      color: Colors.black,
    ),
    title: Text(
      "Wallets",
      style: TextStyle(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 25),
        child: Icon(
          CupertinoIcons.creditcard,
          color: Colors.black,
        ),
      )
    ],
  );
}
