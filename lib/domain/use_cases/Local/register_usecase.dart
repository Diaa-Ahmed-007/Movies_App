import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/domain/repository_contract/local/register_repository.dart';

@injectable
class RegisterUsecase {
  RegisterRepository registerRepo;
  @factoryMethod
  RegisterUsecase(this.registerRepo);
  Future<String> call(String email, String password) async{
    return await registerRepo.register(email: email, password: password);
  }
}
