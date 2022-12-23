import 'package:get/get.dart';
import 'package:rbcs_framework/cleint/experts/view/expertsScreen.dart';

import '../cleint/Home/view/cleintHomeScreen.dart';

class AppPages {
  AppPages._();
  static const cleintHomePage = '/cleinthomepage';
  static const expert = '/expert';

  static final routes = [
    GetPage(name: cleintHomePage, page: () => CleintHomeScreen()),
    GetPage(name: expert, page: () => ExpertsScreen())
  ];
}
