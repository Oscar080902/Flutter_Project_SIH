import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class InsSignup extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InitState();

}
 class InitState extends State<InsSignup>{

  TextEditingController instNameController = TextEditingController();
  TextEditingController instCodeController = TextEditingController();
  TextEditingController inst_typeController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController PrincipalController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController CountryController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  TextEditingController descController = TextEditingController();


  CollectionReference Ins_Register = FirebaseFirestore.instance.collection('Ins_Register');

    Future<void> addUser() {
      // Call the user's CollectionReference to add a new user
      return Ins_Register
          .add({
            'instname': instNameController.text, // John Doe
            'instcode': instCodeController.text, // Stokes and Sons
            'inst_type': inst_typeController.text,
            'city': cityController.text,
            'address': addressController.text,
            'Principal': PrincipalController.text,
            'phone': phoneController.text,
            'website': websiteController.text,
            'pincode': pincodeController.text,
            'State': stateController.text,
            'Country': CountryController.text,
            'email': emailController.text,
            'password': pwdController.text,
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
                  controller: instCodeController,
                  cursorColor: Color(0xDD000000),
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.location_on,
                        color: Color(0xDD000000),
                      ),
                      hintText: "Institution Code",
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
                  controller: inst_typeController,
                  cursorColor: Color(0xDD000000),
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.email_rounded,
                        color: Color(0xDD000000),
                      ),
                      hintText: "School / College",
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
                  controller: cityController,
                  cursorColor: Color(0xDD000000),
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.science,
                        color: Color(0xDD000000),
                      ),
                      hintText: "City",
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
                  controller: addressController,
                  onTap: () async {
                    // await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate: DateTime(2023));
                  },
                  cursorColor: Color(0xDD000000),
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.calendar_today,
                        color: Color(0xDD000000),
                      ),
                      hintText: "Address",
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
                  controller: PrincipalController,
                  cursorColor: Color(0xDD000000),
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.calendar_today,
                        color: Color(0xDD000000),
                      ),
                      hintText: "Principal",
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
                  controller: websiteController,
                   cursorColor: Color(0xDD000000),
                   decoration: InputDecoration(
                       icon: Icon(
                         Icons.account_circle_outlined,
                         color: Color(0xDD000000),
                       ),
                       hintText: "Website",
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
                  controller: pincodeController,
                   obscureText: false,
                   cursorColor: Color(0xDD000000),
                   decoration: InputDecoration(
                       icon: Icon(
                         Icons.money_outlined,
                         color: Color(0xDD000000),
                       ),
                       hintText: "Pin Code",
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
                  controller: stateController,
                   obscureText: false,
                   cursorColor: Color(0xDD000000),
                   decoration: InputDecoration(
                       icon: Icon(
                         Icons.check,
                         color: Color(0xDD000000),
                       ),
                       hintText: "State",
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
                  controller:emailController,
                   obscureText: false,
                   cursorColor: Color(0xDD000000),
                   decoration: InputDecoration(
                       icon: Icon(
                         Icons.boy_rounded,
                         color: Color(0xDD000000),
                       ),
                       hintText: "Country",
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
                  controller:CountryController,
                   obscureText: false,
                   cursorColor: Color(0xDD000000),
                   decoration: InputDecoration(
                       icon: Icon(
                         Icons.boy_rounded,
                         color: Color(0xDD000000),
                       ),
                       hintText: "E-Mail Id",
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
                  controller:pwdController,
                   obscureText: false,
                   cursorColor: Color(0xDD000000),
                   decoration: InputDecoration(
                       icon: Icon(
                         Icons.boy_rounded,
                         color: Color(0xDD000000),
                       ),
                       hintText: "Password",
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
                       hintText: "School Description",
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
                //   Navigator.push(context, MaterialPageRoute(
                //     builder: (context)=> InsLogin()
                // ))
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