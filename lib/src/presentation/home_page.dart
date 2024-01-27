import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import '../actions/load_items.dart';
import '../actions/set.dart';
import '../actions/get_comments.dart';
import '../models/app_state.dart';
import '../models/app_user.dart';
import '../models/unsplash_image.dart';
import 'containers/app_user_container.dart';
import 'containers/images_container.dart';
import 'containers/is_loading_container.dart';
import 'extensions.dart';
import 'user_picture.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController controller = ScrollController();
  final TextEditingController textController = TextEditingController();
  List<String> selectedColors = [];

  @override
  void initState() {
    super.initState();
    context.dispatch(const LoadItems());
    controller.addListener(_onScroll);
  }

  Future<void> followlink(Uri uri) async {
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  void _onScroll() {
    final double offset = controller.offset;
    final double maxExtend = controller.position.maxScrollExtent;

    if (!context.state.isLoading && offset > maxExtend * 0.8) {
      context.dispatch(const LoadItems());
    }
  }

  @override
  void dispose() {
    controller.removeListener(_onScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ImagesContainer(
      builder: (BuildContext context, List<UnsplashImage> images) {
        return IsLoadingContainer(
          builder: (BuildContext context, bool isLoading) {
            return RefreshIndicator(
              onRefresh: () async {
                textController.clear();
                context
                  ..dispatch(const SetQuery(''))
                  ..dispatch(const SetColor(''))
                  ..dispatch(const LoadItems());

                await context.store.onChange.firstWhere((AppState state) => !state.isLoading);
              },
              child: AppUserContainer(
                builder: (BuildContext context, AppUser? user) {
                  return Scaffold(
                    appBar: AppBar(
                      centerTitle: true,
                      backgroundColor: Colors.purple.shade700,
                      title: const Text('My Unsplash Photo Gallery'),
                      titleTextStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      actions: <Widget>[
                        if (user != null)
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/profile');
                            },
                            child: const UserPicture(),
                          ),
                      ],
                    ),
                    body: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: const InputDecoration(hintText: 'search'),
                            controller: textController,
                            onChanged: (String value) {
                              context.dispatch(SetQuery(value));
                              if (context.state.query.isEmpty) {
                                context.dispatch(const SetColor(''));
                              }
                              context.dispatch(const LoadItems());
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: MultiSelectDialogField<String>(
                            buttonText: Text('Select Colors'),
                            title: Text('Colors'),
                            items: allColors
                                .map((color) => MultiSelectItem<String>(color, color))
                                .toList(),
                            listType: MultiSelectListType.CHIP,
                            onConfirm: (values) {
                              setState(() {
                                selectedColors = values ?? [];
                                context.dispatch(SetColor(selectedColors.join(',')));
                                context.dispatch(const LoadItems());
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: NotificationListener<ScrollNotification>(
                            onNotification: (ScrollNotification scrollInfo) {
                              if (!context.state.isLoading &&
                                  scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
                                context.dispatch(const LoadItems());
                              }
                              return false;
                            },
                            child: SingleChildScrollView(
                              child: Column(
                                children: <Widget>[
                                  for (UnsplashImage unsplashImage in images)
                                    GestureDetector(
                                      onTap: () {
                                        if (user != null) {
                                          context
                                            ..dispatch(SetSelectedImage(unsplashImage))
                                            ..dispatch(GetComments(unsplashImage.imageId));
                                          Navigator.pushNamed(context, '/image');
                                        } else {
                                          Navigator.pushNamed(context, '/createUser');
                                        }
                                      },
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(
                                            height: 150,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Image.network(
                                                  unsplashImage.smallImage.thumb,
                                                  width: 100,
                                                  height: 150,
                                                  fit: BoxFit.cover,
                                                ),
                                                SizedBox(width: 8),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        unsplashImage.description,
                                                        style: const TextStyle(fontWeight: FontWeight.bold),
                                                      ),
                                                      TextButton(
                                                        onPressed: () {
                                                          followlink(Uri.parse(unsplashImage.authorPage.links.html));
                                                        },
                                                        child: Text(unsplashImage.authorPage.links.html),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Divider(),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        if (isLoading)
                          Padding(
                            padding: MediaQuery.of(context).padding,
                            child: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}

final List<String> allColors = <String>[
  'black_and_white',
  'black',
  'white',
  'yellow',
  'orange',
  'red',
  'purple',
  'magenta',
  'green',
  'teal',
  'blue'
];