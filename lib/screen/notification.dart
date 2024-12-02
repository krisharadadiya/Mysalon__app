import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysalonapp_flutter/screen/client_Screen.dart';
import 'package:mysalonapp_flutter/screen/edit_client.dart';
import 'package:mysalonapp_flutter/utile/path/image_string_path.dart';
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
                fit: BoxFit.fill, image: AssetImage(backlightimage))),
        child: Column(
          children: [
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
                    Center(
                        child: Text(
                      'Notifications',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )),
                    SizedBox(
                      width: 140,
                    ),
                    Icon(
                      Icons.delete,
                      color: Colors.black,
                    )
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
                  height: 600 - 42,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill, image: AssetImage(clientlistrec))),
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildListTile('Waiting'),
                          SizedBox(width: 10,),
                          _buildListTile('Confirmed'),
                          SizedBox(width: 10,),
                          _buildListTile('cancel'),
                          SizedBox(width: 10,),
                          _buildListTile('other'),
                        ],
                      )
                    ],
                  )
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
                              Get.to(ClientScreen());
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
                            onTap: () {
                              Get.to(EditClientListScreen());
                            },
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
    )
    );
  }
}
Widget _buildListTile(String title) {
  return Padding(
    padding: const EdgeInsets.only(top: 15),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFE1B378), width: 2.0),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:mysalonapp_flutter/screen/client_Screen.dart';
// import 'package:mysalonapp_flutter/screen/edit_client.dart';
// import 'package:mysalonapp_flutter/utile/path/image_string_path.dart';
//
// class NotificationScreen extends StatelessWidget {
//   const NotificationScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         floatingActionButtonLocation:
//         FloatingActionButtonLocation.miniCenterDocked,
//         floatingActionButton: Padding(
//           padding: const EdgeInsets.only(bottom: 35),
//           child: FloatingActionButton(
//             onPressed: () {},
//             shape: CircleBorder(side: BorderSide(color: Colors.black, width: 3.0)),
//             backgroundColor: Color(0xFFE1B378),
//             child: Icon(
//               Icons.dehaze_rounded,
//               color: Colors.black,
//               size: 32,
//             ),
//           ),
//         ),
//         body: Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               fit: BoxFit.fill,
//               image: AssetImage(backlightimage),
//             ),
//           ),
//           child: Column(
//             children: [
//               // Top Container with Name, ID, and Icon
//               Container(
//                 height: 60,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Color(0xFFE1B378)),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 padding: EdgeInsets.symmetric(horizontal: 16),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(
//                       CupertinoIcons.person,
//                       color: Color(0xFFE1B378),
//                       size: 30,
//                     ),
//                     SizedBox(width: 5),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           'Hiral',
//                           style: TextStyle(
//                             color: Color(0xFFE1B378),
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text(
//                           'Id No:1',
//                           style: TextStyle(
//                             color: Color(0xFFE1B378),
//                             fontSize: 18,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//
//               // Add a row of centered tiles at the top
//               SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center, // Centers the row
//                 children: [
//                   // Tile 1
//                   _buildListTile("Waiting"),
//                   SizedBox(width: 10),
//                   // Tile 2
//                   _buildListTile("Confirmed"),
//                   SizedBox(width: 10),
//                   // Tile 3
//                   _buildListTile("Cancel"),
//                   SizedBox(width: 10),
//                   // Tile 4
//                   _buildListTile("Other"),
//                 ],
//               ),
//
//               SizedBox(height: 10),
//               TextField(
//                 decoration: InputDecoration(
//                   prefixIcon: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       SizedBox(
//                         width: 40,
//                         child: Icon(
//                           CupertinoIcons.back,
//                           color: Colors.black,
//                           size: 30,
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Center(
//                         child: Text(
//                           'Notifications',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 140),
//                       Icon(
//                         Icons.delete,
//                         color: Colors.black,
//                       ),
//                     ],
//                   ),
//                   filled: true,
//                   fillColor: Color(0xFFFFE0CE),
//                   hintStyle: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide(color: Colors.black),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               // Rest of your code for the body layout...
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//   // Helper method to build ListTile-like widgets for the row
// }
