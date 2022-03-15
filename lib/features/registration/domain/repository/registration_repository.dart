abstract class RegistrationRepository {
  Future<bool> registration({
    required String firstName,
    required String lastName,
    required String middleName,
    required String phone,
    required String password});
}
