abstract class AppConstants{
  static const String phonePattern = r'^(?:[+0][1-9])?[0-9]{10,12}$';
  static const String passwordPattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{7,}$';
}