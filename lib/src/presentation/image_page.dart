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
            backgroundColor: Colors.purple.shade700,
            title: Text(image.description),
            titleTextStyle: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            centerTitle: true,
          ),
          body: CommentsContainer(
            builder: (BuildContext context, List<Comment> comments) {
              return UsersContainer(
                builder: (BuildContext context, Map<String, AppUser> users) {
                  return SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          GestureDetector(
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
                                ),
                              );
                            },
                            child: Image.network(
                              image.smallImage.small,
                              height: 300,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Description:',
                                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 8.0),
                                Text(
                                  image.description,
                                  style: const TextStyle(fontSize: 16.0),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  followlink(Uri.parse(image.authorPage.links.html));
                                },
                                child: Text('Visit Author Page'),
                              ),
                              Text(
                                '${image.likes} 😍️',
                                style: const TextStyle(
                                  color: Colors.red,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Comments',
                                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 8.0),
                                if (comments.isNotEmpty)
                                  Column(
                                    children: comments.map((Comment comment) {
                                      final AppUser? user = users[comment.uid];

                                      return ListTile(
                                        title: Text(
                                          comment.text,
                                          style: const TextStyle(fontWeight: FontWeight.normal),
                                        ),
                                        subtitle: Text(
                                          '${user?.displayName ?? 'Unknown User'} • ${comment.createdAt}',
                                          style: const TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      );
                                    }).toList(),
                                  )
                                else
                                  const Center(
                                    child: Text(
                                      'Be the first to leave a comment',
                                      style: TextStyle(fontSize: 16.0),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
