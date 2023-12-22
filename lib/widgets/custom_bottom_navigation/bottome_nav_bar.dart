import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import '../../config/style/app_colors.dart';
import '../../config/style/text_styles.dart';
import '../../generated/assets.dart';
import '../../presentation/components/custom_image_view.dart';


class AppBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int>? onTap;

  const AppBottomNavBar({super.key, required this.currentIndex, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(10),
        topLeft: Radius.circular(10),
      ),
      child: BottomAppBar(
        notchMargin: 2,
        color: AppColors.black,
        height: 90.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _bottomNavItem(text: "Units", icon: FontAwesomeIcons.building, index: 0),
            _bottomNavItem(
                text: "Contacts", icon: FontAwesomeIcons.addressBook  , index: 1),
            _bottomNavItem(
                text: "Home",
                icon: FontAwesomeIcons.house,
                index: 2),
            _bottomNavItem(
                text: "Invoices", icon: FontAwesomeIcons.fileInvoice, index: 3),
            _bottomNavItem(
                text: "Services", icon: FontAwesomeIcons.handHoldingHeart, index: 4),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavItem(
      {required String text, required IconData icon, required int index}) {
    final bool isSelected = currentIndex == index;
    return Expanded(
      child: InkWell(
        onTap: () => onTap?.call(index),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
           Icon(icon ,color: isSelected? AppColors.white:AppColors.grey10,),
              Text(text, style: isSelected?AppTextStyle.cairoSemiBold16white:AppTextStyle.cairoSemiBold15Grey).animate().fade()
          ],
        ),
      ),
    );
  }
}
