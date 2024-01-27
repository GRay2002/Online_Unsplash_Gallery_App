import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:url_launcher/url_launcher.dart';

import '../actions/create_comment.dart';
import '../models/app_user.dart';
import '../models/comment.dart';
import '../models/unsplash_image.dart';
import 'containers/comments_container.dart';
import 'containers/selected_image_container.dart';
import 'containers/users_container.dart';
import 'extensions.dart';

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
            backgroundColor: Colors.blue,
            title: Text(image.description),
            titleTextStyle: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          body: CommentsContainer(
            builder: (BuildContext context, List<Comment> comments) {
              return UsersContainer(
                builder: (BuildContext context, Map<String, AppUser> users) {
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
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute<void>(
                                            builder: (BuildContext context) => Scaffold(
                                              body: Center(
                                                child: PhotoView(
                                                  imageProvider: NetworkImage(image.smallImage.small),
                                                  backgroundDecoration: const BoxDecoration(color: Colors.transparent),
                                                  onTapUp: (BuildContext context, TapUpDetails details,
                                                      PhotoViewControllerValue controller) {
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                              ),
                                            ),
                                          ));
                                    },
                                    child: Image.network(
                                      image.smallImage.small,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            Text(
                              '${image.likes} ❤️',
                              style: const TextStyle(
                                color: Colors.red,
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                image.description,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                ),
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
                      const SliverPadding(
                        padding: EdgeInsets.all(16.0),
                        sliver: SliverToBoxAdapter(
                          child: Text(
                            'Comments',
                            style: TextStyle(fontSize: 32.0),
                          ),
                        ),
                      ),
                      if (comments.isNotEmpty)
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              final Comment comment = comments[index];
                              final AppUser? user = users[comment.uid];

                              return ListTile(
                                title: Text(comment.text),
                                subtitle: Text(<Object>[
                                  if (user != null) user.displayName,
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
                                'Be the first to leave a comment',
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ),
                          ),
                        )
                    ],
                  );
                },
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              final TextEditingController controller = TextEditingController();
              showDialog<void>(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Add your review'),
                    content: TextField(
                      controller: controller,
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Cancel'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          final String text = controller.text.trim();
                          if (text.isNotEmpty) {
                            context.dispatch(CreateComment(text));
                          }
                          Navigator.pop(context);
                        },
                        child: const Text('Save'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Icon(Icons.add_comment),
          ),
        );
      },
    );
  }
}
