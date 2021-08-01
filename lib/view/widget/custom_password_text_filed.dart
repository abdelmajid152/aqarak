 import 'package:aqarak/core/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CustomPasswordTextFileld extends StatelessWidget {


   @override
   Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.all(16.0),
       child: Transform.translate(
         offset: Offset(0, 0),
         child: Container(
           height: 50.0,
           width: double.infinity,
           decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(4.0),
               color: Colors.green[50]),
           child: GetBuilder<AuthViewModel>(
             init: AuthViewModel(),

             builder: (value)=> TextField(
               obscureText: value.visibility,
               decoration: InputDecoration(
                 hintStyle: TextStyle(
                   color: Colors.grey,
                 ),
                 border: InputBorder.none,
                 prefixIcon: Icon(
                   Icons.lock,
                   color: Color(0xff15B89B),
                 ),
                 suffixIcon: IconButton(color: Colors.grey,
                   icon: Icon(

                       value.visibility
                           ? Icons.visibility
                           : Icons.visibility_off),onPressed: (){value.visibilityChang();},
                 ),
                 hintText: 'password',

               ),
             ),
           ),
         ),
       ),
     );
   }
 }
