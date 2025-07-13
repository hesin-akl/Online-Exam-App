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

  // skipped getter for the 'Sign Up' key

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

  // skipped getter for the 'Confirm password' key

  // skipped getter for the 'Enter your email' key

  // skipped getter for the 'Enter your password' key

  // skipped getter for the 'Enter password' key

  // skipped getter for the 'Enter phone number' key

  // skipped getter for the 'Enter user name' key

  // skipped getter for the 'Enter first name' key

  // skipped getter for the 'Enter last name' key

  // skipped getter for the 'Enter verification code' key

  // skipped getter for the 'New password' key

  // skipped getter for the 'Forget password' key

  // skipped getter for the 'Please enter your email associated to your account' key

  // skipped getter for the 'Email verification' key

  // skipped getter for the 'Please enter your code that send to your email address' key

  // skipped getter for the 'Didn\'t receive code?' key

  /// `Resend`
  String get Resend {
    return Intl.message('Resend', name: 'Resend', desc: '', args: []);
  }

  // skipped getter for the 'Reset password' key

  // skipped getter for the 'Password must not be empty and must contain 6 characters with upper case letter and one number at least' key

  // skipped getter for the 'This email is not valid' key

  // skipped getter for the 'This user name is not valid' key

  // skipped getter for the 'Password not matched' key

  // skipped getter for the 'Invalid code' key

  // skipped getter for the 'User name' key

  // skipped getter for the 'First name' key

  // skipped getter for the 'Last name' key

  // skipped getter for the 'Phone number' key

  // skipped getter for the 'Already have an account?' key

  // skipped getter for the 'Don\'t have an account?' key

  // skipped getter for the 'Remember me' key

  // skipped getter for the 'Forgot password?' key
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
