import 'package:dartz/dartz.dart';
import 'package:datasourcetesting/src/data/models/post_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class RemotePostDatasource {
  Future<PostModel> create() {
    throw UnimplementedError();
  }

  Future<List<PostModel>> readAll() {
    throw UnimplementedError();
  }

  Future<PostModel> read() {
    throw UnimplementedError();
  }

  Future<PostModel> update() {
    throw UnimplementedError();
  }

  Future<Unit> delete() {
    throw UnimplementedError();
  }
}
