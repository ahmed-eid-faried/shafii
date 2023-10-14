import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shafii/controller/peoms_notifier.dart';

class CustomPoemItems extends StatelessWidget {
  const CustomPoemItems({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 470.h,
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: Provider.of<PeomsNotifier>(context)
            .listOfMaps[index]['verses']
            .length,
        itemBuilder: (context, i) {
          return ListTile(
              title: Align(
                  alignment:
                      i % 2 == 0 ? Alignment.centerRight : Alignment.centerLeft,
                  child: Text(
                      "${Provider.of<PeomsNotifier>(context).listOfMaps[index]['verses'][i]}",
                      style:
                          TextStyle(fontSize: 22.sp, fontFamily: "andlso"))));
        },
      ),
    );
  }
}
