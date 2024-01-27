import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart';
import '../models/comment.dart';
import '../models/unsplash_image.dart';

class ImageApi {
  ImageApi(this._accessKey, this._client, this._firestore);

  final String _accessKey;
  final Client _client;
  final FirebaseFirestore _firestore;

  Future<List<UnsplashImage>> loadItems(int page,
      {String query = '', String color = '', bool isSearching = false}) async {
    final Response response;
    final List<dynamic> imgData;

    if (query.isNotEmpty) {
      final Uri uri = Uri.parse('https://api.unsplash.com/search/photos/');
      response = await _client.get(
        uri.replace(
          queryParameters: <String, String>{
            'page': '$page',
            if (query.isNotEmpty) 'query': query,
            if (query.isNotEmpty && color.isNotEmpty) 'color': color,
          },
        ),
        headers: <String, String>{'Authorization': 'Client-ID $_accessKey'},
      );

      final Map<String, dynamic> jsonBody = json.decode(response.body) as Map<String, dynamic>;

      imgData = jsonBody['results'] as List<dynamic>;
    } else {
      final Uri uri = Uri.parse('https://api.unsplash.com/photos/');
      response = await _client.get(
        uri.replace(
          queryParameters: <String, String>{
            'page': '$page',
          },
        ),
        headers: <String, String>{'Authorization': 'Client-ID $_accessKey'},
      );

      imgData = json.decode(response.body) as List<dynamic>;
    }
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return imgData.map((dynamic item) => UnsplashImage.fromJson(item as Map<String, dynamic>)).toList();
  }

  Future<List<Comment>> getComments(String imageId) async {
    final QuerySnapshot<Map<String, dynamic>> snapshot = await _firestore
        .collection('photos/$imageId/reviews') //
        .orderBy('createdAt', descending: true)
        .get();

    return snapshot.docs //
        .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => Comment.fromJson(doc.data()))
        .toList();
  }

  Future<Comment> createComment({
    required String imageId,
    required String text,
    required String uid,
  }) async {
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('photos/$imageId/reviews').doc();

    final Comment comment = Comment(
      id: ref.id,
      text: text,
      uid: uid,
      createdAt: DateTime.now(),
    );

    await ref.set(comment.toJson());

    return comment;
  }
}
