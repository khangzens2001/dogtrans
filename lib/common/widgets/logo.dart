import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width / 2,
      child: Image.asset(
        "assets/icons/ic_logo.png",
        fit: BoxFit.fill,
      ),
    );
  }
}
