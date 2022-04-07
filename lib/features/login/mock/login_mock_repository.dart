import 'package:bvt1901_practice/features/login/domain/entity/profile_entity.dart';

import '../../../dev/mocking/mock_object.dart';
import '../domain/repository/login_repository.dart';

class LoginMockRepository extends LoginRepository
    with MockFactory<LoginRepository> {
  //final LoginMockStorage _loginMockStorage = LoginMockStorage();

  @override
  Future<ProfileEntity> login({required String phone, required String password}) {
    // TODO: implement login
    throw UnimplementedError();
  }


}
