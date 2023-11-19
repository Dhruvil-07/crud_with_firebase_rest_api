import 'package:crud_with_firebase_rest_api/view/insert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                height: 100.sp,
                color: Colors.red,
                child: Text(index.toString()),
              ),
            );
          },
        ),
      ),

    );
  }
}
