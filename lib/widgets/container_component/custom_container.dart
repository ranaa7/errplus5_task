import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/assets.dart';
import '../../presentation/components/custom_image_view.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key , required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        foregroundDecoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.transparent, Colors.transparent, Colors.white ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0, 0.2, 0.8, 1],
          ),
        ),
        child: CustomImageView(imagePath:Assets.imagesEng , width: double.infinity , fit: BoxFit.fill ,  )
    );
  }
}
