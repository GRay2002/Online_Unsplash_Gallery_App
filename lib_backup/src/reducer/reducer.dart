import 'dart:developer';

import 'package:redux/redux.dart';
import '../actions/change_picture.dart';
import '../actions/create_user.dart';
import '../actions/get_comments.dart';
import '../actions/get_current_user.dart';
import '../actions/load_items.dart';
import '../actions/login.dart';
import '../actions/set.dart';
import '../actions/sign_out.dart';
import '../models/app_state.dart';
import '../models/unsplash_image.dart';

AppState reducer(AppState state, dynamic action) {
  log('$action');

  return combineReducers<AppState>(<Reducer<AppState>>[
    TypedReducer<AppState, LoadItemsSuccessful>(_loadItemsSuccessful).call,
    TypedReducer<AppState, LoadItemsStart>(_loadItemsStart).call,
    TypedReducer<AppState, LoadItemsError>(_loadItemsError).call,
    TypedReducer<AppState, SetQuery>(_setQuery).call,
    TypedReducer<AppState, SetColor>(_setColor).call,
    TypedReducer<AppState, CreateUserSuccessful>(_createUserSuccessful).call,
    TypedReducer<AppState, GetCurrentUserSuccessful>(_getCurrentUserSuccessful).call,
    TypedReducer<AppState, SignOutSuccessful>(_signOutSuccessful).call,
    TypedReducer<AppState, LoginSuccessful>(_loginSuccessful).call,
    TypedReducer<AppState, ChangePictureSuccessful>(_changePictureSuccessful).call,
    TypedReducer<AppState, SetSelectedImage>(_setSelectedImage).call,
    TypedReducer<AppState, GetCommentsSuccessful>(_getCommentsSuccessful).call,
  ])(state, action);
}

AppState _loadItemsStart(AppState state, LoadItemsStart action) {
  return state.copyWith(
    isLoading: true,
  );
}

AppState _loadItemsSuccessful(AppState state, LoadItemsSuccessful action) {
  return state.copyWith(
    isLoading: false,
    page: state.page + 1,
    unsplashImages: <UnsplashImage>[...state.unsplashImages, ...action.unsplashImages],
  );
}

AppState _loadItemsError(AppState state, LoadItemsError action) {
  return state.copyWith(isLoading: false);
}

AppState _setQuery(AppState state, SetQuery action) {
  return state.copyWith(
    query: action.query,
    page: 1,
    unsplashImages: <UnsplashImage>[],
  );
}

AppState _setColor(AppState state, SetColor action) {
  return state.copyWith(
    color: action.color,
    page: 1,
    unsplashImages: <UnsplashImage>[],
  );
}

AppState _createUserSuccessful(AppState state, CreateUserSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _getCurrentUserSuccessful(AppState state, GetCurrentUserSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _signOutSuccessful(AppState state, SignOutSuccessful action) {
  return state.copyWith(user: null);
}

AppState _loginSuccessful(AppState state, LoginSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _changePictureSuccessful(AppState state, ChangePictureSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _setSelectedImage(AppState state, SetSelectedImage action) {
  return state.copyWith(selectedImage: action.image);
}

AppState _getCommentsSuccessful(AppState state, GetCommentsSuccessful action) {
  return state.copyWith(comments: action.comments);
}
