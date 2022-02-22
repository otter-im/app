import 'package:flutter/material.dart';

double marginWidth(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  if (width > 1900.0) return (width / 100) * (100 / 3);
  if (width > 1280.0) return (width / 100) * 25;
  if (width > 900.0) return (width / 100) * 20;
  if (width > 600.0) return (width / 100) * 10;
  if (width > 300.0) return 8.0;
  return 8.0;
}

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
      body: Container(
        margin:
            EdgeInsets.symmetric(horizontal: marginWidth(context), vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8),
              child: TextField(
                minLines: 2,
                maxLines: 8,
                textAlignVertical: TextAlignVertical.top,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(),
                  hintText: "What's on your mind?",
                ),
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                ),
                onPressed: () {},
                child: const Icon(
                  Icons.send_sharp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
