import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api_tasks/home/model/post_model.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  List<PostModel>? posts;

  var isDataLoading = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    getApi();
  }

  getApi() async {
    try {
      isDataLoading(true);
      http.Response response = await http.get(
        Uri.tryParse('https://jsonplaceholder.typicode.com/posts')!,
      );
      if (response.statusCode == 200) {
        var resultList = jsonDecode(response.body) as List<dynamic>;
        posts = resultList.map((json) => PostModel.fromJson(json)).toList();
      } else {
      }
    } catch (e) {
      log('Error while getting data is $e');
      debugPrint('Error while getting data is $e');
    } finally {
      isDataLoading(false);
    }
  }
}
