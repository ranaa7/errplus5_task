import 'package:errplus5_task/config/sharedpref/shared_preference.dart';
import 'package:errplus5_task/config/style/app_colors.dart';
import 'package:errplus5_task/widgets/drawer/drawer_listile.dart';
import 'package:errplus5_task/widgets/drawer/header_drawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../presentation/screens/login/login_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          decoration: BoxDecoration(color: AppColors.black),
          child: ListView(
            children: [
              Container(
                child: Column(
                  children: [
                   HeaderDrawer()
                  ],
                ),
              ),
              DrawerListile(iconData: FontAwesomeIcons.volumeHigh, text: "Announcement"),
              DrawerListile(iconData: FontAwesomeIcons.addressBook, text: "Contacts"),
              DrawerListile(iconData: FontAwesomeIcons.building, text: "Units"),
              DrawerListile(iconData: FontAwesomeIcons.handHoldingHeart, text: "Services"),
              DrawerListile(iconData:FontAwesomeIcons.fileInvoice, text: "Invoices"),
              DrawerListile(iconData:FontAwesomeIcons.qrcode, text: "Visitors QR"),
              DrawerListile(iconData:FontAwesomeIcons.ticket, text: "Tickets"),
              DrawerListile(iconData:Icons.headset_mic_outlined, text: "Contact us"),
              DrawerListile(iconData:Icons.miscellaneous_services, text: "Support"),


              Divider(thickness: 3,),
              Center(child: TextButton(child: Text("Change Password" , style: TextStyle(color: AppColors.yellow)),onPressed: ()async{
             //   CacheHelper.removeData(key: 'isLogin');
                final prefs = await SharedPreferences.getInstance();
                 prefs.remove('isLogin');
              },))

            ],
          ),
        )
    );
  }
}
