
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_api_tasks/home/binding/home_binding.dart';
import 'package:getx_api_tasks/home/view/home_view.dart';

List<GetPage> getPages = [
  GetPage(
      name: RouteConstant.homeScreen,
      page: () =>  HomeView(),
      binding: HomeBinding()),
];
class RouteConstant{
  static const String homeScreen = '/home_screen';
}