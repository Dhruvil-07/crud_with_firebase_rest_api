import 'package:crud_with_firebase_rest_api/instances/Instances.dart';
import 'package:crud_with_firebase_rest_api/view/insert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class show extends StatelessWidget {
  const show({super.key});

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
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
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
                child: Expanded(
                  child: Row(
                    children: [
                      
                      //employe image show
                      Expanded(
                        child: Container(
                          child: Image.network("data:image/jpeg;base64,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",
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

                               Text("Dhruvil",
                                 style: GoogleFonts.lato(
                                   color: Colors.black,
                                   fontSize: 20.spMin,
                                   fontWeight: FontWeight.bold,
                                 ),
                               ),

                               SizedBox(height: 5.h,),

                               Text(21.toString(),
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
                                   onPressed: (){},
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
              ),
            );
          },
        ),
      ),

    );
  }
}
