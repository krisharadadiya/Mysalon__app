import 'package:flutter/material.dart';
import 'package:mysalonapp_flutter/utile/path/image_string_path.dart';

class ClientNewScreen extends StatelessWidget {
  const ClientNewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(backlightimage))),
          ),
    );
  }
}
// import 'package:flutter/material.dart';
//
// class ListScreen extends StatelessWidget {
//   const ListScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // AppBar Section
//       appBar: AppBar(
//         backgroundColor: Color(0xFFFDD7B5), // Matching the app bar color
//         leading: Icon(Icons.arrow_back, color: Colors.black),
//         title: Row(
//           children: [
//             Icon(Icons.edit, color: Colors.black), // Icon for the title
//             SizedBox(width: 8),
//             Text(
//               'Lists',
//               style: TextStyle(color: Colors.black),
//             ),
//           ],
//         ),
//       )
//       // Body with Background Image and List
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/images/background.png'), // Your background image path
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: ListView(
//             children: [
//               buildListItem('Client List'),
//               buildListItem('Employee List'),
//               buildListItem('Treatment List'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   // Helper function to create each list item
//   Widget buildListItem(String title) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 10),
//       decoration: BoxDecoration(
//         color: Color(0xFFB1977F), // Matching the container color
//         borderRadius: BorderRadius.circular(8),
//         border: Border.all(color: Color(0xFFFFC896), width: 2),
//       ),
//       child: ListTile(
//         leading: Container(
//           padding: EdgeInsets.all(8),
//           decoration: BoxDecoration(
//             color: Colors.black, // Icon background color
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child: Icon(Icons.checklist_rtl, color: Color(0xFFFFC896)),
//         ),
//         title: Text(
//           title,
//           style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//         ),
//         trailing: Icon(Icons.chevron_right, color: Colors.black),
//         onTap: () {
//           // Add navigation or actions here
//         },
//       ),
//     );
//   }
// }


//Padding(
//           //   padding: const EdgeInsets.only(top : 110),
//           //   child: Container(
//           //     decoration: BoxDecoration(
//           //       image: DecorationImage(image: AssetImage(clientnew)),
//           //     ),
//           //   ),
//           // ),









///                      child:Column(
//                         children: [
//                           Container(
//                             height: 70,
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                               // color: Color(0xFFE1B378),
//                               border: Border.all(color: Color(0xFFE1B378)),
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Icon(
//                                   Icons.person_outline,
//                                   color: Color(0xFFE1B378),
//                                   size: 35,
//                                 ),
//                                 SizedBox(
//                                   width: 1,
//                                 ),
//                                 Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                       'Hiral',
//                                       style: TextStyle(
//                                         color: Color(0xFFE1B378),
//                                       ),
//                                     ),
//                                     Text(
//                                       'Id No:1',
//                                       style: TextStyle(
//                                         color: Color(0xFFE1B378),
//                                       ),
//                                     )
//                                   ],
//                                 ) ,
//                               ],
//                             ),
//                           ),
//                         ],
//                       )



///          child: Padding(
//             padding: const EdgeInsets.only(top: 110),
//             child: Stack(
//               children:[
//                 Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(),
//                     child: Container(
//                       height: 678,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(image: AssetImage(clientnew))
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//       ],
//             ),
//           )