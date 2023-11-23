import 'package:crud_with_firebase_rest_api/instances/Instances.dart';
import 'package:crud_with_firebase_rest_api/status/Status.dart';
import 'package:crud_with_firebase_rest_api/view/insert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class show extends StatefulWidget {
  const show({super.key});
  @override
  State<show> createState() => _showState();
}

class _showState extends State<show> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    api_get_data.get_data(api_links.end_point + ".json");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title:  Text("Employe Detail..."),
        backgroundColor: Colors.deepPurple.shade400,
        actions: [

          IconButton(
              onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => insert(),)
                );
              },
              icon: Icon(Icons.add),
          ),

        ],
      ),

      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Obx(
          (){
            switch(status_condition.RxRequestStatus.value)
            {
              case Status.Loading :
                 return Center(child: CircularProgressIndicator());
                 break;

              case Status.Error :
                return  Center(
                  child: Container(
                    height: 200.h,
                    width: 200.w,
                    child: Text("error"),
                  ),
                );
                break;

              case Status.Complate :
                return Obx(
                  () => ListView.builder(
                              itemCount: api_get_data.employe_dtl.length,
                              itemBuilder: (context, index) {
                                return api_get_data.employe_dtl.length == 0 ?
                                    Center(
                                                      child: Text("No Recored Availbale...."),
                                                    )  :
                                    Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 50.sp,
                                                    vertical: 10.sp,
                                                  ),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      border: Border.all(color: Colors.black),
                                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                    ),
                                                    height: 100.sp,
                                                    child:  Row(
                                                        children: [

                                                          //employe image show
                                                          Expanded(
                                                            child: Container(
                                                              child: Image.network(api_get_data.employe_dtl[index].image_url,
                                                                fit: BoxFit.contain,
                                                              ),
                                                            ),
                                                          ),

                                                          SizedBox(width: 5.w,),

                                                          Expanded(
                                                            child: Container(
                                                              child: Column(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children: [

                                                                   Text(api_get_data.employe_dtl[index].name,
                                                                     style: GoogleFonts.lato(
                                                                       color: Colors.black,
                                                                       fontSize: 20.spMin,
                                                                       fontWeight: FontWeight.bold,
                                                                     ),
                                                                   ),

                                                                   SizedBox(height: 5.h,),

                                                                   Text(api_get_data.employe_dtl[index].age,
                                                                     style: GoogleFonts.lato(
                                                                       color: Colors.black,
                                                                       fontSize: 20.spMin,
                                                                       fontWeight: FontWeight.bold
                                                                     ),
                                                                   ),
                                                                ],

                                                              ),
                                                            ),
                                                          ),


                                                          SizedBox(width: 5.w,),

                                                         Container(
                                                             width: 40.w,
                                                             child: Expanded(
                                                               child: Column(
                                                                 mainAxisAlignment: MainAxisAlignment.center,
                                                                 children: [

                                                                   IconButton(
                                                                       onPressed: (){
                                                                        api_delete_data.delete_data(
                                                                            api_links.end_point + "${api_get_data.employe_dtl[index].id}"+".json",
                                                                             index,
                                                                         );
                                                                       },
                                                                       icon: Icon(Icons.delete),
                                                                   ),

                                                                   SizedBox(
                                                                     height: 10.h,
                                                                   ),

                                                                   IconButton(
                                                                     onPressed: (){},
                                                                     icon: Icon(Icons.edit),
                                                                   ),

                                                                 ],
                                                               ),
                                                             ),
                                                            ),



                                                        ],
                                                      ),
                                                  ),
                                                );
                                },
                  ),
                );
                break;
            }
          },
        )
      ),

    );
  }
}


