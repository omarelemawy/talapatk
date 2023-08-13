import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:talapatk/features/auth_feature/data/data_source/auth_remote_data_source.dart';
import 'package:talapatk/features/auth_feature/domain/repositories/base_auth_repository.dart';

import 'core/network/network_info.dart';
import 'core/services/internet_connection_service.dart';
import 'features/auth_feature/data/data_source/auth_local_data_source.dart';
import 'features/auth_feature/data/repositories/auth_repository.dart';

Future<void> init() async {
  //! External
  await GetStorage.init('Talapatk');
  const flutterSecureStorage = FlutterSecureStorage();
  final internetConnectionChecker = InternetConnectionChecker();

  Get.lazyPut(
    () => GetStorage('Talapatk'),
    fenix: true,
  );

  Get.lazyPut(
    () => flutterSecureStorage,
    fenix: true,
  );
  Get.lazyPut(
    () => internetConnectionChecker,
    fenix: true,
  );

  //! Core
  Get.lazyPut<NetworkInfo>(
    () => NetworkInfoImpl(
      internetConnectionChecker: Get.find(),
    ),
    fenix: true,
  );

  ///--------------------------- AUTH FEATURE ----------------------------------

  // Data sources
  Get.lazyPut<BaseAuthLocalDataSource>(
    () => AuthLocalDataSource(
      getStorage: Get.find(),
      flutterSecureStorage: Get.find(),
    ),
    fenix: true,
  );
  Get.lazyPut<BaseAuthRemoteDataSource>(
    () => AuthRemoteDataSource(
      baseAuthLocalDataSource: Get.find(),
    ),
    fenix: true,
  );

  // Repository
  Get.lazyPut<BaseAuthRepository>(
    () => AuthRespoitory(
      baseAuthLocalDataSource: Get.find(),
      baseAuthRemoteDataSource: Get.find(),
      networkInfo: Get.find(),
    ),
    fenix: true,
  );

  // Use cases

  // Get.lazyPut(
  //   () => GetUserUseCase(baseAuthRepository: Get.find()),
  //   fenix: true,
  // );

  ///--------------------------- SERVICES --------------------------------------

  await Get.putAsync(() => InternetConnectionService(
        networkInfo: Get.find(),
      ).init());

  // await Get.putAsync(
  //   () => UserService().init(),
  // );

  // await Get.putAsync(
  //   () => LanguageService(
  //     getLangUseCase: Get.find(),
  //     saveLangUseCase: Get.find(),
  //   ).init(),
  // );
}
