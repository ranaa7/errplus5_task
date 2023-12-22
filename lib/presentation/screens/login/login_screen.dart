import 'package:errplus5_task/config/sharedpref/shared_preference.dart';
import 'package:errplus5_task/config/style/text_styles.dart';
import 'package:errplus5_task/generated/assets.dart';
import 'package:errplus5_task/presentation/components/custom_image_view.dart';
import 'package:errplus5_task/presentation/screens/nav_bar_screen.dart';
import 'package:errplus5_task/widgets/button_component/button_component.dart';
import 'package:errplus5_task/widgets/container_component/custom_container.dart';
import 'package:errplus5_task/widgets/form_field/formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../config/style/app_colors.dart';
import '../../../config/validationform.dart';
import '../../../utils/strings/routes_names.dart';

bool islogin = false;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  static final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  var email = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Stack(children: [
            CustomContainer(height: 340.h),
          
              Positioned(
                top: 120,
                  left: 70,
                  child: CustomImageView(imagePath:Assets.imagesHelmetLogo, width: 250.w ,)
              )
            ],),
          
          
            SizedBox(height:  50.h,),
            Padding(
              padding:  EdgeInsets.only(left: 30.w , right:  30.w),
              child: Text("Email" , style: AppTextStyle.cairoBold20black,),
            ),
              SizedBox(height:  15.h,),
            Padding(
              padding:  EdgeInsets.only(left: 30.w , right:  30.w),
              child: FormFieldComponent(text: email , validator: ValidationForm.emailValidator,hinttext: "Email here", )
            ),
              SizedBox(height:  30.h,),
              Padding(
                padding:  EdgeInsets.only(left: 30.w , right:  30.w),
                child: Text("Password" , style: AppTextStyle.cairoBold20black,),
              ),
              SizedBox(height:  15.h,),
              Padding(
                  padding:  EdgeInsets.only(left: 30.w , right:  30.w),
                  child: FormFieldComponent(text: password , validator: ValidationForm.passwordValidator, hinttext: "Password here", )
              ),
              SizedBox(height:  15.h,),
              Padding(
                padding:  EdgeInsets.only(left: 240.w ,),
                child: Text("Forget Password !" , style: AppTextStyle.cairoBold20black,),
              ),
              SizedBox(height:  35.h,),
              Center(
                child: MainButton(width: 200.w, height: 50.h, text: "Login",
              function: () async{
              if (_formkey.currentState!.validate()) {
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('isLogin', true);

                Navigator.of(context).push(MaterialPageRoute(builder: (context) => NavBarScreen()));



              }
              }
          
            ),
              ),
              SizedBox(height:  20.h,),
              Center(child: Text("Don't have an account?" ,style: AppTextStyle.cairoBold17grey,)),
              Center(child: Text("REGISTER" , style: AppTextStyle.cairoBold20black,)),
          ],),
        ),
      ),
    );
  }
}
