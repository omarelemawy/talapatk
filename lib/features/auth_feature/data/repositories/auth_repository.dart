
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:talapatk/core/errors/failures.dart';
import 'package:talapatk/features/auth_feature/data/data_source/auth_local_data_source.dart';
import 'package:talapatk/features/auth_feature/domain/repositories/base_auth_repository.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/languages/app_translations.dart';
import '../../../../core/network/network_info.dart';
import '../data_source/auth_remote_data_source.dart';
import '../models/user_model.dart';

class AuthRespoitory implements BaseAuthRepository {
  final BaseAuthRemoteDataSource baseAuthRemoteDataSource;
  final BaseAuthLocalDataSource baseAuthLocalDataSource;
  final NetworkInfo networkInfo;

  AuthRespoitory({
    required this.baseAuthRemoteDataSource,
    required this.baseAuthLocalDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, String>> getLang() async {
    try {
      final userLang = await baseAuthLocalDataSource.readUserLanguage();

      return Right(userLang);
    } on EmptyCacheException {
      return Left(EmptyCacheFailure(message: LocaleKeys.networkFailure.tr));
    }
  }

  @override
  Future<Either<Failure, Unit>> saveLang({required String lang}) async {
    try {
      await baseAuthLocalDataSource.writeUserLanguage(lang: lang);
      return const Right(unit);
    } on EmptyCacheException {
      return Left(EmptyCacheFailure(message: LocaleKeys.networkFailure.tr));
    }
  }

  // @override
  // Future<Either<Failure, Unit>> logOut() async {
  //   if (await networkInfo.isConnected) {
  //     try {
  //       String token = await baseAuthLocalDataSource.readToken();

  //       String lang = await baseAuthLocalDataSource.readUserLanguage();

  //       await baseAuthRemoteDataSource.logOut(
  //         currentLanguage: await baseAuthLocalDataSource.readUserLanguage(),
  //         token: token,
  //       );

  //       await baseAuthLocalDataSource.removeToken();
  //       await baseAuthLocalDataSource.removeUser();
  //       await FirebaseMessaging.instance.deleteToken();

  //       Get.offAllNamed(Routes.login);

  //       return const Right(unit);
  //     } on AuthException catch (error) {
  //       return Left(AuthFailure(message: error.message));
  //     } on ValidationException catch (error) {
  //       return Left(ValidationFailure(message: error.message));
  //     } on UnAuthenticatedException catch (error) {
  //       await baseAuthLocalDataSource.removeUser();
  //       await baseAuthLocalDataSource.removeToken();

  //       Get.offAllNamed(Routes.login);
  //       return Left(UnAuthenticatedFailure(message: error.message));
  //     } on UnExpectedException {
  //       return Left(UnExpectedFailure(message: LocaleKeys.unExpectedError.tr));
  //     } on ServerException {
  //       return Left(ServerFailure());
  //     }
  //   } else {
  //     return Left(NetworkFailure(message: LocaleKeys.networkFailure.tr));
  //   }
  // }

  @override
  Future<Either<Failure, UserModel>> getUser() async {
    try {
      final user = await baseAuthLocalDataSource.readUser();
      print(user);
      return Right(user);
    } on EmptyCacheException {
      return Left(EmptyCacheFailure(message: LocaleKeys.networkFailure.tr));
    }
  }
}
