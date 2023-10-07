import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:depan/styles/button.dart';
import 'package:depan/views/age_select.dart';

class GenderSelect extends StatefulWidget{
  @override
  State createState() => GenderSelectState();
}

class GenderSelectState extends State<GenderSelect>{
  String gender = "male";

  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            print('Back button clicked');
          },
          child: Container(
            padding: EdgeInsets.only(top: 50, left: 23),
            height: 20,
            width: 50,
            child: Icon(Icons.keyboard_backspace_rounded),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 80, left: 40),
          child:
          Text('What Is Your Gender?',
            style: GoogleFonts.inter(fontSize: 28
                , color: Colors.black, fontWeight: FontWeight.w800),),
        ),
        Container(
          padding: EdgeInsets.only(top: 20, left: 40),
          child:
          Text('Select gender for better content',
            style: GoogleFonts.inter(fontSize: 17
                , color: Colors.black, fontWeight: FontWeight.w300),),
        ),
        Container(
            padding: EdgeInsets.only(top: 30, left: 20),
            child:
              Column (
                children: [
                RadioListTile(
                  title: Text("I am male", style: GoogleFonts.inter(fontSize: 17
                      , color: Colors.black)),
                  value: "male",
                  groupValue: gender,
                  onChanged: (value){
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
                SizedBox(height: 15),
                RadioListTile(
                  title: Text("I am female", style: GoogleFonts.inter(fontSize: 17
                      , color: Colors.black)),
                  value: "female",
                  groupValue: gender,
                  onChanged: (value){
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
                SizedBox(height: 15),
                RadioListTile(
                  title: Text("Rather not to say", style: GoogleFonts.inter(fontSize: 17
                      , color: Colors.black)),
                  value: "other",
                  groupValue: gender,
                  onChanged: (value){
                    setState(() {
                      gender = value.toString();
                    });
                  },
                )
              ]
            )
        ),
        Container(
          padding: EdgeInsets.only(top: 300, left: 40),
          child:
          Column (
            children: [
              ElevatedButton(
                style: buttonPrimary,
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => AgeSelect() )),
                child: Text('CONTINUE', style: GoogleFonts.inter(fontSize: 17
                    , color: Colors.white, fontWeight: FontWeight.bold)),
              )
            ],
          )
        )
      ],
    );
  }
}