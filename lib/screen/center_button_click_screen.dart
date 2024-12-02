// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:mysalonapp_flutter/utile/path/image_string_path.dart';
//
// class CenterButtonClickScreen extends StatefulWidget {
//   const CenterButtonClickScreen({super.key});
//
//   @override
//   _CenterButtonClickScreenState createState() => _CenterButtonClickScreenState();
// }
//
// class _CenterButtonClickScreenState extends State<CenterButtonClickScreen> {
//   bool isPanelOpen = false;
//
//   void togglePanel() {
//     setState(() {
//       isPanelOpen = !isPanelOpen;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//         floatingActionButton: Padding(
//           padding: const EdgeInsets.only(bottom: 35),
//           child: FloatingActionButton(
//             onPressed: togglePanel,
//             shape: CircleBorder(side: BorderSide(color: Colors.black, width: 3.0)),
//             backgroundColor: Color(0xFFE1B378),
//             child: Icon(
//               isPanelOpen ? Icons.close : Icons.dehaze_rounded,
//               color: Colors.black,
//               size: 32,
//             ),
//           ),
//         ),
//         body: Stack(
//           children: [
//             // Main Content
//             Container(
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   fit: BoxFit.fill,
//                   image: AssetImage(backlightimage),
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   Container(
//                     height: 60,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Color(0xFFE1B378)),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     padding: EdgeInsets.symmetric(horizontal: 16),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(CupertinoIcons.person,
//                             color: Color(0xFFE1B378), size: 30),
//                         SizedBox(width: 5),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               'Hiral',
//                               style: TextStyle(
//                                 color: Color(0xFFE1B378),
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Text(
//                               'Id No:1',
//                               style: TextStyle(
//                                 color: Color(0xFFE1B378),
//                                 fontSize: 18,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Container(
//                           height: 610,
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                             image: DecorationImage(
//                               fit: BoxFit.fill,
//                               image: AssetImage(clientlistrec),
//                             ),
//                           ),
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                               height: 60,
//                               width: 359,
//                               decoration: const BoxDecoration(
//                                 color: Color(0xFFE1B378),
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                 children: [
//                                   InkWell(
//                                     onTap: () {},
//                                     child: Icon(
//                                       CupertinoIcons.home,
//                                       color: Colors.black,
//                                       size: 30,
//                                     ),
//                                   ),
//                                   SizedBox(width: 40),
//                                   InkWell(
//                                     onTap: () {},
//                                     child: Icon(
//                                       Icons.calendar_today_outlined,
//                                       color: Colors.black,
//                                       size: 30,
//                                     ),
//                                   ),
//                                   SizedBox(width: 110),
//                                   InkWell(
//                                     onTap: () {},
//                                     child: Icon(
//                                       CupertinoIcons.list_number,
//                                       color: Colors.black,
//                                       size: 30,
//                                     ),
//                                   ),
//                                   SizedBox(width: 50),
//                                   InkWell(
//                                     onTap: () {},
//                                     child: Icon(
//                                       CupertinoIcons.ellipsis,
//                                       color: Colors.black,
//                                       size: 30,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             // Panel Overlay
//             if (isPanelOpen)
//               Positioned(
//                 bottom: 100,
//                 left: 20,
//                 right: 20,
//                 child: PanelOptions(togglePanel: togglePanel),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class PanelOptions extends StatelessWidget {
//   final VoidCallback togglePanel;
//
//   PanelOptions({required this.togglePanel});
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.transparent,
//       child: Container(
//         padding: EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           color: Color(0xFFFFE0CE),
//           borderRadius: BorderRadius.only(
//             bottomLeft: Radius.circular(63),
//             topRight: Radius.circular(63),
//           ),
//           boxShadow: [
//             BoxShadow(color: Colors.black26, blurRadius: 10, spreadRadius: 2),
//           ],
//         ),
//         child: Stack(
//           children: [
//             // Circular close button in the top-right corner
//             Positioned(
//               top: 8,
//               right: 8,
//               child: InkWell(
//                 onTap: togglePanel,
//                 child: Container(
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.black,
//                   ),
//                   padding: EdgeInsets.all(8),
//                   child: Icon(Icons.close, color: Colors.white, size: 10),
//                 ),
//               ),
//             ),
//             // Panel content
//             Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 _buildPanelItem(
//                   icon: Icons.healing,
//                   text: "Create A New Treatment",
//                   onTap: togglePanel,
//                 ),
//                 _buildPanelItem(
//                   icon: Icons.calendar_today,
//                   text: "Create An Appointment",
//                   onTap: togglePanel,
//                 ),
//                 _buildPanelItem(
//                   icon: Icons.account_circle,
//                   text: "Create A New Client",
//                   onTap: togglePanel,
//                 ),
//                 _buildPanelItem(
//                   icon: Icons.contact_phone,
//                   text: "Add Client From Contacts",
//                   onTap: togglePanel,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildPanelItem({required IconData icon, required String text, required VoidCallback onTap}) {
//     return ListTile(
//       leading: Icon(icon, color: Colors.black),
//       title: Text(text, style: TextStyle(color: Colors.black)),
//       trailing: Icon(Icons.star_border, color: Colors.black),
//       onTap: onTap,
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mysalonapp_flutter/utile/path/image_string_path.dart';

class CenterButtonClickScreen extends StatefulWidget {
  const CenterButtonClickScreen({super.key});

  @override
  _CenterButtonClickScreenState createState() => _CenterButtonClickScreenState();
}

class _CenterButtonClickScreenState extends State<CenterButtonClickScreen> {
  bool isPanelOpen = false;

  void togglePanel() {
    setState(() {
      isPanelOpen = !isPanelOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 35),
          child: FloatingActionButton(
            onPressed: togglePanel,
            shape: CircleBorder(side: BorderSide(color: Colors.black, width: 3.0)),
            backgroundColor: Color(0xFFE1B378),
            child: Icon(
              isPanelOpen ? Icons.close : Icons.dehaze_rounded,
              color: Colors.black,
              size: 32,
            ),
          ),
        ),
        body: Stack(
          children: [
            // Main Content
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(backlightimage),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFE1B378)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.person,
                            color: Color(0xFFE1B378), size: 30),
                        SizedBox(width: 5),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Hiral',
                              style: TextStyle(
                                color: Color(0xFFE1B378),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Id No:1',
                              style: TextStyle(
                                color: Color(0xFFE1B378),
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 610,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(clientlistrec),
                            ),
                          ),
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
                                    onTap: () {},
                                    child: Icon(
                                      CupertinoIcons.home,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                  ),
                                  SizedBox(width: 40),
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.calendar_today_outlined,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                  ),
                                  SizedBox(width: 110),
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      CupertinoIcons.list_number,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                  ),
                                  SizedBox(width: 50),
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(
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
                  ),
                ],
              ),
            ),
            // Panel Overlay
            if (isPanelOpen)
              Positioned(
                bottom: 100,
                left: 20,
                right: 20,
                child: PanelOptions(togglePanel: togglePanel),
              ),
          ],
        ),
      ),
    );
  }
}

class PanelOptions extends StatelessWidget {
  final VoidCallback togglePanel;

  PanelOptions({required this.togglePanel});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFFFFE0CE),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 10, spreadRadius: 2),
          ],
        ),
        child: Stack(
          children: [
            // Circular close button in the top-right corner
            Positioned(
              top: -2,
              right: -2,
              child: InkWell(
                onTap: togglePanel,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                  child: Icon(Icons.close, color: Colors.white, size: 20),
                ),
              ),
            ),
            // Panel content
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildPanelItem(
                  icon: Icons.healing,
                  text: "Create A New Treatment",
                  onTap: togglePanel,
                ),
                _buildPanelItem(
                  icon: Icons.calendar_today,
                  text: "Create An Appointment",
                  onTap: togglePanel,
                ),
                _buildPanelItem(
                  icon: Icons.account_circle,
                  text: "Create A New Client",
                  onTap: togglePanel,
                ),
                _buildPanelItem(
                  icon: Icons.contact_phone,
                  text: "Add Client From Contacts",
                  onTap: togglePanel,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPanelItem({required IconData icon, required String text, required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(text, style: TextStyle(color: Colors.black)),
      trailing: Icon(Icons.star_border, color: Colors.black),
      onTap: onTap,
    );
  }
}
