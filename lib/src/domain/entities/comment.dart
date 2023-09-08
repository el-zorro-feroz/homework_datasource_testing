// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Comment extends Equatable {
  final int id;
  final String senderId;
  final String data;
  final DateTime publishedAt;
  final DateTime updatedAt;

  const Comment({
    required this.id,
    required this.senderId,
    required this.data,
    required this.publishedAt,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [id, senderId];
}
