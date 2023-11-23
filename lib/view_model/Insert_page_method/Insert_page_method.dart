import 'dart:convert';
import 'package:crud_with_firebase_rest_api/instances/Instances.dart';
import 'package:crud_with_firebase_rest_api/repo/Api_response_manage/Api_response_manage.dart';
import 'package:crud_with_firebase_rest_api/status/Status.dart';
import 'package:crud_with_firebase_rest_api/view/show.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;


//for image picker
class Image_pic extends GetxController
{
    //obj of image picker
    ImagePicker imagePicker = new ImagePicker();

    //var for save choose image path
    RxString image_path = "".obs;

    //method for chooose image
   Future<void> pic_image() async
   {
     try
     {
             final picked_image = await imagePicker.pickImage(
                 source: ImageSource.gallery);

             if (picked_image != null) {
               image_path.value = picked_image.path.toString();
               print(image_path);
             }
             else {
               print("No Image is picjked");
             }
     }
     catch(e)
     {
        print(e);
     }
   }

}



class Api_post_data extends GetxController
{
    Future<void> post_data(String url , Map<String ,dynamic> data, BuildContext context)  async
    {

      status_condition.setRequestStatus(Status.Loading);
      var response_data = api_response_manage.post_api(url, data)
      .then((value){
        status_condition.setRequestStatus(Status.Complate);
        print(value);
      })
      .onError((error, stackTrace){
        status_condition.setRequestStatus(Status.Error);
        print(error);
      })
      .whenComplete((){
        api_get_data.get_data(api_links.end_point + ".json");
        Navigator.pop(context);
      });
    }


}