import 'dart:convert';
import 'dart:io';

import 'package:crud_with_firebase_rest_api/excaption/Excaption.dart';
import 'package:crud_with_firebase_rest_api/repo/Api_abstact_method/Api_abstract_methods.dart';
import 'package:http/http.dart' as http;

class Api_response_manage extends Api_abstract_method
{

   //response manage method
    dynamic response_return(http.Response response)
    {
       switch(response.statusCode)
       {
         case 200 :
            return response.body;
            break;

         case 405 :
            throw Internet_excaption(error_msg: "No Internet");
            break;
       }
    }



    //method implimentation

    //global variable for  api response
    var api_reponse;

   //1. Get method implimentation
    @override
   Future<dynamic> get_api(String url) async
   {
      try
      {
        var Response = await http.get(Uri.parse(url));
        var api_reponse = response_return(Response);
        return api_reponse;
      }on SocketException
      {
        throw Internet_excaption(error_msg: "No Internet");
      }
   }


   //2.POst method implimentation
    @override
  Future<dynamic> post_api(String url , Map<String,dynamic> data) async
  {
        try
        {
          var Response = await http.post(
              Uri.parse(url),
              body: jsonEncode(data),
          );
          api_reponse = response_return(Response);
          return api_reponse;
        } on SocketException
        {
           throw Internet_excaption(error_msg: "No Internet");
        }
  }




}