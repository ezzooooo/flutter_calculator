import 'package:calculator/routes/app_pages.dart';
import 'package:calculator/translations/app_translations.dart';
import 'package:calculator/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    theme: appThemeData,
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
    locale: const Locale('ko', 'KR'),
    translationsKeys: AppTranslation.translations,
  ));
}
