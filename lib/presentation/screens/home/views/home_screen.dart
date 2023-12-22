import 'package:errplus5_task/config/style/text_styles.dart';
import 'package:errplus5_task/presentation/components/image_container.dart';
import 'package:errplus5_task/presentation/screens/home/views/widgets/Row_image_component.dart';
import 'package:errplus5_task/utils/strings/routes_names.dart';
import 'package:errplus5_task/widgets/button_component/button_component.dart';
import 'package:errplus5_task/widgets/container_component/custom_container.dart';
import 'package:errplus5_task/widgets/drawer/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../generated/assets.dart';
import '../../../components/custom_image_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
     drawer: AppDrawer(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Stack(

              children: [
              CustomContainer(height: 240.h),
               Row(
                 crossAxisAlignment: CrossAxisAlignment.start,

                 children: [
                   Padding(
                     padding: EdgeInsets.only(top: 70.h),
                     child: IconButton(onPressed: (){
                        _globalKey.currentState?.openDrawer();

                     }, icon: Icon(Icons.dehaze_rounded)),
                   ),
                   Padding(
                     padding:  EdgeInsets.only(top: 80.h, left: 70.w),
                     child: Column(

                       children: [
                       Text("Home " , style:  AppTextStyle.cairoBold20black,),
                       Text(" Offers and Deals" , style:  AppTextStyle.cairoBold20black,),
                     ],),
                   ),

                 ],
               ),

              Padding(
                padding:  EdgeInsets.only(top: 140.h, left: 90.w),
                child: CustomImageView(imagePath:Assets.imagesTool, width: 250.w ,),
              )
            ],),



          RowImage()


          ],),
        ),
    );
  }
}
