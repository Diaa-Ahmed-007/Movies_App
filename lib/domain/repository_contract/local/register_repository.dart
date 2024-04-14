import 'package:dartz/dartz.dart';

abstract class RegisterRepository  {
    Future<String> register({
    required String email,
    required String password,
  });
}