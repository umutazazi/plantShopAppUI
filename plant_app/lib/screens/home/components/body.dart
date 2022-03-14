import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:plant_app/constants.dart';
import 'package:plant_app/moddels.dart';

import 'listview_products.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
            height: size.height,
            width: size.width * 0.25,
            color: kPrimaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: IconButton(
                      icon: Icon(
                        Icons.menu,
                        size: 27,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        print("Menu");
                      },
                    )),
                RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    "Green Plants",
                    style: GoogleFonts.mulish(textStyle: menuText),
                  ),
                ),
                RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    "Indoor Plants",
                    style: GoogleFonts.mulish(textStyle: menuText),
                  ),
                ),
                RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    "Shape Close",
                    style: GoogleFonts.mulish(textStyle: menuText),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: IconButton(onPressed: () {}, 
                  icon: Icon(Icons.home),
                  iconSize: 27,
                  color: Colors.white,
                  
                  
                  ),
                )
              ],
            )),
        Container(
          height: size.height,
          width: size.width * 0.75,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40, right: 20),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search_sharp,
                          size: 27,
                        )),
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text("Indoor",
                        style: GoogleFonts.mulish(
                          textStyle: secondTitleStyle,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Text("Plants",
                        style: GoogleFonts.mulish(
                          textStyle: titleStyle,
                        )),
                  ),
                  ListViewProduct(size: size),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
