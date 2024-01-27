import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../actions/change_picture.dart';
import '../actions/sign_out.dart';
import '../models/app_user.dart';
import 'containers/app_user_container.dart';
import 'extensions.dart';
import 'user_picture.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppUserContainer(
      builder: (BuildContext context, AppUser? user) {
        if (user == null) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.purple.shade700,
            title: const Text('User profile'),
            titleTextStyle: const TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(78.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () async {
                      final ImagePicker picker = ImagePicker();
                      final XFile? file = await picker.pickImage(
                        source: ImageSource.gallery,
                        maxHeight: 1024,
                        maxWidth: 1024,
                      );

                      if (file != null) {
                        context.dispatch(ChangePicture(file.path));
                      }
                    },
                    child: const UserPicture(radius: 128),
                  ),
                  const SizedBox(height: 32),
                  Text(
                    user.displayName,
                    style: const TextStyle(fontSize: 64.0),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    user.email,
                    style: const TextStyle(fontSize: 32.0),
                  ),
                  const SizedBox(height: 32),
                  Container(
                    width: double.infinity, // Make the container take the full width
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        backgroundColor: Colors.purple.shade700,
                      ),
                      child: const Text(
                        'Sign out',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        showDialog<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Sign out'),
                              content: const Text('Are you sure you want to sign out?'),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Cancel'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                TextButton(
                                  child: const Text('Sign out'),
                                  onPressed: () {
                                    context.dispatch(const SignOut());
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
