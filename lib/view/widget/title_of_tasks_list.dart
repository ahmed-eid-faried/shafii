import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shafii/controller/peoms_notifier.dart';

class TitleOfTasksList extends StatelessWidget {
  const TitleOfTasksList({super.key, required this.homeState});
  final bool homeState;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 20),
        const Spacer(),
        Text('شعر الأمام الشافعى',
            style: TextStyle(
                color: Colors.white,
                fontSize: 38.sp,
                fontWeight: FontWeight.bold)),
        const Spacer(),
        Consumer<PeomsNotifier>(
          builder: (context, value, child) => IconButton(
              onPressed: () {
                value.openDrawer(homeState: homeState);
              },
              icon: Icon(Icons.menu, color: Colors.white, size: 40.r)),
        ),
      ],
    );
  }
}
