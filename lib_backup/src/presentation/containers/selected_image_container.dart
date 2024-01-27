import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state.dart';
import '../../models/unsplash_image.dart';

class SelectedImageContainer extends StatelessWidget {
  const SelectedImageContainer({super.key, required this.builder});

  final ViewModelBuilder<UnsplashImage> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, UnsplashImage>(
      converter: (Store<AppState> store) {
        return store.state.selectedImage!;
      },
      builder: builder,
    );
  }
}
