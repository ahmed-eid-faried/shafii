import 'dart:io';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:shafii/core/constant/routes.dart';

Future<bool> alertExitApp(context) {
  AwesomeDialog(
    context: context,
    dialogType: DialogType.info,
    animType: AnimType.rightSlide,
    // title: "انتباه",
    desc: "هل تريد الخروج من التطبيق؟",
    // titleTextStyle: const TextStyle(fontFamily: ""),
    descTextStyle: const TextStyle(fontFamily: ""),
    btnCancelOnPress: () => Navigator.of(context).canPop(),
    btnOkOnPress: () => exit(0),
  ).show();
  return Future.value(false);
}

Future<bool> backAppHome(context) {
  // HomeControllerImp.currentpage = 0;
  Navigator.of(context)
      .pushNamedAndRemoveUntil(AppRoute.home, (route) => false);
  // Get.offNamed(AppRoute.home);
  // Get.back(closeOverlays: true);
  return Future.value(true);
}
