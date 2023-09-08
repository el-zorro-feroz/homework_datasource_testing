import 'package:equatable/equatable.dart';

class Post extends Equatable {
  final int id;
  final int ownerId;
  final String title;
  final String data;
  final DateTime publishedAt;
  final DateTime updatedAt;

  const Post({
    required this.id,
    required this.ownerId,
    required this.title,
    required this.data,
    required this.publishedAt,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [id, ownerId];
}
