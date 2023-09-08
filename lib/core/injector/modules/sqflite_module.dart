import 'package:injectable/injectable.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

@Singleton()
class SqfliteModule {
  Database? database;
}
