import 'package:crud_with_firebase_rest_api/view/insert.dart';
import 'package:crud_with_firebase_rest_api/view/show.dart';
import 'package:crud_with_firebase_rest_api/view/update.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyD9QERSAHd3GZEA8K8ryyi4nbIti6FgO_M",
        appId: "1:848905820742:android:9b568f741bc891a5640847",
        messagingSenderId: "848905820742",
        projectId: "firestorerestapi-70c91",
    ),
  );
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
