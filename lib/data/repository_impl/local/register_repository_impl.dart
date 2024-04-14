import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/data/data_source_contract/local/register_data_source.dart';
import 'package:movies_app/domain/repository_contract/local/register_repository.dart';

@Injectable(as: RegisterRepository)
class registerRepositoryImpl extends RegisterRepository {
  RegisterDataSource registerDataSource;
  @factoryMethod
  registerRepositoryImpl({required this.registerDataSource});
  @override
  Future<String> register(
      {required String email, required String password}) async {
    final credential =
        await registerDataSource.register(email: email, password: password);
    return "success";
  }
}
