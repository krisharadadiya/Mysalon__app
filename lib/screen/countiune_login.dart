import 'package:flutter/material.dart';
import 'package:mysalonapp_flutter/utile/path/image_string_path.dart';

class CountiuneLogin extends StatelessWidget {
  const CountiuneLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(backlightimage)
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Container(
            child:
              Center(
                child: Text('WelCome',
                style: TextStyle(
                  color: Color(0xFFFFE0CE),
                ),
                ),
              ),
          ),
        ),

      )
    );
  }
}
///                child: Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Container(
//                     height: 460,
//                     width: 500,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(rectengle)
//                       )
//                     ),
//                   ),
//                 )
///child: Center(
//           child: Container(
//             height: 60,
//             width: 80,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(welcomeText)
//               ),
//             ),
//           ),
//         ),