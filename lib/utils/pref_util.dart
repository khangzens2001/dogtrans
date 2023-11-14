import 'package:hive_flutter/hive_flutter.dart';

class PrefUtil {
  static final ins = PrefUtil._();

  PrefUtil._();

  final String _boxName = "global_state";
  late Box _myBox;

  Future<void> init() async {
    _myBox = await Hive.openBox(_boxName);
  }

  void setRated() {
    _myBox.put("rated", true);
  }

  bool getRated() {
    return _myBox.get("rated", defaultValue: false);
  }

  void setLanguage(String langCode) {
    _myBox.put("lang", langCode);
  }

  String getLanguage() {
    return _myBox.get("lang", defaultValue: "en");
  }
}
