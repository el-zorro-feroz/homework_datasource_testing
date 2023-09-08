// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:datasourcetesting/core/injector/modules/sqflite_module.dart'
    as _i4;
import 'package:datasourcetesting/src/data/datasource/local/local_post_datasource.dart'
    as _i5;
import 'package:datasourcetesting/src/data/datasource/remote/remote_post_datasource.dart'
    as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.RemotePostDatasource>(() => _i3.RemotePostDatasource());
    gh.singleton<_i4.SqfliteModule>(_i4.SqfliteModule());
    gh.factory<_i5.LocalPostDatasource>(
        () => _i5.LocalPostDatasource(sqfliteModule: gh<_i4.SqfliteModule>()));
    return this;
  }
}
