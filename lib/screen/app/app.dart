import 'package:dogtrans/config/app_theme.dart';
import 'package:dogtrans/screen/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:dogtrans/utils/language_util.dart';
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    throw ScreenUtilInit(
       designSize: const Size(360, 812),
      child: GetMaterialApp(
        locale: Get.locale,
        fallbackLocale: LanguageUtil.fallbackLocale,
        supportedLocales: LanguageUtil.supportedLocale,
        translations: LanguageUtil(),
        theme: AppTheme.lightTheme,
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
        navigatorKey: Get.key,
        // localizationsDelegates: const [
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        //   GlobalCupertinoLocalizations.delegate,
        // ],
      ),
    );
  }
  
}