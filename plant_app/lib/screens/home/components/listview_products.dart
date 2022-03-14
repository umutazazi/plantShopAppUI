import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';
import '../../../moddels.dart';
class ListViewProduct extends StatelessWidget {
  const ListViewProduct({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        
Padding(
          padding: const EdgeInsets.only(top: 70),
          child: SizedBox(
            height: size.height * 0.79,
            child: ListView.builder(
              itemCount: plantsData.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => Container(
                height: 350,
                
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                          child: Column(
                            
                        children: [
                          SizedBox(
                              height: 200,
                              width: 200,
                              child: Image.asset(
                                  plantsData[index].image)),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 30),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                plantsData[index].name,
                                style: GoogleFonts.mulish(
                                    textStyle: firstStyle),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 30),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                plantsData[index].subText,
                                style: GoogleFonts.mulish(
                                    textStyle: secondStyle),
                              ),
                            ),
                          ),
                          Row(
                            
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 30),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    plantsData[index].price,
                                    style: GoogleFonts.mulish(
                                        textStyle: priceStyle),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,left:30 ),
                                child: Icon(Icons.add_circle_outline),
                              )
                            ],
                          )
                        
                        
                        
                        
                        
                        
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
