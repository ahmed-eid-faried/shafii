import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shafii/controller/peoms_notifier.dart';
import 'package:shafii/core/constant/color.dart';
import 'package:shafii/core/function/alertexitapp.dart';
import 'package:shafii/view/widget/custom_drawer.dart';
import 'package:shafii/view/widget/peomscreen/custom_poem_items.dart';
import 'package:shafii/view/widget/home/custom_paths_home.dart';
import 'package:shafii/view/widget/title_of_tasks_list.dart';

class PeomScreen extends StatelessWidget {
  const PeomScreen({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    Provider.of<PeomsNotifier>(context).initialData();
    return WillPopScope(
      onWillPop: () => backAppHome(context),
      child: Consumer<PeomsNotifier>(
        builder: (context, value, child) => Scaffold(
            key: value.scaffoldKey2,
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
                      const TitleOfTasksList(homeState: false),
                      SizedBox(height: 50.h),
                      Align(
                          alignment: Alignment.center,
                          child: Text(
                            "${Provider.of<PeomsNotifier>(context).listOfMaps[index]['title']}",
                            style: const TextStyle(
                                color: AppColor.secondColor,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          )),
                      CustomPoemItems(index: index),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
