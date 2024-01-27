import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state.dart';
import '../../models/unsplash_image.dart';

class ImagesContainer extends StatelessWidget {
  const ImagesContainer({super.key, required this.builder});

  final ViewModelBuilder<List<UnsplashImage>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<UnsplashImage>>(
        converter: (Store<AppState> store) {
          return store.state.unsplashImages;
        },
        builder: builder);
  }
}
