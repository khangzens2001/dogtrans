import 'package:dogtrans/screen/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'utils/pref_util.dart';

// late AppAdIdManager adIdManager;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await _initCrashlytics();
  await _initAppsFlyer();
  await _initLocalStorage();
  // RemoteConfig.init().then((_) => RemoteConfig.getRemoteConfig());
  _setScreenOrientation();

  _initLocale();

  runApp(MyApp());
}

void _initLocale() {
  Get.updateLocale(Locale(PrefUtil.ins.getLanguage()));
}

Future<void> _initLocalStorage() async {
  // await Hive.initFlutter();
  // Hive.registerAdapter(RecordModelAdapter());

  // await PrefUtil.ins.init();
  // await RecordService.ins.init();
}

void _setScreenOrientation() {
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.top],
  );
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(systemNavigationBarColor: Colors.transparent),
  );
  SystemChrome.setSystemUIChangeCallback((systemOverlaysAreVisible) async {
    if (systemOverlaysAreVisible) {
      await Future.delayed(const Duration(seconds: 3));
      SystemChrome.restoreSystemUIOverlays();
    }
  });
}

Future<void> _initCrashlytics() async {
  // if (kDebugMode) {
  //   //chỉ set chỗ này = true khi muốn test crash ở dev mode
  //   await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
  // } else {
  //   await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  // }
}

Future<void> _initAppsFlyer() async {
  // AppsFlyerOptions appsFlyerOptions = AppsFlyerOptions(
  //   afDevKey: "",
  // );
  //
  // AppsflyerSdk appsflyerSdk = AppsflyerSdk(appsFlyerOptions);
  //
  // await appsflyerSdk.initSdk(
  //     registerConversionDataCallback: true,
  //     registerOnAppOpenAttributionCallback: true,
  //     registerOnDeepLinkingCallback: true);
}