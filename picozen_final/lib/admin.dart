import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:picozen_final/Register_institute.dart';
import 'login.dart';
import 'model.dart';

class Admin extends StatefulWidget {
  String id;
  Admin({required this.id});
  @override
  _AdminState createState() => _AdminState(id: id);
}

class _AdminState extends State<Admin> {
  String id;
  var rooll;
  var emaill;
  UserModel loggedInUser = UserModel();

  _AdminState({required this.id});
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("Admin") //.where('uid', isEqualTo: user!.uid)
        .doc(id)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
    }).whenComplete(() {
      CircularProgressIndicator();
      setState(() {
        emaill = loggedInUser.email.toString();
        rooll = loggedInUser.wrool.toString();
        id = loggedInUser.uid.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Admin",
        ),
        actions: [
          IconButton(
            onPressed: () {
              logout(context);
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: GestureDetector(
                onTap: ()=>{
                    Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> InsSignup()
                ))
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
                  child: Text("Register Institute",
                    style: TextStyle(
                        color: Colors.white
                    ),),
                ),
              ),
      ),
    );
  }

  Future<void> logout(BuildContext context) async {
    CircularProgressIndicator();
    await FirebaseAuth.instance.signOut();

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }
}
