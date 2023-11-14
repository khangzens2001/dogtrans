import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    this.title,
    this.centerTitle = false,
    this.actions = const [],
    this.automaticallyImplyLeading = false,
    this.body,
    this.onPop,
    super.key,
  });

  final Widget? title;
  final bool centerTitle;
  final List<Widget> actions;
  final bool automaticallyImplyLeading;
  final Widget? body;
  final Function()? onPop;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: actions,
        centerTitle: centerTitle,
        automaticallyImplyLeading: automaticallyImplyLeading,
        leading: automaticallyImplyLeading
            ? GestureDetector(
                onTap: () {
                  onPop?.call();
                  Get.back();
                },
                child: Image.asset(
                  "assets/icons/ic_back.png",
                  width: 38.r,
                  height: 38.r,
                ),
              )
            : null,
        title: title,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/image/app_bg.png",
            fit: BoxFit.fill,
          ),
          if (body != null) body!,
        ],
      ),
    );
  }
}
