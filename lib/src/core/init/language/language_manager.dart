import 'package:flutter/material.dart';

class LanguageManager {
  final enLocale = const Locale('en', 'US');
  final trLocale = const Locale('tr', 'TR');
  final frLocale = const Locale('fr', 'FR');
  final deLocale = const Locale('de', 'DE');

  static Locale? currentLocale;

  static Locale? localeResolutionCallback(
    Locale? locale,
    Iterable<Locale> supportedLocales,
  ) {
    for (final element in supportedLocales) {
      if (element == locale!) {
        currentLocale = element;
        return element;
      }
    }
    currentLocale = supportedLocales.first;

    return supportedLocales.first;
  }

  List<Locale> get supportedLocales => [
        enLocale,
        trLocale,
        frLocale,
        deLocale,
      ];
}
