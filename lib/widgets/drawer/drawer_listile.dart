import 'package:errplus5_task/config/style/app_colors.dart';
import 'package:errplus5_task/config/style/text_styles.dart';
import 'package:flutter/material.dart';

class DrawerListile extends StatelessWidget {
  const DrawerListile({super.key , required this.iconData , required this.text});
 final IconData iconData;
 final String text;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconData , color: AppColors.yellow,),
      title: Text(text , style: AppTextStyle.cairoSemiBold16white,),onTap: (){},
    );
  }
}
