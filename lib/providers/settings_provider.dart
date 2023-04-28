import 'package:flutter/cupertino.dart';
import '../l10n/language.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsProvider with ChangeNotifier {
  SettingsProvider() {
    _asyncInit();
  }

  Locale? _locale;
  Locale? get locale => _locale;

  _asyncInit() async {

  }

  changeLanguage(Language language) {
    _locale = Locale(language.languageCode);
    notifyListeners();
  }

  static List<Language> getLanguages(BuildContext context) {
    return <Language>[
      Language(AppLocalizations.of(context)!.english, AppLocalizations.of(context)!.en),
      Language(AppLocalizations.of(context)!.russian, AppLocalizations.of(context)!.ru),
    ];
  }



}