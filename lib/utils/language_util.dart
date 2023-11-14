import 'dart:ui';

import 'package:dogtrans/config/lang/es.dart';
import 'package:get/get.dart';

import 'package:dogtrans/config/lang/de.dart';
import 'package:dogtrans/config/lang/en.dart';
import 'package:dogtrans/config/lang/fr.dart';
import 'package:dogtrans/config/lang/hi.dart';
import 'package:dogtrans/config/lang/id.dart';
import 'package:dogtrans/config/lang/pt.dart';

class LanguageUtil extends Translations {
  static const fallbackLocale = Locale('en', 'US');

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enLanguagePackage,
        'es_ES': esLanguagePackage,
        'de_DE': deLanguagePackage,
        'pt_PT': ptLanguagePackage,
        'hi_HI': hiLanguagePackage,
        'fr_FR': frLanguagePackage,
        'id_ID': idLanguagePackage,
      };
  static const supportedLocale = [
    Locale('en', 'US'),
    Locale('es', 'ES'),
    Locale('de', 'DE'),
    Locale('pt', 'PT'),
    Locale('hi', 'HI'),
    Locale('fr', "FR"),
    Locale('id', "ID"),
  ];

  ///this is for UI show
  static List<LanguageModel> languages = [
    const LanguageModel(name: "English", code: "en", icon: "assets/icons/ic_en.png"),
    const LanguageModel(name: "French", code: "fr", icon: "assets/icons/ic_fr.png"),
    const LanguageModel(name: "German", code: "de", icon: "assets/icons/ic_de.png"),
    const LanguageModel(name: "Hindi", code: "hi", icon: "assets/icons/ic_hi.png"),
    const LanguageModel(name: "Indonesian", code: "id", icon: "assets/icons/ic_id.png"),
    const LanguageModel(name: "Portuguese", code: "pt", icon: "assets/icons/ic_pt.png"),
    const LanguageModel(name: "Spanish", code: "es", icon: "assets/icons/ic_es.png"),
  ];

  static void changeLocale(String languageCode) {
    final locale = _getLocaleFromLanguage(languageCode: languageCode);
    Get.updateLocale(locale);
  }

  static Locale _getLocaleFromLanguage({String? languageCode}) {
    final lang = languageCode ?? Get.deviceLocale!.languageCode;
    for (int i = 0; i < supportedLocale.length; i++) {
      if (lang == supportedLocale[i].languageCode) return supportedLocale[i];
    }
    return Get.locale!;
  }
}

class LanguageModel {
  final String name;
  final String code;
  final String icon;

  const LanguageModel({
    required this.name,
    required this.code,
    required this.icon,
  });
}
