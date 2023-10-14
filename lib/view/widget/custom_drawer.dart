import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shafii/core/constant/color.dart';
import 'package:shafii/core/function/alertexitapp.dart';
import 'package:shafii/view/widget/home/custom_list_of_poems.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Image.asset(
              "assets/images/ic_launcher.png",
              width: 100.w,
              height: 100.h,
            ),
            const Align(
                alignment: Alignment.center,
                child: Text(
                  "قائمة القصائد",
                  style: TextStyle(
                      color: AppColor.secondColor,
                      //  AppColor.secondColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                )),
            const CustomListOfPoems(drawer: true),
            InkWell(
              onTap: () => alertExitApp(context),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.exit_to_app,
                    color: AppColor.secondColor,
                  ),
                  Text(
                    "الخروج",
                    style: TextStyle(
                        color: AppColor.secondColor,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
