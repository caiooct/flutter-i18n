import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'locale_provider.dart';

enum LanguageEnum {
  en('en'),
  es('es'),
  pt('pt');

  const LanguageEnum(this.code);
  final String code;
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App Demo'),
        actions: [
          PopupMenuButton<LanguageEnum>(
            onSelected: (language) =>
                LocaleProvider.of(context).changeLanguage(language.code),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: LanguageEnum.en,
                  child: Text(AppLocalizations.of(context).english),
                ),
                PopupMenuItem(
                  value: LanguageEnum.es,
                  child: Text(AppLocalizations.of(context).spanish),
                ),
                PopupMenuItem(
                  value: LanguageEnum.pt,
                  child: Text(AppLocalizations.of(context).portuguese),
                ),
              ];
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          AppLocalizations.of(context).happyBirthday,
          style: Theme.of(context).textTheme.displayMedium,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
