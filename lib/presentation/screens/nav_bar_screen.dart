
import 'package:errplus5_task/presentation/screens/contacts_screen.dart';
import 'package:errplus5_task/presentation/screens/invoices_screen.dart';
import 'package:errplus5_task/presentation/screens/services_screen.dart';
import 'package:errplus5_task/presentation/screens/units_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/style/app_colors.dart';
import '../../generated/assets.dart';
import '../../utils/strings/routes_names.dart';
import '../../widgets/custom_bottom_navigation/bottome_nav_bar.dart';
import '../components/custom_image_view.dart';
import '../cubits/app_cubit/app_cubit.dart';
import '../cubits/app_cubit/app_state.dart';

import 'home/views/home_screen.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<NavBarScreen> {
  @override
  Widget build(BuildContext context) {
    final AppCubit appCubit = AppCubit.get(context);
    return BlocBuilder<AppCubit, AppState>(
        builder: (context, state) => Scaffold(
          extendBody: true,
          body: [
            UnitsScreen(),
            ContactsScreen(),
            const HomeScreen(),
            InvoiceScreen(),
            ServiceScreen()
          ][appCubit.currentIndex],
          bottomNavigationBar: AppBottomNavBar(
            currentIndex: appCubit.currentIndex,
            onTap: appCubit.changeCurrentIndex,
          ),
        ));
  }
}
