import 'package:shafii/controller/peoms_notifier.dart';
import 'package:shafii/core/constant/color.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<AppColor>(create: (_) => AppColor()),
  ChangeNotifierProvider<PeomsNotifier>(create: (_) => PeomsNotifier()),
];
