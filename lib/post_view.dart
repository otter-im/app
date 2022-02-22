import 'package:flutter/material.dart';

class PostView extends StatelessWidget {
  const PostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Post"),
        leading: Builder(
          builder: (BuildContext ctx) {
            return IconButton(
              onPressed: () => Navigator.pop(context, "back"),
              icon: const Icon(
                Icons.arrow_back_sharp,
                size: 20.0,
              ),
            );
          },
        ),
      ),
      body: const Center(child: CircularProgressIndicator()),
    );
  }
}
