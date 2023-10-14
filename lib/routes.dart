import 'package:flutter/material.dart';
 import 'package:shafii/core/constant/routes.dart';
import 'package:shafii/view/screen/homescreen.dart';
 
Map<String, Widget Function(BuildContext)> routes = {
  // AppRoute.home: (p0) => const MyWidget(),
  AppRoute.home: (p0) => const HomeScreen(),
  // AppRoute.peomscreen: (p0) =>   PeomScreen(index:p0.read<PeomsNotifier>()),
};
