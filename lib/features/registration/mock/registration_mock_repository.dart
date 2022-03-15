import '../domain/repository/registration_repository.dart';

class RegistrationMockRepository extends RegistrationRepository {
  @override
  Future<bool> registration({
    required String phone,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 3));
    if (phone == '123' && password == '123') {
      return true;
    } else {
      return false;
    }
  }
}
