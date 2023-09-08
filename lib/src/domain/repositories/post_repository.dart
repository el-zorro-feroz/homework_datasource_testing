import 'package:dartz/dartz.dart';
import 'package:datasourcetesting/core/failure/failure.dart';
import 'package:datasourcetesting/src/domain/entities/post.dart';

abstract class PostRepository {
  Future<Either<Failure, Post>> create();
  Future<Either<Failure, List<Post>>> readAll();
  Future<Either<Failure, Post>> read();
  Future<Either<Failure, Post>> update();
  Future<Either<Failure, Unit>> delete();
}
