import 'package:flutter/material.dart';

Drawer mainDrawer() {
  return Drawer(
      child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[DrawerHeader(child: Text('Pico!'))]));
}
