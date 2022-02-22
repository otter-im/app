import 'package:app/drawer.dart';
import 'package:app/post_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReactiveView extends StatelessWidget {
  const ReactiveView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const breakpoint = 600.0;
    if (screenWidth >= breakpoint) {
      // Widescreen layout
      return Row(
        children: [
          SizedBox(
            width: 240,
            child: mainDrawer(),
          ),
          Container(width: 0.5, color: Colors.black),
          Expanded(child: mainView(context))
        ],
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Feed"),
          leading: Builder(
            builder: (BuildContext ctx) {
              return IconButton(
                onPressed: () => Scaffold.of(ctx).openDrawer(),
                icon: const Icon(
                  FontAwesomeIcons.userAlt,
                  size: 20.0,
                ),
              );
            },
          ),
        ),
        drawer: mainDrawer(),
        body: mainView(context),
      );
    }
  }
}

Widget mainView(BuildContext context) {
  return Scaffold(
    body: const Center(child: CircularProgressIndicator()),
    floatingActionButton: FloatingActionButton.extended(
      label: const Text("New Post"),
      icon: const Icon(Icons.add_sharp),
      onPressed: () {
        Navigator.push(context, _postRouteBuilder(const PostView()));
      },
    ),
  );
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
    transitionDuration: const Duration(milliseconds: 200),
  );
}
