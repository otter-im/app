import 'package:app/drawer.dart';
import 'package:app/main_pages.dart';
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
          Expanded(child: PageView(children: mainPages(context)))
        ],
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Placeholder"),
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
        body: PageView(children: mainPages(context)),
      );
    }
  }
}
