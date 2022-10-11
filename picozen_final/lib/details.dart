// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:scanner_app/description.dart';
// import 'home_page.dart';
// import 'home_screen.dart';


// class Details extends StatefulWidget {
//   Details({Key? key}) : super(key: key);


//   @override
//   State<Details> createState() => DetailsState();
// }

// class DetailsState extends State<Details> {
//   dynamic data;

//   Future<dynamic> getData() async {

//     final DocumentReference document =   FirebaseFirestore.instance.collection("register").doc('snydTwLIySppVc3leDjU');

//     await document.get().then<dynamic>(( DocumentSnapshot snapshot) async{
//      setState(() {
//        data =snapshot.data;
//      });
//     });
//  }


// // getData();
//   @override
//   void initState() {

//     super.initState();
//     getData();
//   }

 
//   Widget build(BuildContext context) {

    
    
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(child: Padding(
//           padding: const EdgeInsets.only(right: 50),
//           child: Text('Workshops'),
//         )),
//         backgroundColor: Colors.blueGrey,
//         leading: IconButton(onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => HomePage()),
//           );
//         },
//           icon: Icon(Icons.arrow_back_ios_new),
//         ),
//         // leading: IconButton(onPressed: () {},
//         //   icon: Icon(Icons.arrow_back_ios_new),
//         // ),
//       ),

//       body:

//       Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
//           child:ListView(children: [

//             InkWell(
//               highlightColor: Color.fromARGB(255, 188, 223, 255),
//               onTap: (){
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => descriptionPage()),
//                 );
//                 print('clicked');
//               },
//               child: Card(
//                 color: Color.fromARGB(255, 244, 250, 255),
//                 elevation: 10,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10)
//                 ),
//                 child: Container(
//                   height: 130,
//                   width: 500,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left:10.0,top: 10),
//                         child: Text(data()['email'],
//                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Text('Bannari Amman Institute of Technology',
//                           style: TextStyle(fontSize: 15),
//                         ),
//                       ),


//                       Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(10.0),
//                             child: Text('Course duration: 2 weeks',
//                               style: TextStyle(fontSize: 15,
//                                   fontWeight: FontWeight.bold,
//                                   color: Color.fromARGB(255, 129, 127, 127)),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left:130.0),
//                             child: Align(
//                                 alignment: Alignment.bottomRight,
//                                 child: Icon(Icons.arrow_forward_ios,
//                                   color: Color.fromARGB(255, 104, 104, 104),)
//                             ),
//                           ),
//                         ],
//                       ),

//                     ],
//                   ),

//                 ),

//               ),
//             ),

//             InkWell(
//               highlightColor: Color.fromARGB(255, 188, 223, 255),
//               onTap: (){
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => descriptionPage()),
//                 );
//                 print('clicked');
//               },
//               child: Card(
//                 color: Color.fromARGB(255, 244, 250, 255),
//                 elevation: 10,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10)
//                 ),
//                 child: Container(
//                   height: 130,
//                   width: 500,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left:10.0,top: 10),
//                         child: Text('Web Technology',
//                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Text('Bannari Amman Institute of Technology',
//                           style: TextStyle(fontSize: 15),
//                         ),
//                       ),


//                       Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(10.0),
//                             child: Text('Course duration: 2 weeks',
//                               style: TextStyle(fontSize: 15,
//                                   fontWeight: FontWeight.bold,
//                                   color: Color.fromARGB(255, 129, 127, 127)),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left:130.0),
//                             child: Align(
//                                 alignment: Alignment.bottomRight,
//                                 child: Icon(Icons.arrow_forward_ios,
//                                   color: Color.fromARGB(255, 104, 104, 104),)
//                             ),
//                           ),
//                         ],
//                       ),

//                     ],
//                   ),

//                 ),

//               ),
//             ),

//             InkWell(
//               highlightColor: Color.fromARGB(255, 188, 223, 255),
//               onTap: (){
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => descriptionPage()),
//                 );
//                 print('clicked');
//               },
//               child: Card(
//                 color: Color.fromARGB(255, 244, 250, 255),
//                 elevation: 10,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10)
//                 ),
//                 child: Container(
//                   height: 130,
//                   width: 500,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left:10.0,top: 10),
//                         child: Text('Artificial Intelligence',
//                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Text('Bannari Amman Institute of Technology',
//                           style: TextStyle(fontSize: 15),
//                         ),
//                       ),


//                       Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(10.0),
//                             child: Text('Course duration: 2 weeks',
//                               style: TextStyle(fontSize: 15,
//                                   fontWeight: FontWeight.bold,
//                                   color: Color.fromARGB(255, 129, 127, 127)),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left:130.0),
//                             child: Align(
//                                 alignment: Alignment.bottomRight,
//                                 child:Icon(Icons.arrow_forward_ios,
//                                   color: Color.fromARGB(255, 104, 104, 104),)
//                             ),
//                           ),
//                         ],
//                       ),

//                     ],
//                   ),

//                 ),

//               ),
//             ),

//             InkWell(
//               highlightColor: Color.fromARGB(255, 188, 223, 255),
//               onTap: (){
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => descriptionPage()),
//                 );
//                 print('clicked');
//               },
//               child: Card(
//                 color: Color.fromARGB(255, 244, 250, 255),
//                 elevation: 10,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10)
//                 ),
//                 child: Container(
//                   height: 130,
//                   width: 500,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left:10.0,top: 10),
//                         child: Text('Basics of Python',
//                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Text('Bannari Amman Institute of Technology',
//                           style: TextStyle(fontSize: 15),
//                         ),
//                       ),


//                       Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(10.0),
//                             child: Text('Course duration: 2 weeks',
//                               style: TextStyle(fontSize: 15,
//                                   fontWeight: FontWeight.bold,
//                                   color: Color.fromARGB(255, 129, 127, 127)),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left:130.0),
//                             child: Align(
//                                 alignment: Alignment.bottomRight,
//                                 child: Icon(Icons.arrow_forward_ios,
//                                   color: Color.fromARGB(255, 104, 104, 104),)
//                             ),
//                           ),
//                         ],
//                       ),

//                     ],
//                   ),

//                 ),

//               ),
//             ),

//             InkWell(
//               highlightColor: Color.fromARGB(255, 188, 223, 255),
//               onTap: (){
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => descriptionPage()),
//                 );
//                 print('clicked');
//               },
//               child: Card(
//                 color: Color.fromARGB(255, 244, 250, 255),
//                 elevation: 10,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10)
//                 ),
//                 child: Container(
//                   height: 130,
//                   width: 500,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left:10.0,top: 10),
//                         child: Text('C and C++',
//                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Text('Bannari Amman Institute of Technology',
//                           style: TextStyle(fontSize: 15),
//                         ),
//                       ),


//                       Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(10.0),
//                             child: Text('Course duration: 2 weeks',
//                               style: TextStyle(fontSize: 15,
//                                   fontWeight: FontWeight.bold,
//                                   color: Color.fromARGB(255, 129, 127, 127)),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left:130.0),
//                             child: Align(
//                                 alignment: Alignment.bottomRight,
//                                 child: Icon(Icons.arrow_forward_ios,
//                                   color: Color.fromARGB(255, 104, 104, 104),)
//                             ),
//                           ),
//                         ],
//                       ),

//                     ],
//                   ),

//                 ),

//               ),
//             ),

//             InkWell(
//               highlightColor: Color.fromARGB(255, 188, 223, 255),
//               onTap: (){
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => descriptionPage()),
//                 );
//                 print('clicked');
//               },
//               child: Card(
//                 color: Color.fromARGB(255, 244, 250, 255),
//                 elevation: 10,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10)
//                 ),
//                 child: Container(
//                   height: 130,
//                   width: 500,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left:10.0,top: 10),
//                         child: Text('Fundamentals of Java',
//                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Text('Bannari Amman Institute of Technology',
//                           style: TextStyle(fontSize: 15),
//                         ),
//                       ),


//                       Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(10.0),
//                             child: Text('Course duration: 2 weeks',
//                               style: TextStyle(fontSize: 15,
//                                   fontWeight: FontWeight.bold,
//                                   color: Color.fromARGB(255, 129, 127, 127)),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left:130.0),
//                             child: Align(
//                                 alignment: Alignment.bottomRight,
//                                 child: Icon(Icons.arrow_forward_ios,
//                                   color: Color.fromARGB(255, 104, 104, 104),)
//                             ),
//                           ),
//                         ],
//                       ),

//                     ],
//                   ),

//                 ),

//               ),
//             ),

//             InkWell(
//               highlightColor: Color.fromARGB(255, 188, 223, 255),
//               onTap: (){
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => descriptionPage()),
//                 );
//                 print('clicked');
//               },
//               child: Card(
//                 color: Color.fromARGB(255, 244, 250, 255),
//                 elevation: 10,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10)
//                 ),
//                 child: Container(
//                   height: 130,
//                   width: 500,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left:10.0,top: 10),
//                         child: Text('Virtual Reality',
//                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Text('Bannari Amman Institute of Technology',
//                           style: TextStyle(fontSize: 15),
//                         ),
//                       ),


//                       Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(10.0),
//                             child: Text('Course duration: 2 weeks',
//                               style: TextStyle(fontSize: 15,
//                                   fontWeight: FontWeight.bold,
//                                   color: Color.fromARGB(255, 129, 127, 127)),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left:130.0),
//                             child: Align(
//                                 alignment: Alignment.bottomRight,
//                                 child: Icon(Icons.arrow_forward_ios,
//                                   color: Color.fromARGB(255, 104, 104, 104),)
//                             ),
//                           ),
//                         ],
//                       ),

//                     ],
//                   ),

//                 ),

//               ),
//             ),


//           ],)
//       ),
//     );
//   }
// }