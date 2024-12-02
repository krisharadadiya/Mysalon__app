import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysalonapp_flutter/screen/Coutinue_button_click_in_card.dart';
import 'package:mysalonapp_flutter/screen/cardclick_screen.dart';
import 'package:mysalonapp_flutter/screen/login_singp_page.dart';
import 'package:mysalonapp_flutter/utile/path/image_string_path.dart';

class SingupPage extends StatefulWidget {
  const SingupPage({super.key});

  @override
  State<SingupPage> createState() => _SingupPageState();
}

class _SingupPageState extends State<SingupPage> {
  int currentIndex = 0;
  int selectedItem = -1;

  @override
  Widget build(BuildContext context) {
    final List<String> card = [
      'assets/image/card1.png',
      'assets/image/card2.png',
      'assets/image/card3.png',
      'assets/image/card4.png',
      'assets/image/card5.png',
      'assets/image/card6.png',
      'assets/image/card7.png',
      'assets/image/card8.png',
    ];
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(backlightimage))),
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.to(LoginSingpPage());
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Color(0xFFFFE0CE),
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Select Anyone',
                    style: TextStyle(
                        color: Color(0xFFFFE0CE),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 0.1,
              ),
              Expanded(
                child: Center(
                  child: GridView.builder(
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10),
                    itemCount: card.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedItem = index;
                            });
                            // Get.to(CardclickScreen());
                          },
                          child: Stack(children: [
                          Card(
                            color: Colors.transparent,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(card[index]),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                              if (selectedItem == index)
                          const Center(
                          child: Positioned(
                          top: 5,
                          left: 5,
                          child: Icon(
                            Icons.check_outlined,
                            color: Color(0XFFFAEDCE),
                            size: 50,
                          )))]
                      ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 170),
                child: Column(
                  children: [
                    const Center(
                      child: Text(
                        'select appointment',
                        style:
                        TextStyle(color: Color(0xFFFFE0CE), fontSize: 30),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    DotsIndicator(
                      dotsCount: 4,
                      position: currentIndex,
                      decorator: DotsDecorator(
                        size: const Size(15, 15),
                        color: Colors.transparent,
                        activeColor: const Color(0XFFEAD8B1),
                        activeSize: const Size(15, 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: const BorderSide(color: Color(0XFFEAD8B1))),
                      ),
                    ),
                  ],
                ),
              ),
              OutlinedButton(
                style: ButtonStyle(
                  side: WidgetStateProperty.all(
                    const BorderSide(
                        color: Color(0XFFEAD8B1),
                        width: 2.0), // Outline color and width
                  ),
                  padding: WidgetStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  ),
                ),
                onPressed: () {
                  if(selectedItem != -1){
                  Get.to(CardclickScreen());
                  }
                },
                child: const Text(
                  'Continue',
                  style: TextStyle(
                      color: Color(0XFFEAD8B1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//
