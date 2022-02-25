import 'package:app/theme.dart';
import 'package:flutter/material.dart';

class PostView extends StatelessWidget {
  final String displayName;
  final String username;
  final String profilePictureUrl;
  final String content;

  const PostView({
    Key? key,
    required this.displayName,
    required this.username,
    required this.profilePictureUrl,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: canvasLight),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24.0),
            clipBehavior: Clip.antiAlias,
            child: Image.network(
              this.profilePictureUrl,
              width: 48.0,
              height: 48.0,
              isAntiAlias: true,
              filterQuality: FilterQuality.high,
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                this.displayName,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                this.username,
                                style: TextStyle(
                                  color: textSecondary,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Text(this.content),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        Flexible(
                          child: Icon(
                            Icons.sms_outlined,
                            size: 28.0,
                            color: textSecondary,
                          ),
                        ),
                        Flexible(
                          child: Icon(
                            Icons.repeat_rounded,
                            size: 28.0,
                            color: textSecondary,
                          ),
                        ),
                        Flexible(
                          child: Icon(
                            Icons.star_outline_rounded,
                            size: 28.0,
                            color: textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        Text(
                          this.displayName,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                          child: Text(
                            this.username,
                            style: TextStyle(
                              color: textSecondary,
                              fontSize: 14.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      content,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 4.0),
                        child: Icon(
                          Icons.sms_outlined,
                          size: 28.0,
                          color: textSecondary,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 4.0),
                        child: Icon(
                          Icons.repeat_rounded,
                          size: 28.0,
                          color: textSecondary,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 4.0),
                        child: Icon(
                          Icons.star_outline_rounded,
                          size: 28.0,
                          color: textSecondary,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),*/
