import 'package:dartz/dartz.dart';

abstract class RegisterDataSource {
  Future<String> register({
    required String email,
    required String password,
  });
}
