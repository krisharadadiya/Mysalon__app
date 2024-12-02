import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysalonapp_flutter/screen/cardclick_screen.dart';
import 'package:mysalonapp_flutter/screen/home_1.dart';
import 'package:mysalonapp_flutter/screen/login_singp_page.dart';
import 'package:mysalonapp_flutter/screen/profile_screen.dart';
import 'package:mysalonapp_flutter/utile/path/image_string_path.dart';

class CardCountinueScreen extends StatefulWidget {
  const CardCountinueScreen({super.key});

  @override
  State<CardCountinueScreen> createState() => _CardCountinueScreenState();
}

class _CardCountinueScreenState extends State<CardCountinueScreen> {
  int currentindex =0 ;
  String phoneNumber = '';
  @override
  void initState() {
    super.initState();
    currentindex = 2;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(backlightimage)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45, left: 10),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.to(CardclickScreen(),);
                    },
                    icon: const Icon(
                      CupertinoIcons.back,
                      color: Color(0xFFFFE0CE),
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),
            // const SizedBox(
            //   height: 5,
            // ),
            Text(
              'Welcome',
              style: TextStyle(color: Color(0xFFFFE0CE), fontSize: 60),
            ),
            Text(
              'Sign Up Your Account',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 570,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFFFFE0CE),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(63),
                      bottomRight: Radius.circular(63))),
              /////////////////////////////////////////////////////////////////////////////1 ///////////////////////////
              child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: TextField(
                        style: TextStyle(fontSize: 20),
                        cursorColor: Color(0xFFE1B378),
                        decoration: InputDecoration(
                            hintText: 'Full Name',
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Color(0xFFE1B378), width: 3.0))),
                      ),
                    ),
                    ////////////////////////////////////////////////////// 2 ////////////////////
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: TextField(
                              style: TextStyle(fontSize: 20),
                              cursorColor: Color(0xFFE1B378),
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                          color: Color(0xFFE1B378),
                                          width: 3.0))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ///////////////////////////////////////////////////////////3//////////////////////////
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: TextField(
                              style: TextStyle(fontSize: 20),
                              cursorColor: Color(0xFFE1B378),
                              decoration: InputDecoration(
                                  hintText: 'password',
                                  hintStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        const BorderSide(color: Colors.black),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          color: Color(0xFFE1B378),
                                          width: 3.0))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ////////////////////////////////////////////////4/////////////////////////////////
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: TextField(
                              style: TextStyle(fontSize: 20),
                              cursorColor: Color(0xFFE1B378),
                              decoration: InputDecoration(
                                  hintText: 'Confirm Password',
                                  hintStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        const BorderSide(color: Colors.black),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          color: Color(0xFFE1B378),
                                          width: 3.0))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color(0xFFE1B378), width: 3.0)),
                          child: Center(
                              child: Text(
                            '91+',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),),
                        ),
                        SizedBox(width: 10,),
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.phone,
                  style: const TextStyle(fontSize: 20),
                  cursorColor: Color(0xFFE1B378),
                  onChanged: (value) {
                    phoneNumber = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Color(0xFFE1B378), width: 3.0),
                    ),
                  ),
                ),
              ),
                      ],
                    ),
                    SizedBox(height: 9,),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered)) {
                              return const Color(
                                  0XFFE1B378); // Color when hovered over
                            }
                            return const Color(0XFFE1B378); // Default color
                          },
                        ),
                        elevation: MaterialStateProperty.resolveWith<double>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered)) {
                              return 15; // Increase elevation on hover
                            }
                            return 5; // Default elevation
                          },
                        ),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 115, vertical: 17),
                        ),
                      ),
                      onPressed: () {
                       Get.to(HomeScreen1(),transition: Transition.downToUp,duration: Duration(seconds: 1));
                      },
                      child: const Text(
                        'Countinue',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    DotsIndicator(
                      dotsCount: 4,
                      position: currentindex, // Ensure position is a double
                      decorator: DotsDecorator(
                        size: const Size(15, 15),
                        // Size of inactive dots
                        activeSize: const Size(15, 15),
                        // Size of active dots
                        color: Colors.transparent,
                        // Inactive dot color
                        activeColor: Colors.black,
                        // Active dot color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(
                              color: Colors.black,
                              width: 2.0), // Inactive dot border
                        ),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(
                              color: Colors.black,
                              width: 2.0), // Active dot border
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 55),
                          child: Text(
                            'Already A Member',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: InkWell(
                            onTap: () {
                              Get.to(LoginSingpPage());
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered)) {
                              return Color(
                                  0XFFE1B378); // Color when hovered over
                            }
                            return Color(0XFFE1B378); // Default color
                          },
                        ),
                        elevation: MaterialStateProperty.resolveWith<double>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered)) {
                              return 15; // Increase elevation on hover
                            }
                            return 5; // Default elevation
                          },
                        ),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 95, vertical: 17),
                        ),
                        // minimumSize: MaterialStateProperty.all(Size(30, 50))
                      ),
                      onPressed: () {Get.to(ProfileScreen());},
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 1),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.g_mobiledata_outlined,size: 20,),
                            SizedBox(width: 10,),
                            Text(
                              'Register With Google',
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold,fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}
