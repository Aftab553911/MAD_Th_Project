import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinterest/widgets/input_field.dart';
class Credentials extends StatelessWidget {
      final FirebaseAuth _auth=FirebaseAuth.instance;
      final TextEditingController _emailEditingController =TextEditingController(text: " ");
      final TextEditingController _PassEditingController =TextEditingController(text: " ");

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Center(
          child: CircleAvatar(
            radius:100,
            backgroundImage: const AssetImage(
              "images/images/logo1"
            ),
            backgroundColor: Colors.orange.shade800,

        ),
        ),
          const SizedBox(height: 15.0,),
          InputField(
            hintText: "Enter Email",
            icon: Icons.email_rounded,
            obscureText: false,
            textEditingController:_emailEditingController ,
          ),
          const SizedBox(height: 15.0,),
          InputField(
            hintText: "Enter Email",
            icon: Icons.lock,
            obscureText: false,
            textEditingController: _PassEditingController,
          ),
          const SizedBox(height: 15.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: (){
                  // forget password
                },
                child:  Text(
                "forget password?",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),



        ],
      ),




    );
  }
}
