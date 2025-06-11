import 'package:app_watchers_assessment/core/constants/app_colors.dart';
import 'package:app_watchers_assessment/core/constants/app_constants.dart';
import 'package:app_watchers_assessment/core/constants/app_strings.dart';
import 'package:app_watchers_assessment/core/theme/global_app_bar_theme.dart';
import 'package:app_watchers_assessment/features/bottom_nav/ui/bottom_nav.dart';
import 'package:app_watchers_assessment/features/home/ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(AppConstants.designWidth, AppConstants.designHeight),
      splitScreenMode: true,
      minTextAdapt: false,
      builder: (_, child){
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            systemStatusBarContrastEnforced: true,
          ),
          child: MaterialApp(
            title: AppStrings.appName,
            theme: ThemeData(
              useMaterial3: false,
              primaryColor: AppColors.primaryBlue,
              scaffoldBackgroundColor: AppColors.neutralWhite,
              appBarTheme: globalAppBarTheme,
            ),
            debugShowCheckedModeBanner: false,
            home: const BottomNav(),
          ),
        );
      },
    );
  }

}