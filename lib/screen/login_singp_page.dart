import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysalonapp_flutter/screen/loginscreen.dart';
import 'package:mysalonapp_flutter/screen/singup_page.dart';
import 'package:mysalonapp_flutter/screen/support_screen.dart';
import 'package:mysalonapp_flutter/utile/path/image_string_path.dart';

class LoginSingpPage extends StatefulWidget {
  const LoginSingpPage({super.key});

  @override
  State<LoginSingpPage> createState() => _LoginSingpPageState();
}

class _LoginSingpPageState extends State<LoginSingpPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> image = [
      'assets/image/boyhairwose.png',
      'assets/image/girlshaircut.png',
      'assets/image/boyshaircut.png',
      'assets/image/mirrorpic.png',
      'assets/image/girlsspa.png',
    ];
    // int  currentIndex ;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.fill, image: AssetImage(blackpage)),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 400,
                // Set the height of the carousel
                autoPlay: true,
                // Enables auto-sliding
                enlargeCenterPage: true,
                // Enlarges the current focused widget
                viewportFraction: 0.8,
                // Fraction of screen the item occupies
                autoPlayInterval: Duration(seconds: 3),
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              items: image.map(
                (images) {
                  return Builder(
                    builder: (context) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            images,
                            fit: BoxFit.cover,
                            width: 1000,
                          ),
                        ),
                      );
                    },
                  );
                },
              ).toList(),
            ),
            SizedBox(
              height: 20,
            ),
            new DotsIndicator(
              dotsCount: 5,
              position: currentIndex,
              decorator: DotsDecorator(
                color: Colors.transparent,
                activeColor: Color(0XFFEAD8B1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Color(0XFFEAD8B1))),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Color(0XFFEAD8B1); // Color when hovered over
                      }
                      return Color(0XFFFFE0CE); // Default color
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
                    EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                  ),
                ),
                onPressed: () {
                  Get.to(SingupPage(),transition: Transition.downToUp,duration: Duration(seconds: 1));
                },
                child: Image(image: AssetImage(singup))),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  BorderSide(
                      color: Color(0XFFEAD8B1),
                      width: 2.0), // Outline color and width
                ),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                ),
              ),
              onPressed: () {
                Get.to(const LoginScreen(),transition: Transition.downToUp,duration: Duration(seconds: 1));
              },
              child: Image(image: AssetImage(login)),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                  onPressed: () {
                    Get.to(SupportScreen(),transition: Transition.downToUp,duration: Duration(seconds: 1));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'support', style: TextStyle(
                        color: Color(0XFFEAD8B1),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                      ),
                      Icon(
                        CupertinoIcons.question_circle,
                        color: Color(0XFFEAD8B1),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
