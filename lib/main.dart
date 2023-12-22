import 'package:errplus5_task/config/sharedpref/shared_preference.dart';
import 'package:errplus5_task/presentation/cubits/app_cubit/app_cubit.dart';
import 'package:errplus5_task/presentation/screens/home/views/home_screen.dart';
import 'package:errplus5_task/presentation/screens/login/login_screen.dart';
import 'package:errplus5_task/presentation/screens/nav_bar_screen.dart';
import 'package:errplus5_task/utils/variables/routerkeys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shimmer/main.dart';

import 'config/style/app_colors.dart';
import 'config/style/themes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  bool isLogin = prefs.getBool('isLogin') ?? false;
  runApp( MyApp(islogged: isLogin,));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key , required this.islogged});
  final bool islogged;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>AppCubit(),
      child: ScreenUtilInit(
        designSize: const Size(430, 932),
        child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: Themes.defaultTheme,
          navigatorKey: RouterKeys.mainNavigatorKey,
          color: AppColors.white,
          home:  islogged ? NavBarScreen() : LoginScreen(),
        ),
      ),
    );
  }
}


