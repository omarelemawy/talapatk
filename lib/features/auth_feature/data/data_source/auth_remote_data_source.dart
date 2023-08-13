import 'package:get/get.dart';

import 'auth_local_data_source.dart';

abstract class BaseAuthRemoteDataSource {}

class AuthRemoteDataSource extends GetConnect
    implements BaseAuthRemoteDataSource {
  final BaseAuthLocalDataSource baseAuthLocalDataSource;

  AuthRemoteDataSource({
    required this.baseAuthLocalDataSource,
  });
}
