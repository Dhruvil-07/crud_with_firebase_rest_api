//create instances of multiple classes


import 'package:crud_with_firebase_rest_api/repo/Api_abstact_method/Api_abstract_methods.dart';
import 'package:crud_with_firebase_rest_api/repo/Api_links/Api_links.dart';
import 'package:crud_with_firebase_rest_api/repo/Api_response_manage/Api_response_manage.dart';
import 'package:crud_with_firebase_rest_api/status/Status.dart';
import 'package:crud_with_firebase_rest_api/view_model/Insert_page_method/Insert_page_method.dart';
import 'package:crud_with_firebase_rest_api/view_model/delete_detail_method/delete_dtl_method.dart';
import 'package:crud_with_firebase_rest_api/view_model/show_page_methods/show_page_methods.dart';
import 'package:get/get.dart';


//imagePic class instance
Image_pic image_pic = Get.put(Image_pic());

//status condition class instance
Status_condition status_condition = Get.put(Status_condition());

//api post data instance
Api_post_data api_post_data = Api_post_data();

//api get data instance
Api_get_data api_get_data = Api_get_data();

//api delete data
Api_delete_data api_delete_data = Get.put(Api_delete_data());

//api link instance
Api_links api_links = new Api_links();

//api response manage instance
Api_response_manage api_response_manage = Api_response_manage();

