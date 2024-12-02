import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysalonapp_flutter/screen/client_listscreen.dart';
import 'package:mysalonapp_flutter/utile/path/image_string_path.dart';

class ClientScreen extends StatelessWidget {
  const ClientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                  Text(
                    '28 september saturday',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.black,
                    size: 30,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    CupertinoIcons.chevron_forward,
                    color: Colors.black,
                    size: 30,
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
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Table(
                border: TableBorder.all(color: Colors.white),
                columnWidths: {
                  0: FixedColumnWidth(60),
                  1: FixedColumnWidth(97),
                  2: FixedColumnWidth(97),
                  3: FixedColumnWidth(97),
                },
                children: [
                  firstRow(),
                  rowData("12:40"),
                  rowData("1:40"),
                  rowData("2:40"),
                  rowData("3:45"),
                  rowData("2:34"),
                  rowData("1:34"),
                  rowData("12:44"),
                  rowData("11:33"),
                  rowData("1:30"),
                  rowData("2:09"),
                  rowData("2:12"),
                  rowData("12:50"),
                  rowData("11:39"),
                  rowData("6:39"),
                  rowData("9:09"),
                  rowData("7:07"),
                  rowData("7:07"),
                  rowData("7:07"),
                  rowData("12:40"),
                  rowData("1:40"),
                  rowData("2:40"),
                  rowData("3:45"),
                  rowData("2:34"),
                  rowData("1:34"),
                  rowData("12:44"),
                ],
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
                     Icon(
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
                        Get.to(ClientListscreen());
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
            ],
          )
        ]
        ),
      ),
    ));
  }

  firstRow() {
    return TableRow(
      children: [
        Container(
          height: 70,
          decoration: BoxDecoration(color: Color(0xFFE1B378).withOpacity(0.60)),
          alignment: Alignment.center,
        ),
        Container(
          height: 70,
          decoration: BoxDecoration(color: Color(0xFFE1B378).withOpacity(0.60)),
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    color: Color(0xFFFFE0CE).withOpacity(0.60),
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.white)),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(femail))),
                ),
              ),
              Text(
                'Hiral',
                style: TextStyle(color: Color(0xFFFFE0CE), fontSize: 15),
              )
            ],
          ),
        ),
        Container(
          height: 70,
          decoration: BoxDecoration(color: Color(0xFFFFE0CE).withOpacity(0.60)),
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFE0CE).withOpacity(0.60),
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.white)),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(centerfemail),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                'Avani',
                style: TextStyle(color: Color(0xFFFFE0CE), fontSize: 15),
              )
            ],
          ),
        ),
        Container(
          height: 70,
          decoration: BoxDecoration(color: Color(0xFFE1B378).withOpacity(0.60)),
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    color: Color(0xFFFFE0CE).withOpacity(0.60),
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.white)),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(personboy))),
                ),
              ),
              Text(
                'Khushi',
                style: TextStyle(color: Color(0xFFFFE0CE), fontSize: 15),
              )
            ],
          ),
        ),
      ],
    );
  }

  rowData(String time) {
    return TableRow(
      children: [
        Container(
          decoration: BoxDecoration(color: Color(0xFFE1B378).withOpacity(0.60)),
          padding: EdgeInsets.only(top: 10),
          alignment: Alignment.center,
          child: Text(time,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
        ),
        Container(
          decoration: BoxDecoration(color: Color(0xFFE1B378).withOpacity(0.60)),
          padding: EdgeInsets.only(top: 10),
          alignment: Alignment.center,
          child: Text('',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
        ),
        Container(
          decoration: BoxDecoration(color: Color(0xFFFFE0CE).withOpacity(0.60)),
          padding: EdgeInsets.only(top: 10),
          alignment: Alignment.center,
          child: Text('',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
        ),
        Container(
          decoration: BoxDecoration(color: Color(0xFFE1B378).withOpacity(0.60)),
          padding: EdgeInsets.only(top: 10),
          alignment: Alignment.center,
          child: Text('',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
        ),
      ],
    );
  }
}
