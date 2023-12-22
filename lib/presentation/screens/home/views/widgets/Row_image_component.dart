import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/style/text_styles.dart';
import '../../../../../generated/assets.dart';
import '../../../../../widgets/button_component/button_component.dart';
import '../../../../components/image_container.dart';

class RowImage extends StatelessWidget {
  const RowImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: ImageContainer(height: 200, width: 400 , image: Assets.imagesNoorCity,)),
        Row(
          children: [
            Padding(
              padding:  EdgeInsets.only( left: 30.w),
              child: Text("Noor City" , style: AppTextStyle.cairoBold20black,),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 170.w),
              child: MainButton(width: 50, height: 30, text: "Details", function: (){}),
            )
          ],
        ),
        SizedBox(height: 30,),
        Center(child: ImageContainer(height: 200, width: 400 , image: Assets.imagesMountainView,)),
        Row(
          children: [
            Padding(
              padding:  EdgeInsets.only( left: 30.w),
              child: Text("Mountain view" , style: AppTextStyle.cairoBold20black,),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 120.w),
              child: MainButton(width: 50, height: 30, text: "Details", function: (){}),
            ),
          ],
        ),
      ],
    );
  }
}
