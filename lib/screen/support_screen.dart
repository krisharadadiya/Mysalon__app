import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysalonapp_flutter/screen/login_singp_page.dart';
import 'package:mysalonapp_flutter/utile/path/image_string_path.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Container(
              height: 65,
              width: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFFFE0CE)),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.to(LoginSingpPage());
                    },
                    icon: Icon(
                      CupertinoIcons.back,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  Text(
                    'Help Center',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Have Any Questions ?',
            style: TextStyle(
                color: Color(0xFFFFE0CE),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'get help from our support team',
            style: TextStyle(
                color: Color(0xFFE1B378),
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          SizedBox(
            height: 40,
          ),
          Icon(
            CupertinoIcons.question_circle,
            color: Color(0xFFFFE0CE),
            size: 90,
          ),

          ///--------------------------------------- 1 st button
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(63),
                side: BorderSide(
                  color: Color(0xFFE1B378),
                ),
              ),
              title: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xFFE1B378), width: 2.0),
                    ),
                    child: Center(
                        child: Icon(
                      Icons.phone,
                      color: Color(0xFFE1B378),
                      size: 30,
                    )),
                  ),
                  SizedBox(
                    width: 0.1,
                  ),
                  Expanded(
                      child: Center(
                          child: Text(
                              '0121 706 02 20',
                            style: TextStyle(
                              color:  Color(0xFFE1B378),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                                ),
                            ),
                          )
                      )
                ],
              ),
              onTap: () {

              },
            ),
          ),
          ///-------------------============= 2 nd button ===========================
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(63),
                side: BorderSide(
                  color: Color(0xFFE1B378),
                ),
              ),
              title: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xFFE1B378), width: 2.0),
                    ),
                    child: Center(
                        child: Icon(
                          Icons.mail_outline,
                          color: Color(0xFFE1B378),
                          size: 30,

                        )),
                  ),
                  SizedBox(
                    width: 0.1,
                  ),
                  Expanded(
                      child: Center(
                        child: Text(
                          'info@starsaloon.com',
                          style: TextStyle(
                            color:  Color(0xFFE1B378),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      )
                  )
                ],
              ),
              onTap: () {

              },
            ),
          ),
          ///======================================= 3 ed button ===========================
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(63),
                side: BorderSide(
                  color: Color(0xFFE1B378),
                ),
              ),
              title: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xFFE1B378), width: 2.0),
                    ),
                    child: Center(
                        child: Icon(
                          Icons.telegram_outlined,
                          color: Color(0xFFE1B378),
                          size: 30,
                        )),
                  ),
                  SizedBox(
                    width: 0.1,
                  ),
                  Expanded(
                      child: Center(
                        child: Text(
                          'Telegram Support',
                          style: TextStyle(
                            color:  Color(0xFFE1B378),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      )
                  )
                ],
              ),
              onTap: () {

              },
            ),
          ),
          /// --------------------------------------- 4 th button ================
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(63),
                side: BorderSide(
                  color: Color(0xFFE1B378),
                ),
              ),
              title: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xFFE1B378), width: 2.0),
                    ),
                    child: Center(
                        child: Icon(
                          Icons.error,
                          color: Color(0xFFE1B378),
                          size: 30,
                        )),
                  ),
                  SizedBox(
                    width: 0.1,
                  ),
                  Expanded(
                      child: Center(
                        child: Text(
                          'Whatsapp Support',
                          style: TextStyle(
                            color:  Color(0xFFE1B378),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      )
                  )
                ],
              ),
              onTap: () {

              },
            ),
          ),
          /// ------------------------------------------ 5 th button ==========================
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(63),
                side: BorderSide(
                  color: Color(0xFFE1B378),
                ),
              ),
              title: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xFFE1B378), width: 2.0),
                    ),
                    child: Center(
                        child: Icon(
                          CupertinoIcons.chat_bubble,
                          color: Color(0xFFE1B378),
                          size: 30,
                        )),
                  ),
                  SizedBox(
                    width: 0.1,
                  ),
                  Expanded(
                      child: Center(
                        child: Text(
                          'Live  Support',
                          style: TextStyle(
                            color:  Color(0xFFE1B378),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      )
                  )
                ],
              ),
              onTap: () {

              },
            ),
          ),
        ],
      ),
    );
  }
}
