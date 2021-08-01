import 'package:aqarak/constant.dart';
import 'package:aqarak/view/auth/sign_in_screen.dart';
import 'package:aqarak/view/widget/custom_bottom.dart';
import 'package:aqarak/view/widget/custom_password_text_filed.dart';
import 'package:aqarak/view/widget/custom_text.dart';
import 'package:aqarak/view/widget/custom_text_from_fileld.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: CustomText(
            text: 'تسجيل الدخول',
            color: Colors.black,
            alignment: Alignment.center,
          )),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundColor: primaryColor,
                backgroundImage: AssetImage("images/3.png"),
              ),
              CustomText(
                text: 'عقارك',
                color: primaryColor,
                fontSize: 40.0,
                alignment: Alignment.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: '   Aqarak',
                    color: Colors.grey,
                    fontSize: 25.0,
                    alignment: Alignment.center,
                  ),
                  Icon(
                    Icons.add_location,
                    color: Colors.grey,
                  )
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              buildTextFild(
                prefix: Icons.phone,
                hint: 'phone number',
                inputType: TextInputType.phone,
              ),
           CustomPasswordTextFileld(),
              SizedBox(
                height: 20.0,
              ),
              CustomFlatBottom(
                onPressed: () {},
                text: 'تسجيل الدخول',
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(text: 'ليس لدي حساب؟'),
                    SizedBox(
                      width: 10.0,
                    ),
                    InkWell(
                        onTap: () {
                        Get.to(Sign());
                        },
                        child: CustomText(
                          text: 'التسجيل  ',
                          color: primaryColor,
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


}
