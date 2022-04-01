


import 'app_localizations.dart';

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get aqua => 'Вода';

  @override
  String get noInternet => '';

  @override
  String get commonError => '';

  @override
  String get registration => 'Регистрация';

  @override
  String get phone => 'Номер телефона';

  @override
  String get name => 'Имя';

  @override
  String get last_name => 'Фамилия';

  @override
  String get patronymic => 'Отчество';

  @override
  String get password => 'Пароль';

  @override
  String get second_password => 'Повторите Пароль';

  @override
  String get passwords_not_match => 'Пароли не совпадают!';

  @override
  String get create_account => 'Создать аккаунт';

  @override
  String get this_required_field => 'Это обязательное поле';

  @override
  String get error_password => 'Пароль должен содержать хотя бы один строчный и заглавный латинские символы и цифру';

  @override
  String get incorrect_format => 'Неверный формат';

  @override
  String get login_title => 'Вход в аккаунт';

  @override
  String get login => 'Войти';

  @override
  String get project_name => 'Aqualabean.ru';

  @override
  String get welcome => 'Добро пожаловать';

  @override
  String get no_registration_yet => 'Не зарегистрированы?';
}
