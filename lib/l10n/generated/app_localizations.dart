
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

  /// No description provided for @your_profile.
  ///
  /// In ru, this message translates to:
  /// **'Профиль'**
  String get your_profile;

  /// No description provided for @my_orders.
  ///
  /// In ru, this message translates to:
  /// **'Мои заказы'**
  String get my_orders;

  /// No description provided for @my_data.
  ///
  /// In ru, this message translates to:
  /// **'Мои данные'**
  String get my_data;

  /// No description provided for @my_address.
  ///
  /// In ru, this message translates to:
  /// **'Мои адреса'**
  String get my_address;

  /// No description provided for @my_favorite.
  ///
  /// In ru, this message translates to:
  /// **'Мои любимые заказы'**
  String get my_favorite;

  /// No description provided for @my_discounts.
  ///
  /// In ru, this message translates to:
  /// **'Мои скидки и промокоды'**
  String get my_discounts;

  /// No description provided for @leave_account.
  ///
  /// In ru, this message translates to:
  /// **'Покинуть аккаунт'**
  String get leave_account;

  /// No description provided for @free_delivery.
  ///
  /// In ru, this message translates to:
  /// **'Первая доставка бесплатно!'**
  String get free_delivery;

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

  /// No description provided for @search.
  ///
  /// In ru, this message translates to:
  /// **'Поиск'**
  String get search;

  /// No description provided for @change_password.
  ///
  /// In ru, this message translates to:
  /// **'Сменить пароль'**
  String get change_password;

  /// No description provided for @old_password.
  ///
  /// In ru, this message translates to:
  /// **'Текущий пароль'**
  String get old_password;

  /// No description provided for @new_password.
  ///
  /// In ru, this message translates to:
  /// **'Новый пароль'**
  String get new_password;

  /// No description provided for @prov_password.
  ///
  /// In ru, this message translates to:
  /// **'Повторите пароль'**
  String get prov_password;

  /// No description provided for @my_addresses.
  ///
  /// In ru, this message translates to:
  /// **'Мои адреса'**
  String get my_addresses;

  /// No description provided for @add_address.
  ///
  /// In ru, this message translates to:
  /// **'Новый адрес'**
  String get add_address;

  /// No description provided for @address.
  ///
  /// In ru, this message translates to:
  /// **'Адрес'**
  String get address;

  /// No description provided for @entrance.
  ///
  /// In ru, this message translates to:
  /// **'Подъезд'**
  String get entrance;

  /// No description provided for @intercom.
  ///
  /// In ru, this message translates to:
  /// **'Домофон'**
  String get intercom;

  /// No description provided for @flat.
  ///
  /// In ru, this message translates to:
  /// **'Квартира'**
  String get flat;

  /// No description provided for @floor.
  ///
  /// In ru, this message translates to:
  /// **'Этаж'**
  String get floor;

  /// No description provided for @comment.
  ///
  /// In ru, this message translates to:
  /// **'Комментарий курьеру'**
  String get comment;

  /// No description provided for @choose_address.
  ///
  /// In ru, this message translates to:
  /// **'Редактировать адрес'**
  String get choose_address;

  /// No description provided for @next.
  ///
  /// In ru, this message translates to:
  /// **'Далее'**
  String get next;

  /// No description provided for @delivery_address.
  ///
  /// In ru, this message translates to:
  /// **'Адрес доставки'**
  String get delivery_address;

  /// No description provided for @load_address.
  ///
  /// In ru, this message translates to:
  /// **'Определяем ваш адрес'**
  String get load_address;

  /// No description provided for @choose.
  ///
  /// In ru, this message translates to:
  /// **'Выбрать'**
  String get choose;

  /// No description provided for @save_changes.
  ///
  /// In ru, this message translates to:
  /// **'Сохранить изменения'**
  String get save_changes;

  /// No description provided for @place_an_order.
  ///
  /// In ru, this message translates to:
  /// **'Оформить заказ'**
  String get place_an_order;

  /// No description provided for @ok.
  ///
  /// In ru, this message translates to:
  /// **'Ок'**
  String get ok;

  /// No description provided for @cancel.
  ///
  /// In ru, this message translates to:
  /// **'Отмена'**
  String get cancel;

  /// No description provided for @clear_basket.
  ///
  /// In ru, this message translates to:
  /// **'Очистить корзину?'**
  String get clear_basket;

  /// No description provided for @yes_clear.
  ///
  /// In ru, this message translates to:
  /// **'Очистить'**
  String get yes_clear;

  /// No description provided for @no_clear.
  ///
  /// In ru, this message translates to:
  /// **'Оставить'**
  String get no_clear;

  /// No description provided for @payment_method.
  ///
  /// In ru, this message translates to:
  /// **'Способ оплаты'**
  String get payment_method;

  /// No description provided for @payment_to_courier.
  ///
  /// In ru, this message translates to:
  /// **'Наличные'**
  String get payment_to_courier;

  /// No description provided for @checkout.
  ///
  /// In ru, this message translates to:
  /// **'Оформить заказ'**
  String get checkout;

  /// No description provided for @total.
  ///
  /// In ru, this message translates to:
  /// **'Итого'**
  String get total;

  /// No description provided for @cost_of_delivery.
  ///
  /// In ru, this message translates to:
  /// **'Доставка'**
  String get cost_of_delivery;

  /// No description provided for @cost_of_products.
  ///
  /// In ru, this message translates to:
  /// **'Стоимость'**
  String get cost_of_products;

  /// No description provided for @price.
  ///
  /// In ru, this message translates to:
  /// **'Цена'**
  String get price;

  /// No description provided for @manufacturer.
  ///
  /// In ru, this message translates to:
  /// **'Производитель'**
  String get manufacturer;

  /// No description provided for @description.
  ///
  /// In ru, this message translates to:
  /// **'Описание'**
  String get description;

  /// No description provided for @add_cart.
  ///
  /// In ru, this message translates to:
  /// **'Добавить в Корзину'**
  String get add_cart;

  /// No description provided for @not_available.
  ///
  /// In ru, this message translates to:
  /// **'Нет в наличии'**
  String get not_available;

  /// No description provided for @free.
  ///
  /// In ru, this message translates to:
  /// **'Бесплатно'**
  String get free;

  /// No description provided for @empty_basket.
  ///
  /// In ru, this message translates to:
  /// **'Корзина пуста'**
  String get empty_basket;

  /// No description provided for @empty_favorite.
  ///
  /// In ru, this message translates to:
  /// **'Тут будут отображаться избранные товары'**
  String get empty_favorite;
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
