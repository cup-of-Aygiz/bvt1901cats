import 'package:bvt1901_practice/features/login/domain/entity/profile_entity.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repository/login_repository.dart';


@Injectable(as:LoginRepository)
class LoginNetworkRepository extends LoginRepository {

  @override
  Future<ProfileEntity?> login({required String phone, required String password}) {
    // TODO: implement login
    throw UnimplementedError();
  }
}
