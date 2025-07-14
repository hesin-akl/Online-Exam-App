// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Online Exam App`
  String get title {
    return Intl.message('Online Exam App', name: 'title', desc: '', args: []);
  }

  /// `Continue`
  String get Continue {
    return Intl.message('Continue', name: 'Continue', desc: '', args: []);
  }

  /// `Sign Up`
  String get SignUp {
    return Intl.message('Sign Up', name: 'SignUp', desc: '', args: []);
  }

  /// `Login`
  String get Login {
    return Intl.message('Login', name: 'Login', desc: '', args: []);
  }

  /// `Email`
  String get Email {
    return Intl.message('Email', name: 'Email', desc: '', args: []);
  }

  /// `Password`
  String get Password {
    return Intl.message('Password', name: 'Password', desc: '', args: []);
  }

  /// `Confirm password`
  String get ConfirmPassword {
    return Intl.message(
      'Confirm password',
      name: 'ConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get EnterYourEmail {
    return Intl.message(
      'Enter your email',
      name: 'EnterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter password`
  String get EnterPassword {
    return Intl.message(
      'Enter password',
      name: 'EnterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter phone number`
  String get EnterPhoneNumber {
    return Intl.message(
      'Enter phone number',
      name: 'EnterPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Enter user name`
  String get EnterUserName {
    return Intl.message(
      'Enter user name',
      name: 'EnterUserName',
      desc: '',
      args: [],
    );
  }

  /// `Enter first name`
  String get EnterFirstName {
    return Intl.message(
      'Enter first name',
      name: 'EnterFirstName',
      desc: '',
      args: [],
    );
  }

  /// `Enter last name`
  String get EnterLastName {
    return Intl.message(
      'Enter last name',
      name: 'EnterLastName',
      desc: '',
      args: [],
    );
  }

  /// `Enter verification code`
  String get EnterVerificationCode {
    return Intl.message(
      'Enter verification code',
      name: 'EnterVerificationCode',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get NewPassword {
    return Intl.message(
      'New password',
      name: 'NewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forget password`
  String get ForgetPassword {
    return Intl.message(
      'Forget password',
      name: 'ForgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email associated to your account`
  String get PleaseEnterYourEmailAssociatedToYourAccount {
    return Intl.message(
      'Please enter your email associated to your account',
      name: 'PleaseEnterYourEmailAssociatedToYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Email verification`
  String get EmailVerification {
    return Intl.message(
      'Email verification',
      name: 'EmailVerification',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your code that send to your email address`
  String get PleaseEnterYourCodeThatSendToYourEmailAddress {
    return Intl.message(
      'Please enter your code that send to your email address',
      name: 'PleaseEnterYourCodeThatSendToYourEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Didn't receive code?`
  String get DidntReceiveCode {
    return Intl.message(
      'Didn\'t receive code?',
      name: 'DidntReceiveCode',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get Resend {
    return Intl.message('Resend', name: 'Resend', desc: '', args: []);
  }

  /// `Reset password`
  String get ResetPassword {
    return Intl.message(
      'Reset password',
      name: 'ResetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password must not be empty and must contain 6 characters with upper case letter and one number at least`
  String
  get PasswordMustNotBeEmptyAndMustContain6CharactersWithUpperCaseLetterAndOneNumberAtLeast {
    return Intl.message(
      'Password must not be empty and must contain 6 characters with upper case letter and one number at least',
      name:
          'PasswordMustNotBeEmptyAndMustContain6CharactersWithUpperCaseLetterAndOneNumberAtLeast',
      desc: '',
      args: [],
    );
  }

  /// `This email is not valid`
  String get ThisEmailIsNotValid {
    return Intl.message(
      'This email is not valid',
      name: 'ThisEmailIsNotValid',
      desc: '',
      args: [],
    );
  }

  /// `This user name is not valid`
  String get ThisUserNameIsNotValid {
    return Intl.message(
      'This user name is not valid',
      name: 'ThisUserNameIsNotValid',
      desc: '',
      args: [],
    );
  }

  /// `Password not matched`
  String get PasswordNotMatched {
    return Intl.message(
      'Password not matched',
      name: 'PasswordNotMatched',
      desc: '',
      args: [],
    );
  }

  /// `Invalid code`
  String get InvalidCode {
    return Intl.message(
      'Invalid code',
      name: 'InvalidCode',
      desc: '',
      args: [],
    );
  }

  /// `User name`
  String get UserName {
    return Intl.message('User name', name: 'UserName', desc: '', args: []);
  }

  /// `First name`
  String get FirstName {
    return Intl.message('First name', name: 'FirstName', desc: '', args: []);
  }

  /// `Last name`
  String get LastName {
    return Intl.message('Last name', name: 'LastName', desc: '', args: []);
  }

  /// `Phone number`
  String get PhoneNumber {
    return Intl.message(
      'Phone number',
      name: 'PhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get AlreadyHaveAnAccount {
    return Intl.message(
      'Already have an account?',
      name: 'AlreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get DontHaveAnAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'DontHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get RememberMe {
    return Intl.message('Remember me', name: 'RememberMe', desc: '', args: []);
  }

  /// `Forgot password?`
  String get ForgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'ForgotPassword',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
