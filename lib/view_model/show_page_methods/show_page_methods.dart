import 'dart:convert';

import 'package:crud_with_firebase_rest_api/instances/Instances.dart';
import 'package:crud_with_firebase_rest_api/models/employe_model.dart';
import 'package:crud_with_firebase_rest_api/status/Status.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as hhtp;

class Api_get_data extends GetxController
{
   RxList<Employe_model> employe_dtl = <Employe_model>[].obs;

   Future<void> get_data(String url) async
   {
     employe_dtl.value = [];
      status_condition.setRequestStatus(Status.Loading);
      var response_data = await api_response_manage.get_api(url)
          .then((value){
              Map<String,dynamic> decoded_data = jsonDecode(value);
              List.of(decoded_data.entries).map((e){
                employe_dtl.add(Employe_model.fromjson(e));
              }).toList();
              status_condition.setRequestStatus(Status.Complate);
          })
          .onError((error, stackTrace){
                status_condition.setRequestStatus(Status.Error);
          });
   }
}