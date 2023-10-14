import 'package:flutter/material.dart';
import 'package:shafii/data/datasource/static/static.dart';
import 'package:shafii/view/screen/peomscreen.dart';

class PeomsNotifier extends ChangeNotifier {
  int kindex = 0;
  List<Map<String, dynamic>> listOfMaps = [];
  int get getKindex => kindex;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> scaffoldKey2 = GlobalKey<ScaffoldState>();

  void goToPeom(BuildContext context, int index) {
    kindex = index;
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => PeomScreen(index: index),
    ));
  }

  void initialData() {
    listOfMaps = data.entries
        .map((entry) => {
              'title': entry.key,
              'verses': entry.value,
            })
        .toList();
  }

  void openDrawer({required homeState}) {
    homeState
        ? scaffoldKey.currentState!.openEndDrawer()
        : scaffoldKey2.currentState!.openEndDrawer();
  }
}
