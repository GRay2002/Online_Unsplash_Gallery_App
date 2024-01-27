// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Comment$Impl _$$Comment$ImplFromJson(Map<String, dynamic> json) => _$Comment$Impl(
      id: json['id'] as String,
      text: json['text'] as String,
      uid: json['uid'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$Comment$ImplToJson(_$Comment$Impl instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'uid': instance.uid,
      'createdAt': instance.createdAt.toIso8601String(),
    };
