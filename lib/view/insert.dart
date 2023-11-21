import 'package:crud_with_firebase_rest_api/instances/Instances.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class insert extends StatelessWidget {
  const insert({super.key});

  @override
  Widget build(BuildContext context) {

    //from key
    final form_key = GlobalKey<FormState>();

    //text field controller
    TextEditingController name_controller = TextEditingController();
    TextEditingController age_controller = TextEditingController();

    //variable for data
    String name;
    int age;

    return Scaffold(

      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Form(
          key: form_key,
          child: Column(
            children: [

              SizedBox(height: 30.h,),

              Text(
                "Enter Employe Detail...",
                style: GoogleFonts.alegreya(
                  color: Colors.black,
                  fontSize: 30.spMin,
                ),
              ),
              
              SizedBox(height: 30.h,), 
              
              Obx(
                () => CircleAvatar(
                  child: image_pic.image_path.isEmpty ? null :
                Image.network(image_pic.image_path.toString(),
                  fit: BoxFit.contain,
                  ),
                  radius: 100.0,
                ),
              ),

              SizedBox(height: 10.h,),

              IconButton(
                  onPressed: (){
                    image_pic.pic_image();
                  },
                  icon: Icon(Icons.camera),
              ),
              
              SizedBox(height: 30.h,),

              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.sp,
                  horizontal: 50.w,
                ),
                child: TextFormField(
                  controller: name_controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.sp),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.sp),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    errorBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.sp),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    hintText: "Enter Name",
                  ),
                  cursorColor: Colors.black,
                  validator: (value) {
                    if(value!.isEmpty)
                      {
                        return "Enter  Value";
                      }

                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.sp,
                  horizontal: 50.w,
                ),
                child: TextFormField(
                  controller: age_controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.sp),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.sp),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    errorBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.sp),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    hintText: "Enter Age",
                  ),
                  cursorColor: Colors.black,
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return "Enter Age";
                    }
                  },
                ),
              ),


              SizedBox(height: 30.h,),

              Container(
                height: 50.h,
                width: 70.w,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple.shade400,
                    ),
                    onPressed: (){
                      if(form_key.currentState!.validate() && image_pic.image_path.isNotEmpty)
                        {
                            Map<String,dynamic> data =
                                {
                                   'name' : name_controller.text.toString(),
                                   'age' :  age_controller.text.toString(),
                                   'image_url' : image_pic.image_path.toString(),
                                };

                            api_post_data.post_data(api_links.end_point, data,context);

                        }
                      else
                        {
                           print("Plasee enter all valus");
                        }
                    },
                    child: Text("Submit")
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
