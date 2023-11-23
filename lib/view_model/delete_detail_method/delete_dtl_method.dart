import 'package:crud_with_firebase_rest_api/instances/Instances.dart';
import 'package:crud_with_firebase_rest_api/models/employe_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Api_delete_data extends GetxController
{
   Future<void> delete_data(String url , int index) async
   {
     var response = await http.delete(Uri.parse(url));
     print(response.statusCode);
   }
}