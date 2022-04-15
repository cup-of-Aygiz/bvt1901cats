
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations returned
/// by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru')
  ];

  /// No description provided for @aqua.
  ///
  /// In ru, this message translates to:
  /// **'Вода'**
  String get aqua;

  /// No description provided for @noInternet.
  ///
  /// In ru, this message translates to:
  /// **''**
  String get noInternet;

  /// No description provided for @commonError.
  ///
  /// In ru, this message translates to:
  /// **''**
  String get commonError;

  /// No description provided for @registration.
  ///
  /// In ru, this message translates to:
  /// **'Регистрация'**
  String get registration;

  /// No description provided for @phone.
  ///
  /// In ru, this message translates to:
  /// **'Номер телефона'**
  String get phone;

  /// No description provided for @name.
  ///
  /// In ru, this message translates to:
  /// **'Имя'**
  String get name;

  /// No description provided for @last_name.
  ///
  /// In ru, this message translates to:
  /// **'Фамилия'**
  String get last_name;

  /// No description provided for @patronymic.
  ///
  /// In ru, this message translates to:
  /// **'Отчество'**
  String get patronymic;

  /// No description provided for @password.
  ///
  /// In ru, this message translates to:
  /// **'Пароль'**
  String get password;

  /// No description provided for @second_password.
  ///
  /// In ru, this message translates to:
  /// **'Повторите Пароль'**
  String get second_password;

  /// No description provided for @passwords_not_match.
  ///
  /// In ru, this message translates to:
  /// **'Пароли не совпадают!'**
  String get passwords_not_match;

  /// No description provided for @create_account.
  ///
  /// In ru, this message translates to:
  /// **'Создать аккаунт'**
  String get create_account;

  /// No description provided for @this_required_field.
  ///
  /// In ru, this message translates to:
  /// **'Это обязательное поле'**
  String get this_required_field;

  /// No description provided for @error_password.
  ///
  /// In ru, this message translates to:
  /// **'Пароль должен содержать хотя бы один строчный и заглавный латинские символы и цифру'**
  String get error_password;

  /// No description provided for @incorrect_format.
  ///
  /// In ru, this message translates to:
  /// **'Неверный формат'**
  String get incorrect_format;

  /// No description provided for @login_title.
  ///
  /// In ru, this message translates to:
  /// **'Вход в аккаунт'**
  String get login_title;

  /// No description provided for @login.
  ///
  /// In ru, this message translates to:
  /// **'Войти'**
  String get login;

  /// No description provided for @project_name.
  ///
  /// In ru, this message translates to:
  /// **'Aqualabean.ru'**
  String get project_name;

  /// No description provided for @welcome.
  ///
  /// In ru, this message translates to:
  /// **'Добро пожаловать'**
  String get welcome;

  /// No description provided for @no_registration_yet.
  ///
  /// In ru, this message translates to:
  /// **'Не зарегистрированы?'**
  String get no_registration_yet;

  /// No description provided for @home_tab.
  ///
  /// In ru, this message translates to:
  /// **'Главная'**
  String get home_tab;

  /// No description provided for @favorite_tab.
  ///
  /// In ru, this message translates to:
  /// **'Избранное'**
  String get favorite_tab;

  /// No description provided for @cart_tab.
  ///
  /// In ru, this message translates to:
  /// **'Корзина'**
  String get cart_tab;

  /// No description provided for @profile_tab.
  ///
  /// In ru, this message translates to:
  /// **'Профиль'**
  String get profile_tab;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ru': return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
