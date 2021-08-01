import 'package:aqarak/constant.dart';
import 'package:aqarak/core/view_model/auth_view_model.dart';
import 'package:aqarak/view/auth/login_screen.dart';
import 'package:aqarak/view/widget/custom_bottom.dart';
import 'package:aqarak/view/widget/custom_password_text_filed.dart';
import 'package:aqarak/view/widget/custom_text.dart';
import 'package:aqarak/view/widget/custom_text_from_fileld.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sign extends StatefulWidget {
  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: CustomText(
            text: "التسجيل               ",
            color: Colors.black,
            alignment: Alignment.center,
          )),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
              ),
              Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: subPrimaryColor),
                child: Icon(
                  Icons.assignment_ind,
                  size: 60.0,
                  color: primaryColor,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              buildTextFild(
                prefix: Icons.person,
                hint: 'user name',
                inputType: TextInputType.name,
              ),
              buildTextFild(
                prefix: Icons.phone,
                hint: 'phone number',
                inputType: TextInputType.phone,
              ),

                 CustomPasswordTextFileld(),
              SizedBox(
                height: 30.0,
              ),
              CustomFlatBottom(onPressed: () {}, text: 'انشاء حساب'),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: 'لدي حساب بالفعل؟    ',
                      alignment: Alignment.center,
                    ),
                    InkWell(
                        onTap: () {
                          Get.to(Login());
                        },
                        child: CustomText(
                          text: 'دخول',
                          color: primaryColor,
                          alignment: Alignment.center,
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
