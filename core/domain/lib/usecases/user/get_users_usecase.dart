import 'package:domain/models/user.dart';
import 'package:domain/usecases/base_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUsersUseCase extends BaseUseCase<String> {
  @override
  Future<String>  call() async{
    return "User Use case";
  }

}