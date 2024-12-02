  import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';
  import 'package:get/get.dart';
  import 'package:mysalonapp_flutter/utile/path/image_string_path.dart';

  import 'client_Screen.dart';
  class HomeScreen1 extends StatefulWidget {
    const HomeScreen1({super.key});

    @override
    State<HomeScreen1> createState() => _HomeScreen1State();
  }

  class _HomeScreen1State extends State<HomeScreen1> {
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
              onPressed: () {},
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
                  fit: BoxFit.fill, image: AssetImage(backlightimage)),
            ),
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // color: Color(0xFFE1B378),
                    border: Border.all(color: Color(0xFFE1B378)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_outline,
                        color: Color(0xFFE1B378),
                        size: 35,
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Hiral',
                            style: TextStyle(
                              color: Color(0xFFE1B378),
                            ),
                          ),
                          Text(
                            'Id No:1',
                            style: TextStyle(
                              color: Color(0xFFE1B378),
                            ),
                          )

                        ],
                      ) ,
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                AspectRatio(
                  aspectRatio: 360 / 466,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(center)),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                            child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    CupertinoIcons.heart_solid,
                                    color: Color(0XFFE1B378),
                                    size: 28,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Favorites',
                                    style: TextStyle(
                                        color: Color(0xFFFFE0CE),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 70,
                                        width: 70,
                                        child: Card(
                                          color: const Color(0xFFE1B378),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                CupertinoIcons.chat_bubble,
                                                size: 30,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Text('Bulk',
                                          style: TextStyle(
                                            color: Color(0xFFFFE0CE),
                                          )),
                                      const Text('Message',
                                          style: TextStyle(
                                            color: Color(0xFFFFE0CE),
                                          )),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 70,
                                        width: 70,
                                        child: Card(
                                          color: const Color(0xFFE1B378),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                CupertinoIcons.house,
                                                size: 30,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'My booking',
                                        style:
                                            TextStyle(color: Color(0xFFFFE0CE)),
                                      ),
                                      const Text(
                                        'Website',
                                        style:
                                            TextStyle(color: Color(0xFFFFE0CE)),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 70,
                                        width: 70,
                                        child: Card(
                                          color: const Color(0xFFE1B378),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                CupertinoIcons.add_circled,
                                                size: 30,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'Create A New',
                                        style:
                                            TextStyle(color: Color(0xFFFFE0CE)),
                                      ),
                                      const Text(
                                        'treatment',
                                        style:
                                            TextStyle(color: Color(0xFFFFE0CE)),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        )),
                        Expanded(
                            child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                'Appointment Management',
                                style: TextStyle(
                                    color: Color(0xFFFFE0CE),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 70,
                                        width: 70,
                                        child: Card(
                                          color: const Color(0xFFE1B378),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                CupertinoIcons.add_circled,
                                                size: 30,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'Create A New',
                                        style:
                                            TextStyle(color: Color(0xFFFFE0CE)),
                                      ),
                                      const Text(
                                        'treatment',
                                        style:
                                            TextStyle(color: Color(0xFFFFE0CE)),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 70,
                                        width: 70,
                                        child: Card(
                                          color: const Color(0xFFE1B378),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                CupertinoIcons
                                                    .bubble_middle_bottom,
                                                size: 30,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'View',
                                        style:
                                            TextStyle(color: Color(0xFFFFE0CE)),
                                      ),
                                      const Text(
                                        'Appointment',
                                        style:
                                            TextStyle(color: Color(0xFFFFE0CE)),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 70,
                                        width: 70,
                                        child: Card(
                                          color: const Color(0xFFE1B378),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.calendar_today_outlined,
                                                size: 30,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'Appointement',
                                        style:
                                            TextStyle(color: Color(0xFFFFE0CE)),
                                      ),
                                      const Text(
                                        'Request',
                                        style:
                                            TextStyle(color: Color(0xFFFFE0CE)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        )),
                        Expanded(
                            child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Client Transaction',
                                style: TextStyle(
                                    color: Color(0xFFFFE0CE),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 70,
                                        width: 70,
                                        child: Card(
                                          color: const Color(0xFFE1B378),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                CupertinoIcons.add_circled,
                                                size: 30,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'New Client',
                                        style:
                                            TextStyle(color: Color(0xFFFFE0CE)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 70,
                                        width: 70,
                                        child: Card(
                                          color: const Color(0xFFE1B378),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                CupertinoIcons.list_number,
                                                size: 30,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'Client List',
                                        style:
                                            TextStyle(color: Color(0xFFFFE0CE)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 70,
                                        width: 70,
                                        child: Card(
                                          color: const Color(0xFFE1B378),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                CupertinoIcons
                                                    .exclamationmark_triangle,
                                                size: 30,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'Lost Client',
                                        style:
                                            TextStyle(color: Color(0xFFFFE0CE)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 1),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                              color: Color(0xFFE1B378),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  image:
                                      DecorationImage(image: AssetImage(person))),
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      ClipRRect(
                        child: Container(
                          height: 50,
                          width: 230,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(boxclip))),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 13, top: 13),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Contact Live Support',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,

                                    color: Color(0xFFE1B378)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 359,
                      decoration: const BoxDecoration(
                        color: Color(0xFFE1B378),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 20,
                        ),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              const Icon(
                                CupertinoIcons.home,
                                color: Colors.black,
                                size: 30,
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
                                onTap: () {
                                },
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
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }
  }
