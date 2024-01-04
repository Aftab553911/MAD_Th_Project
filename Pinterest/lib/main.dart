import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:pinterest/log_in/login_screen.dart';
/*
void main() {

  WidgetsFlutterBinding.ensureInitialized();
    // await Firebase.initializeApp();
  runApp( MyApp());

}*/
void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure that Flutter is initialized
  await Firebase.initializeApp(); // Initialize Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   final Future<FirebaseApp> _initialization=Firebase.initializeApp();


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
        future: _initialization,

        builder: (context,snapshot){

         if(snapshot.connectionState== ConnectionState.waiting){
           /* return const MaterialApp(
              home: Scaffold(
                body: Center(
                  child: Center(
                    child: Text("Welcome to photosharing app"),
                  ),
                ),
              ),
            );*/
           return MaterialApp(

             title: "Flutter photo sharing app",

             home: LoginScreen(),
           );

         }
          else if (snapshot.hasData){
            return MaterialApp(

              title: "Flutter photo sharing app",

              home: LoginScreen(),
            );

          }
          else
            {
          return const MaterialApp(
            home: Scaffold(
              body: Center(
                child: Center(
                  child: Text("An error Occured please wait"),
                ),
              ),
            ),
          );
            }


        }




    );
  }
}

