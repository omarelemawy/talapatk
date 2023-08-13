import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

abstract class BaseAuthRepository {
  Future<Either<Failure, Unit>> saveLang({required String lang});

  Future<Either<Failure, String>> getLang();
}
