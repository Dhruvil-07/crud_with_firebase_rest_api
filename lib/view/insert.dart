import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                      if(form_key.currentState!.validate())
                        {
                           name = name_controller.text.toString();
                           age = int.parse(age_controller.text);
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
