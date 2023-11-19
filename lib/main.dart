import 'package:crud_with_firebase_rest_api/view/insert.dart';
import 'package:crud_with_firebase_rest_api/view/show.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main()
{
  runApp(my_app());
}

class my_app extends StatelessWidget {
  const my_app({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child){
       return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: show(),
        );
      },
    );
  }
}
