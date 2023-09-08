import 'dart:convert';

import 'package:datasourcetesting/src/domain/entities/post.dart';

class PostModel extends Post {
  const PostModel({
    required super.id,
    required super.ownerId,
    required super.title,
    required super.data,
    required super.publishedAt,
    required super.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'data': {
        'ownerId': ownerId,
        'title': title,
        'data': data,
      }
    };
  }

  factory PostModel.fromMap(Map<String, dynamic> map) {
    final Map<String, dynamic> attributes = map['attributes'];

    return PostModel(
      id: map['id'] as int,
      ownerId: attributes['ownerId'] as int,
      title: attributes['title'] as String,
      data: attributes['data'] as String,
      publishedAt: DateTime.parse(attributes['publishedAt'] as String),
      updatedAt: DateTime.parse(attributes['updatedAt'] as String),
    );
  }

  String toJson() => json.encode(toMap());

  factory PostModel.fromJson(String source) => PostModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
