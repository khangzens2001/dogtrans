
import 'package:dogtrans/utils/pref_util.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppController extends GetxController {
  var currentLanguage = "".obs;
  var currentWeightType = 0.obs;
  var currentHeightType = 0.obs;
  PackageInfo packageInfo = PackageInfo(appName: "", packageName: "", version: "", buildNumber: "");

  Future<void> loadDefaultData() async {
    currentLanguage.value = PrefUtil.ins.getLanguage();
    packageInfo = await PackageInfo.fromPlatform();
  }
}
