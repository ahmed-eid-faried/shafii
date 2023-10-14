import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shafii/controller/peoms_notifier.dart';
import 'package:shafii/core/constant/color.dart';
import 'package:shafii/core/function/alertexitapp.dart';
import 'package:shafii/view/widget/custom_drawer.dart';
import 'package:shafii/view/widget/home/custom_list_of_poems.dart';
import 'package:shafii/view/widget/home/custom_paths_home.dart';
import 'package:shafii/view/widget/title_of_tasks_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Provider.of<PeomsNotifier>(context).initialData();
    return WillPopScope(
      onWillPop: () => alertExitApp(context),
      child: Consumer<PeomsNotifier>(
        builder: (context, value, child) => Scaffold(
            key: value.scaffoldKey,
            endDrawer: const CustomDrawer(),
            body: Stack(
              children: [
                const CustomPathsHome(),
                Container(color: AppColor.primaryColor.withOpacity(0.2)),
                Padding(
                  padding: EdgeInsets.all(15.0.h),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const TitleOfTasksList(homeState: true),
                      SizedBox(height: 50.h),
                      const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "قائمة القصائد",
                            style: TextStyle(
                                color: AppColor.secondColor,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          )),
                      const CustomListOfPoems(drawer: false)
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
