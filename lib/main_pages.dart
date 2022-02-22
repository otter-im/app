import 'package:app/post_view.dart';
import 'package:flutter/material.dart';

List<Widget> mainPages(BuildContext context) {
  return <Widget>[
    Scaffold(
      body: const Center(child: CircularProgressIndicator()),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("New Post"),
        icon: const Icon(Icons.add_sharp),
        onPressed: () {
          Navigator.push(context, _postRouteBuilder(const PostView()));
        },
      ),
    ),
    const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    ),
    const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    ),
  ];
}

Route _postRouteBuilder(Widget view) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) {
      return view;
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: animation.drive(
          Tween(
            begin: const Offset(0.0, 1.0),
            end: Offset.zero,
          ).chain(
            CurveTween(curve: Curves.easeInOut),
          ),
        ),
        child: child,
      );
    },
    transitionDuration: const Duration(milliseconds: 225),
  );
}
