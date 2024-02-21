import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api_tasks/home/controller/home_controller.dart';
import 'package:getx_api_tasks/home/model/post_model.dart'; // Import the PostModel

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(
          'Posts',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Obx(() {
        if (controller.isDataLoading.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (controller.posts == null || controller.posts!.isEmpty) {
          return Center(
            child: Text('No data available'),
          );
        } else {
          return ListView.builder(
            itemCount: controller.posts!.length,
            itemBuilder: (context, index) {
              PostModel post = controller.posts![index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                  tileColor: Colors.orangeAccent,
                  title: Text(
                    post.title,
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    post.body,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              );
            },
          );
        }
      }),
    );
  }
}
