import 'package:dogtrans/config/app_colors.dart';
import 'package:dogtrans/config/app_styles.dart';
import 'package:dogtrans/config/lang/r.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/image/splash_bg"),
          Column(
            children: [
              SizedBox(
                height: 173.h,
              ),
              Image.asset(
                "assets/image/appIcon.png",
                height: 160.h,
                width: 160.w,
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                R.dogTrans.tr,
                style: AppStyles.textSize24.copyWith(
                  color: AppColors.white,
                  fontFamily: "Plus Jakarta Sans",
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              const CircularProgressIndicator(strokeCap: StrokeCap.round),
              SizedBox(height: 12.h),
              Text(
                R.thisActionMayContentAd.tr,
                style: TextStyle(fontSize: 12.sp),
              ),
              SizedBox(height: 65.h),
            ],
          )
        ],
      ),
    );
  }
}
