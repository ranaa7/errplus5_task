import 'package:flutter/material.dart';

import '../../config/style/app_colors.dart';
import '../../config/style/text_styles.dart';


class MainButton extends StatelessWidget {
  final double width;
  final double height;

  final String text;

  final VoidCallback? function;
  final bool isLoading;


  const MainButton(
      {super.key,
        required this.width,
        required this.height ,
        required this.text,
        this.isLoading = false,
        required this.function});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:  function,
        style: ElevatedButton.styleFrom(
    minimumSize:  Size(width, height),
    backgroundColor: AppColors.yellow1,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30))),
  ),

  child: Text(text , style: AppTextStyle.cairoBold20black,),

    );
  }
}









//   ElevatedButton(
//   style: ElevatedButton.styleFrom(
//     minimumSize: const Size(200, 50),
//     backgroundColor: AppColors.yellow1,
//     shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(Radius.circular(30))),
//   ), onPressed: () async{
//   if (formkey?.currentState?.validate() ?? false) {
//
//     Navigator.pushNamed(context, RouteName.homeScreen);
//   }
// },
//
//   child: Text("Login" , style: AppTextStyle.cairoBold20black,),
//
// );