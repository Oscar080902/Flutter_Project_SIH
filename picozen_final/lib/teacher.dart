import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class RegWork extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InitState();

}
 class InitState extends State<RegWork>{

  TextEditingController instNameController = TextEditingController();
  TextEditingController locController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController workNameController = TextEditingController();
  TextEditingController fromDateController = TextEditingController();
  TextEditingController toDateController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController facuNameController = TextEditingController();
  TextEditingController feesController = TextEditingController();
  TextEditingController elegibleController = TextEditingController();
  TextEditingController noCandController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController descController = TextEditingController();


  CollectionReference workshop_registration = FirebaseFirestore.instance.collection('workshop_registration');

    Future<void> addUser() {
      // Call the user's CollectionReference to add a new user
      return workshop_registration
          .add({
            'instname': instNameController.text, // John Doe
            'location': locController.text, // Stokes and Sons
            'email': emailController.text,
            'workshop': workNameController.text,
            'formdate': fromDateController.text,
            'todate': toDateController.text,
            'phone': phoneController.text,
            'facuname': facuNameController.text,
            'fees': feesController.text,
            'criteria': elegibleController.text,
            'noregis': noCandController.text,
            'address': addressController.text,
            'desc': descController.text,// 42
          })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }



  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
  Widget initWidget(){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
                  gradient: LinearGradient(
                    colors: [(new Color(0xFF64B5F6)),(new Color(0xFF01579B))],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                  )
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Container(
                      //   margin: EdgeInsets.only(top: 10),
                      //   child: Image.asset("images/signup.png"),
                      //   height: 240,
                      //   width: 300,
                      // ),
                      Container(
                        margin: EdgeInsets.only(right: 20, top: 20),
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Register",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20,top: 70),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                  boxShadow: [BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)
                  )],
                ),
                alignment: Alignment.center,
                child: TextField(
                  controller: instNameController,
                  cursorColor: Color(0xDD000000),
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.assured_workload_outlined,
                        color: Color(0xDD000000),
                      ),
                      hintText: "Institute Name",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none
                  ),
                ),
              ),
      
              Container(
                margin: EdgeInsets.only(left: 20, right: 20,top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                  boxShadow: [BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)
                  )],
                ),
                alignment: Alignment.center,
                child: TextField(
                  controller: locController,
                  cursorColor: Color(0xDD000000),
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.location_on,
                        color: Color(0xDD000000),
                      ),
                      hintText: "Location",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20,top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                  boxShadow: [BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)
                  )],
                ),
                alignment: Alignment.center,
                child: TextField(
                  controller: emailController,
                  cursorColor: Color(0xDD000000),
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.email_rounded,
                        color: Color(0xDD000000),
                      ),
                      hintText: "Enter Email",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none
                  ),
                ),
              ),
      
              Container(
                margin: EdgeInsets.only(left: 20, right: 20,top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                  boxShadow: [BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)
                  )],
                ),
                alignment: Alignment.center,
                child: TextField(
                  controller: workNameController,
                  cursorColor: Color(0xDD000000),
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.science,
                        color: Color(0xDD000000),
                      ),
                      hintText: "Name of the Workshop",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 20, right: 20,top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                  boxShadow: [BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)
                  )],
                ),
                alignment: Alignment.center,
                child: TextField(
                  controller: fromDateController,
                  onTap: () async {
                    // await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate: DateTime(2023));
                  },
                  cursorColor: Color(0xDD000000),
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.calendar_today,
                        color: Color(0xDD000000),
                      ),
                      hintText: "From Date",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none
                  ),
      
                  
                ),
              ),
      
              Container(
                margin: EdgeInsets.only(left: 20, right: 20,top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                  boxShadow: [BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)
                  )],
                ),
                alignment: Alignment.center,
                child: TextField(
                  controller: toDateController,
                  cursorColor: Color(0xDD000000),
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.calendar_today,
                        color: Color(0xDD000000),
                      ),
                      hintText: "To Date",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none
                  ),
      
                  
                ),
              ),
              Container(
                 margin: EdgeInsets.only(left: 20, right: 20,top: 20),
                 padding: EdgeInsets.only(left: 20, right: 20),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(50),
                   color: Colors.grey[200],
                   boxShadow: [BoxShadow(
                       offset: Offset(0, 10),
                       blurRadius: 50,
                       color: Color(0xffEEEEEE)
                   )],
                 ),
                 alignment: Alignment.center,
                 child: TextField(
                  controller: phoneController,
                   cursorColor: Color(0xDD000000),
                   decoration: InputDecoration(
                       icon: Icon(
                         Icons.phone,
                         color: Color(0xDD000000),
                       ),
                       hintText: "Phone Number",
                       enabledBorder: InputBorder.none,
                       focusedBorder: InputBorder.none
                   ),
                ),
               ),
      
               Container(
                 margin: EdgeInsets.only(left: 20, right: 20,top: 20),
                 padding: EdgeInsets.only(left: 20, right: 20),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(50),
                   color: Colors.grey[200],
                   boxShadow: [BoxShadow(
                       offset: Offset(0, 10),
                       blurRadius: 50,
                       color: Color(0xffEEEEEE)
                   )],
                 ),
                 alignment: Alignment.center,
                 child: TextField(
                  controller: facuNameController,
                   cursorColor: Color(0xDD000000),
                   decoration: InputDecoration(
                       icon: Icon(
                         Icons.account_circle_outlined,
                         color: Color(0xDD000000),
                       ),
                       hintText: "Name of the Handling Incharge",
                       enabledBorder: InputBorder.none,
                       focusedBorder: InputBorder.none
                   ),
                ),
               ),
      
               Container(
                 margin: EdgeInsets.only(left: 20, right: 20,top: 20),
                 padding: EdgeInsets.only(left: 20, right: 20),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(50),
                   color: Colors.grey[200],
                   boxShadow: [BoxShadow(
                       offset: Offset(0, 10),
                       blurRadius: 50,
                       color: Color(0xffEEEEEE)
                   )],
                 ),
                 alignment: Alignment.center,
                 child: TextField(
                  controller: feesController,
                   obscureText: false,
                   cursorColor: Color(0xDD000000),
                   decoration: InputDecoration(
                       icon: Icon(
                         Icons.money_outlined,
                         color: Color(0xDD000000),
                       ),
                       hintText: "Enter Fees",
                       enabledBorder: InputBorder.none,
                       focusedBorder: InputBorder.none
                   ),
                 ),
               ),
               Container(
                 margin: EdgeInsets.only(left: 20, right: 20,top: 20),
                 padding: EdgeInsets.only(left: 20, right: 20),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(50),
                   color: Colors.grey[200],
                   boxShadow: [BoxShadow(
                       offset: Offset(0, 10),
                       blurRadius: 50,
                       color: Color(0xffEEEEEE)
                   )],
                 ),
                 alignment: Alignment.center,
                 child: TextField(
                  controller: elegibleController,
                   obscureText: false,
                   cursorColor: Color(0xDD000000),
                   decoration: InputDecoration(
                       icon: Icon(
                         Icons.check,
                         color: Color(0xDD000000),
                       ),
                       hintText: "Eligibility Criteria",
                       enabledBorder: InputBorder.none,
                       focusedBorder: InputBorder.none
                   ),
                 ),
               ),
      
               Container(
                 margin: EdgeInsets.only(left: 20, right: 20,top: 20),
                 padding: EdgeInsets.only(left: 20, right: 20),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(50),
                   color: Colors.grey[200],
                   boxShadow: [BoxShadow(
                       offset: Offset(0, 10),
                       blurRadius: 50,
                       color: Color(0xffEEEEEE)
                   )],
                 ),
                 alignment: Alignment.center,
                 child: TextField(
                  controller:noCandController,
                   obscureText: false,
                   cursorColor: Color(0xDD000000),
                   decoration: InputDecoration(
                       icon: Icon(
                         Icons.boy_rounded,
                         color: Color(0xDD000000),
                       ),
                       hintText: "Total No of Registrations",
                       enabledBorder: InputBorder.none,
                       focusedBorder: InputBorder.none
                   ),
                 ),
               ),
      
               Container(
                height: 200,
                 margin: EdgeInsets.only(left: 20, right: 20,top: 20),
                 padding: EdgeInsets.only(left: 20, right: 20),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                   color: Colors.grey[200],
                   boxShadow: [BoxShadow(
                       offset: Offset(0, 10),
                       blurRadius: 50,
                       color: Color(0xffEEEEEE)
                   )],
                 ),
                 alignment: Alignment.topLeft,
                 child: TextField(
                  controller: addressController,
                  keyboardType: TextInputType.multiline,
                   minLines: 1,
                   maxLines: null,
                   obscureText: false,
                   cursorColor: Color(0xDD000000),
                   decoration: InputDecoration(
                       icon: Icon(
                         Icons.location_city,
                         color: Color(0xDD000000),
                       ),
                       hintText: "Address",
                       enabledBorder: InputBorder.none,
                       focusedBorder: InputBorder.none
                   ),
                 ),
               ),
      
               Container(
                height: 200,
                 margin: EdgeInsets.only(left: 20, right: 20,top: 20),
                 padding: EdgeInsets.only(left: 20, right: 20),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                   color: Colors.grey[200],
                   boxShadow: [BoxShadow(
                       offset: Offset(0, 10),
                       blurRadius: 50,
                       color: Color(0xffEEEEEE)
                   )],
                 ),
                 alignment: Alignment.topLeft,
                 child: TextField(
                  controller: descController,
                   keyboardType: TextInputType.multiline,
                   minLines: 1,
                   maxLines: null,
                   obscureText: false,
                   cursorColor: Color(0xDD000000),
                   decoration: InputDecoration(
                       icon: Icon(
                         Icons.feed_outlined,
                         color: Color(0xDD000000),
                       ),
                       hintText: "Workshop Description",
                       enabledBorder: InputBorder.none,
                       focusedBorder: InputBorder.none
                   ),
                 ),
               ),
      
               Container(
                 margin: EdgeInsets.only(left: 20, right: 20,top: 10),
                 padding: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                 color: Colors.grey[200],
                 boxShadow: [BoxShadow(
                     offset: Offset(0, 10),
                     blurRadius: 50,
                     color: Color(0xffEEEEEE)
                )],
               ),
          
              ),
              GestureDetector(
                onTap: ()=>{
                  addUser(),
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 10,bottom: 30),
                  padding: EdgeInsets.only(left: 20, right: 20,),
                  alignment: Alignment.center,
                  height: 54,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [(new Color(0xFF64B5F6)),(new Color(0xFF01579B))],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight
                    ),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE)
                    )],
                  ),
                  child: Text("Register",
                    style: TextStyle(
                        color: Colors.white
                    ),),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
 }