import 'package:app/post_view.dart';
import 'package:flutter/material.dart';

class FeedView extends StatelessWidget {
  const FeedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PostView(
          displayName: "Pico! ✨🇸🇪",
          username: "@tinyfluffs",
          profilePictureUrl:
              "https://pbs.twimg.com/profile_images/1477634798231379997/UDhiuJtk_400x400.png",
          content: "The quick brown fox jumps over the lazy dog",
        ),
        PostView(
          displayName: "Strawberry Creampie",
          username: "@Sir_Boops",
          profilePictureUrl:
              "https://pbs.twimg.com/profile_images/1486145367519350784/SAd95Noj_400x400.jpg",
          content: "You",
        ),
        PostView(
          displayName: "Madeon",
          username: "@madeon",
          profilePictureUrl:
              "https://pbs.twimg.com/profile_images/1163660722749919234/gg_-9tpV_400x400.jpg",
          content:
              "I'M ON A PLANE RIGHT NOW PRAYING THE CONNECTION WILL BE GOOD ENOUGH TO LET ME WATCH THIS DAFT PUNK STREAM",
        ),
        PostView(
          displayName: "Pico! ✨🇸🇪",
          username: "@tinyfluffs",
          profilePictureUrl:
              "https://pbs.twimg.com/profile_images/1477634798231379997/UDhiuJtk_400x400.png",
          content:
              "This is an example post on Otter Social. I'm currently working on the UI/UX, and it's very interesting to see how the Flutter engine handles things! A long post wraps nicely down onto another line, thanks to the use of Expanded and/or Flexible widgets."
              "\n\nAnd here's text on a couple of new lines! Awesome :D"
              "\n\n\nThe UI handles overflow now, too ^.^",
        ),
        PostView(
          displayName: "Madeon",
          username: "@madeon",
          profilePictureUrl:
              "https://pbs.twimg.com/profile_images/1163660722749919234/gg_-9tpV_400x400.jpg",
          content: "porter robinson",
        ),
      ],
    );
  }
}
