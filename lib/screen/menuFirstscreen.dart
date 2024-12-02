import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysalonapp_flutter/screen/login_singp_page.dart';
import 'package:mysalonapp_flutter/screen/support_screen.dart';
import 'package:mysalonapp_flutter/utile/path/image_string_path.dart';

class ManufirstScreen extends StatefulWidget {
  const ManufirstScreen({super.key});

  @override
  State<ManufirstScreen> createState() => _ManufirstScreenState();
}

class _ManufirstScreenState extends State<ManufirstScreen> {
 @override
  void initState() {
    super.initState();
    _NextScreen();
    // _Secondscreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(blackpage), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 99,
                  width: 69,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(star),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                    child: Container(
                      height: 400,
                      width: 250,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(text))
                      ),
                    ),
                ),
                SizedBox(height: 10,)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _NextScreen() async {
    await Future.delayed(Duration(seconds: 3));
   Get.off(() => LoginSingpPage(),transition: Transition.downToUp,duration: Duration(seconds: 1));
  }
}
  //   Future<void> _Secondscreen() async {
  //   await Future.delayed(Duration(seconds: 3));
  //  Get.off(() => SupportScreen(),transition: Transition.fade,duration: Duration(seconds: 1));
  // }







