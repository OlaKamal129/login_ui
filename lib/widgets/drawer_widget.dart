import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inst_meters/theme/app_colors.dart';
import 'package:inst_meters/widgets/app_text_styles.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      backgroundColor: AppColors.lightBgColor,
      // width: 320.w,
      
      clipBehavior: Clip.none,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 42.h,
                // alignment: Alignment(0, 0),
                color: AppColors.lightBgColor,
                child: Text(
                  "تسجيل العدادات", //TODO:loclization
                  style: AppTextStyles.styleS14W600(
                    color: AppColors.mainColors,
                  ).copyWith(fontSize: 24.sp),
                ),
              ),
              SizedBox(height: 24.h),
              Container(
                height: 172.h,
               padding: EdgeInsetsDirectional.all(19),
          
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "data1", //TODO:loclization
                      style: AppTextStyles.styleS22W700(
                        color: AppColors.mainColors,
                      ).copyWith(fontSize: 24.sp),
                    ),
                    Text(
                      "data2", //TODO:loclization
                      style: AppTextStyles.styleS22W700(
                        color: AppColors.mainColors,
                      ),
                    ),
                    Text(
                      "data3", //TODO:loclization
                      style: AppTextStyles.styleS14W400(
                        color: AppColors.mainColors,
                      ),
                    ),
                    Text(
                      "data4", //TODO:loclization
                      style: AppTextStyles.styleS14W400(
                        color: AppColors.mainColors,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 49.h),
          
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(19),
                    child: SizedBox(
                      
                       height: 60.h,
                  width: 272.w,
                    
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(19),
                    child: SizedBox(
                      height: 60.h,
                      width: 272.w,
                      child: Row(
                        children: [
                           Icon(Icons.arrow_back, color: AppColors.lightSecTextColor),
                            Spacer(),
                          Text("الملف الشخصي", style: AppTextStyles.styleS14W400()),
                            SizedBox(width: 12,),
                           Image.asset("assets/images/profile.png"),
                        ],
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(19),
                  child: SizedBox(
                  height: 60.h,
                  width: 272.w,
                  child: Row(
                    children: [
                       Icon(Icons.arrow_back, color: AppColors.lightSecTextColor),
                       Spacer(),
                      Text("تغيير كلمة المرور", style: AppTextStyles.styleS14W400()),
                        SizedBox(width: 12,),
                        Icon(Icons.lock, color: AppColors.lightSecTextColor),
                    ],
                  ),
                              ),
                ),
              
               
                ],
              ),
          
             
          
              Container(
                height: 60.h,
                width: 272.w,
          
                child: Padding(
                  padding: const EdgeInsets.all(12),
          
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/login.png",color: AppColors.logColor,),
                      Spacer(),
                      Text("تسجيل الخروج", style: AppTextStyles.styleS14W400(color: AppColors.logColor)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
