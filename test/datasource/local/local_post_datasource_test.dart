// ignore_for_file: prefer_function_declarations_over_variables, unused_local_variable

import 'package:dartz/dartz.dart';
import 'package:datasourcetesting/core/injector/modules/sqflite_module.dart';
import 'package:datasourcetesting/core/injector/services.dart';
import 'package:datasourcetesting/src/data/datasource/local/local_post_datasource.dart';
import 'package:datasourcetesting/src/data/models/post_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../core/injector/services.dart';
import '../../core/tools/call_or_return_null.dart';

Future<void> main() async {
  await initTestServices();

  group('LocalPostDatasource', () {
    test('Save & Get test', () async {
      // act
      final SqfliteModule sqfliteModule = services<SqfliteModule>();
      await sqfliteModule.database?.delete('Posts', where: 'id = 1');

      final PostModel postModel = PostModel(
        id: 1,
        ownerId: 1,
        title: 'title',
        data: 'data',
        publishedAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

      final LocalPostDatasource localPostDatasource = services<LocalPostDatasource>();

      // arrange
      final saveTest = await callOrReturnNull(() async => await localPostDatasource.savePost(postModel));
      // final Future<Unit?> Function() saveTest = () async {
      //   try {
      //     return await ;
      //   } catch (_) {
      //     return null;
      //   }
      // };

      final getTest = await callOrReturnNull(() async => await localPostDatasource.getPostById(postModel.id));
      // final Future<PostModel?> Function() getTest = () async {
      //   try {
      //     return await localPostDatasource.getPostById(postModel.id);
      //   } catch (_) {
      //     return null;
      //   }
      // };

      // assert
      expect(saveTest, unit, reason: 'Save does`t work correct');
      expect(getTest, postModel, reason: 'Get does`t match correct model');
    });
  });
}
