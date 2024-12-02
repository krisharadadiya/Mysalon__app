import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysalonapp_flutter/screen/SendmessageScreen.dart';
import 'package:mysalonapp_flutter/screen/center_button_click_screen.dart';
import 'package:mysalonapp_flutter/screen/client_Screen.dart';
import 'package:mysalonapp_flutter/screen/client_listscreen.dart';
import 'package:mysalonapp_flutter/screen/clients.dart';
import 'package:mysalonapp_flutter/utile/path/image_string_path.dart';

class EditClientListScreen extends StatelessWidget {
  const EditClientListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 35),
            child: FloatingActionButton(
              onPressed: () {
                Get.to(CenterButtonClickScreen());
              },
              shape:
              CircleBorder(side: BorderSide(color: Colors.black, width: 3.0)),
              backgroundColor: Color(0xFFE1B378),
              child: Icon(
                Icons.dehaze_rounded,
                color: Colors.black,
                size: 32,
              ),
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(backlightimage))),
            child: Column(children: [
              // Top Container with Name, ID, and Icon
              Container(
                // Set your preferred background color
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFE1B378)),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.person,
                          color: Color(0xFFE1B378),
                          size: 30,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Hiral',
                          style: TextStyle(
                            color: Color(0xFFE1B378), // Color for the text
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Id No:1',
                          style: TextStyle(
                            color: Color(0xFFE1B378), // Color for the text
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: 40,
                          child: Icon(
                            CupertinoIcons.back,
                            color: Colors.black,
                            size: 30,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(CupertinoIcons.person_2,color: Colors.black,),
                      SizedBox(
                        width: 5,
                      ),
                      Center(child: Text('Management',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),))
                    ],
                  ),
                  filled: true,
                  fillColor: Color(0xFFFFE0CE),
                  hintStyle:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                      height: 600-42,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(fit: BoxFit.fill,image: AssetImage(clientlistrec))
                      ),
                      child: ListView(padding: EdgeInsets.all(16),
                        children: [
                          _buildListItems('Clients ',CupertinoIcons.person_2_fill,() {
                            Get.to(Clients());
                          },),
                          _buildListItems('Masseges',CupertinoIcons.bubble_middle_bottom,() {
                            Get.to(Sendmessagescreen());

                          },),
                          _buildListItems('Plan prices',Icons.plumbing_sharp, () {

                          },),
                          _buildListItems('Setting',Icons.settings,() {

                          },),
                          _buildListItems('Support',CupertinoIcons.question_circle,() {

                          },),
                          _buildListItems('Bracnch Transactions',CupertinoIcons.line_horizontal_3,() {

                          },),
                          _buildListItems('Log Out',Icons.exit_to_app_rounded,() {

                          },),
                        ],)
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 359,
                        decoration: const BoxDecoration(
                          color: Color(0xFFE1B378),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to(ClientListscreen());
                              },
                              child: Icon(
                                CupertinoIcons.home,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(const ClientScreen());
                              },
                              child: Icon(
                                Icons.calendar_today_outlined,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                            const SizedBox(
                              width: 110,
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                CupertinoIcons.list_number,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                CupertinoIcons.ellipsis,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )

                ],
              ),
            ],
            ),
          ),
        ));
  }
  Widget _buildListItems(String title, IconData icon ,void Function()? onTap) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Color(0xFFB1977F), // Matching the container color
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0xFFFFC896), width: 2),
      ),
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.black, // Icon background color
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon,color: Color(0xFFFFC896)),
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),),
        trailing: Icon(Icons.chevron_right, color: Colors.black),
        onTap: onTap,
      ),
    );
  }
}

