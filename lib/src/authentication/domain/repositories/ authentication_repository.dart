import 'package:tdd_tutorial/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:tdd_tutorial/core/utils/typedef.dart';
import '../entities/user.dart';

abstract class AuthenticationRepository {
  const AuthenticationRepository();

  ResultVoid createUser({
    required String createdAt,
    required String name,
    required String avatar,
  });

  ResultFuture<List<User>> getUsers();
}
