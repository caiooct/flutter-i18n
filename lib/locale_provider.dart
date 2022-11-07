import 'package:flutter/material.dart';

class LocaleProvider extends InheritedWidget {
  final ValueNotifier<Locale?> locale = ValueNotifier(null);

  LocaleProvider({
    super.key,
    locale,
    required super.child,
  }) {
    this.locale.value = locale;
  }

  @override
  bool updateShouldNotify(covariant LocaleProvider oldWidget) =>
      oldWidget.locale != locale;

  static LocaleProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LocaleProvider>()!;
  }

  void changeLanguage(String languageCode) {
    locale.value = Locale(languageCode);
  }
}
