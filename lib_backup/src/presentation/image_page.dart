import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/comment.dart';
import '../models/unsplash_image.dart';
import 'containers/comments_container.dart';
import 'containers/selected_image_container.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  Future<void> followlink(Uri uri) async {
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SelectedImageContainer(
      builder: (BuildContext context, UnsplashImage image) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple.shade700,
            title: Text(image.description),
            titleTextStyle: const TextStyle(
              fontSize: 20,
              color: Colors.white
            ),
          ),
          body: CommentsContainer(
            builder: (BuildContext context, List<Comment> comments) {
              return CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: SizedBox(
                            height: 300,
                            child: AspectRatio(
                              aspectRatio: 1.2,
                              child: Image.network(
                                image.smallImage.small,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Text(
                          '${image.likes} 😍️',
                          style: const TextStyle(
                            color: Colors.red,
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Text(
                          image.description,
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        TextButton(
                            onPressed: () {
                              followlink(Uri.parse(image.authorPage.links.html));
                            },
                            child: Text('Author page: ${image.authorPage.links.html}')),
                      ],
                    ),
                  ),
                  if (comments.isNotEmpty)
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                          final Comment comment = comments[index];
                          // final AppUser? user = users[comment.uid];

                          return ListTile(
                            title: Text(comment.text),
                            subtitle: Text(<Object>[
                              // if (user != null) user.displayName,
                              comment.createdAt,
                            ].join('\n')),
                          );
                        },
                        childCount: comments.length,
                      ),
                    )
                  else
                    const SliverFillRemaining(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Center(
                          child: Text(
                            'Be the first to leave a review',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ),
                    )
                ],
              );
            },
          ),
        );
      },
    );
  }
}
