// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ss_donji_miholjac/functionalites.dart';
import 'functionalites.dart';
import './functionality_item.dart';

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
            color: HexColor('#006D77'), 
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children:[
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      alignment: Alignment.centerLeft,
                      onPressed: () {},
                      icon: const Icon(PhosphorIcons.info, size: 25, color: Colors.white,),
                      ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 30, bottom: 40),
                    child: Column(
                      children: [
                      Align(
                        alignment: Alignment.centerLeft, 
                        child: 
                          Text('Dobrodošli,', style: GoogleFonts.getFont('Poppins', color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15, fontStyle: FontStyle.normal),)),
                      Align( 
                      alignment: Alignment.centerLeft, 
                      child: 
                        Text('Srednja škola Donji Miholjac', style: GoogleFonts.getFont('Poppins', color: Colors.white, fontSize: 15, fontStyle: FontStyle.normal),)
                    )
                            ],
                    ),
                  ),
                  Text('Placeholder za search barFSAFSAF')
                ],
              ),
            )
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 30),
            child: Align(alignment: Alignment.centerLeft,child: Text('Istraži istaknute kategorije', style: GoogleFonts.getFont('Poppins', fontWeight: FontWeight.w600, fontSize: 15, fontStyle: FontStyle.normal))),
          ),
          Expanded(
            child: GridView(
              padding: const EdgeInsets.all(32),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
              ),
              children: functionalities
                  .map((funData) => FunctionalityItem(
                      funData.id, funData.title.toUpperCase(), funData.icon, funData.route))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
