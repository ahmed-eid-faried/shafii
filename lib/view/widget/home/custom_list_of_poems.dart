import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shafii/controller/peoms_notifier.dart';
import 'package:shafii/core/constant/color.dart';

class CustomListOfPoems extends StatelessWidget {
  const CustomListOfPoems({super.key, required this.drawer});
  final bool drawer;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: drawer == true ? 450.h : 470.h,
      color: drawer == true ? AppColor.secondColor : null,
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: Provider.of<PeomsNotifier>(context).listOfMaps.length,
        itemBuilder: (contextk, index) {
          return ListTile(
              onTap: () {
                Provider.of<PeomsNotifier>(context, listen: false)
                    .goToPeom(context, index);
              },
              title: Align(
                  alignment: Alignment.center,
                  child: Text(
                      "${Provider.of<PeomsNotifier>(context).listOfMaps[index]['title']}",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 22.sp, fontFamily: "andlso"))));
        },
      ),
    );
  }
}
