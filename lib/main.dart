import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_api_tasks/home/binding/home_binding.dart';
import 'package:getx_api_tasks/utils/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      getPages: getPages,
      title: 'Rest API Using GetX',
      initialRoute: RouteConstant.homeScreen,
      initialBinding: HomeBinding(),
    );
  }
}