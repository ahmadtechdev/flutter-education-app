// What does the class depend on
// Answer -- AuthenticationRepository

// How can we create a fake version  of the dependency
//Answer -- Use Mocktail
// How do we control what our dependencies do
// Using the mocktails API

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tdd_tutorial/src/authentication/domain/repositories/%20authentication_repository.dart';
import 'package:tdd_tutorial/src/authentication/domain/usecases/create_user.dart';

class MockAuthRepo extends Mock implements AuthenticationRepository{
  void Main(){
    late CreateUser usecase;
    late AuthenticationRepository repository;

    setUp((){
      repository = MockAuthRepo();
      usecase = CreateUser(repository);
    });

    const params = CreateUserParams.empty();
    
    test('should call the [AuthRepo.CreateUser', ()async{
    //   Arrange
      when(
          ()=> repository.createUser(createdAt: any(), name: any(), avatar: any())
      ).thenAnswer((_) async => const Right(null));

    //   Act
     await usecase(params);

    //   Assert
    });
  }
}