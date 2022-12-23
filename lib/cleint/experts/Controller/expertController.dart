import 'package:get/get.dart';
import 'package:rbcs_framework/cleint/experts/Models/expert_info.dart';

class ExpertsController extends GetxController {
  var con = 0;
  var experts = [
    ExpertInfo(
        name: 'Bruno Bucciarati',
        phone: '+39 179 346 8625',
        photo: 'assets/images/bruno.png'),
    ExpertInfo(
        name: 'Narciso Anasui',
        phone: '+1 546 981 1976',
        photo: 'assets/images/anasui.jpg'),
    ExpertInfo(
        name: 'Carl Johnson',
        phone: '+1 741 258 1149',
        photo: 'assets/images/cj.jpg'),
  ];
  addExpert() {
    experts.add(ExpertInfo(
        name: 'Carl Johnson',
        phone: '+1 741 258 1149',
        photo: 'assets/images/cj.jpg'));
    con++;
    update();
  }
}
