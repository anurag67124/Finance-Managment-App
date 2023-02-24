//import 'package:dob_input_field/dob_input_field.dart';
import 'package:finance_app/Screens/profile.dart';
import 'package:gender_picker/source/enums.dart';
import 'package:gender_picker/gender_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../main.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<StatefulWidget> createState() {
    return EditProfileState();
  }
}

class EditProfileState extends State<EditProfile> {

  
 
  TextEditingController  first_name_con = TextEditingController();
  TextEditingController  last_name_con = TextEditingController();
  TextEditingController  email_con = TextEditingController();
  TextEditingController  mobilenumber_con = TextEditingController();

 
  List gender = ["Male", "Female", "Other"];

  String select = "";
  TextEditingController dateInput = TextEditingController();
 
  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: ScrollController(),
          
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
          
          
           children: [
            AppBar(
              title: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Icon(Icons.arrow_back),
                  Center(child: Text("Edit Profile")),
                  SizedBox(
                    width: 10,
                  )
                ],
              )),
              
            ),
           Container(width: 400,
             child: Padding(
                  
                  padding: const EdgeInsets.all(10),
                  
                  
                  child: TextField(
                    
                 
                   controller: first_name_con,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "First Name",
                    ),
                  ),
                ),
           ),
                 Container(width: 400,
                   child: Padding(
                                 
                                 padding: const EdgeInsets.all(10),
                                 
                                 
                                 child: TextField(
                    
                                
                   controller: last_name_con,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Last Name",
                    ),
                                 ),
                               ),
                 ),
                 Container(
                  width: 400,
                   child: Padding(
                                 
                                 padding: const EdgeInsets.all(10),
                                 
                                 
                                 child: TextField(
                    
                                controller: email_con,
                   
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Email",
                    ),
                                 ),
                               ),
                 ),
                 Container(
                  width: 400,
                  
                   child: Padding(
                                 
                                 padding: const EdgeInsets.all(10),
                                 
                                 
                                 child: TextField(
                    
                                controller: mobilenumber_con,
                   
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Mobile Number",
                    ),
                                 ),
                               ),
                 ),
            
            // DOBInputField(
            //   firstDate: DateTime(1900),
            //   lastDate: DateTime.now(),
            //   showLabel: true,
            //   autovalidateMode: AutovalidateMode.onUserInteraction,
            //   fieldLabelText: "Date Of Birth",
            // ),
            // Row(
            //   children: <Widget>[
            //     addRadioButton(0, 'Male'),
            //     addRadioButton(1, 'Female'),
            //     addRadioButton(2, 'Others'),
            //   ],
            // ),
            Container(width: 400,
              child: GenderPickerWithImage(
                showOtherGender: true,
                verticalAlignedText: false,
                selectedGender: Gender.Male,
                selectedGenderTextStyle: TextStyle(
                    color: Color(0xFF8b32a8), fontWeight: FontWeight.bold),
                unSelectedGenderTextStyle: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
                onChanged: (gender ) {
                  print(gender);
                },
                equallyAligned: true,
                animationDuration: Duration(milliseconds: 300),
                isCircular: true,
                // default : true,
                opacityOfGradient: 0.4,
                padding: const EdgeInsets.all(3),
                size: 50, //default : 40
              ),
            ),
            Container(
            padding: EdgeInsets.all(15),
            height: MediaQuery.of(context).size.width / 3,
            width: 400,
            
            child: Center(
              
                child: TextField(
              controller: dateInput,
              //editing controller of this TextField
              
              decoration: InputDecoration(
                  icon: Icon(Icons.calendar_today), //icon of text field
                  labelText: "Date of Birth" //label text of field
                  ),
              readOnly: true,
              //set it true, so that user will not able to edit text
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1950),
                    //DateTime.now() - not to allow to choose before today.
                    lastDate: DateTime(2100));
 
                if (pickedDate != null) {
                  print(
                      pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                  String formattedDate =
                      DateFormat('yyyy-MM-dd').format(pickedDate);
                  print(
                      formattedDate); //formatted date output using intl package =>  2021-03-16
                  setState(() {
                    dateInput.text =
                        formattedDate; //set output date to TextField value.
                  });
                } else {}
              },
            ))),
            ElevatedButton(
              onPressed: null,
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 128, 4, 150))),
              
              child: InkWell(
                  onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfilePage()));
                },
                child: Text("SAVE", style: TextStyle(color: Colors.white),)),
            )
          ]),
        ),
      ),
    );
  }

  // Row addRadioButton(int btnValue, String title) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     children: <Widget>[
  //       Radio(
  //         activeColor: Theme.of(context).primaryColor,
  //         value: gender[btnValue],
  //         groupValue: select,
  //         onChanged: (value) {
  //           setState(() {
  //             print(value);
  //             select = value;
  //           });
  //         },
  //       ),
  //       Text(title)
  //     ],
  //   );
  }

