import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'services.config.dart';

GetIt services = GetIt.I;

@InjectableInit()
GetIt initServices() => services.init();
