import 'package:datasourcetesting/core/injector/modules/sqflite_module.dart';
import 'package:datasourcetesting/core/injector/services.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

Future<void> initTestServices() async {
  initServices();

  final sqfliteModule = services<SqfliteModule>();

  databaseFactory = databaseFactoryFfi;

  final String databasePath = await getDatabasesPath();
  sqfliteModule.database = await databaseFactoryFfi.openDatabase('$databasePath/data.db');

  await sqfliteModule.database?.execute(
    'CREATE TABLE IF NOT EXISTS Posts (id INTEGER PRIMARY KEY, title TEXT, data TEXT, ownerId INTEGER, publishedAt TEXT, updatedAt TEXT)',
  );
}
