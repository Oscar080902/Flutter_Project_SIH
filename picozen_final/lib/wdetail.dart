import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:picozen_final/description.dart';
import 'package:picozen_final/student_homescreen.dart';


class WorksList extends StatefulWidget {
  const WorksList({Key? key}) : super(key: key);

  @override
  State<WorksList> createState() => _WorksListState();
  
}

class _WorksListState extends State<WorksList> {
  
  @override
  Widget build(BuildContext context) {
    

     return Scaffold(
      appBar: AppBar(
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Text('Workshops'),
        )),
        backgroundColor: Colors.blueGrey,
        leading: IconButton(onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => StudentHomeScreen()),
          );
        },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        // leading: IconButton(onPressed: () {},
        //   icon: Icon(Icons.arrow_back_ios_new),
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance.collection("register").snapshots(),
                builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if(snapshot.hasData) {
                    final snap = snapshot.data!.docs;
                    return ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: snap.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                highlightColor: Color.fromARGB(255, 188, 223, 255),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => descriptionPage()),
                  );
                  print('clicked');
                },
                child: Card(
                  color: Color.fromARGB(255, 244, 250, 255),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Container(
                    height: 140,
                    width:550,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:10.0,top: 10),
                          child: Text(snap[index]['instname'],
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('Bannari Amman Institute of Technology',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),


                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Course duration: 2 weeks',
                                style: TextStyle(fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 129, 127, 127)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:130.0),
                              child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Icon(Icons.arrow_forward_ios,
                                    color: Color.fromARGB(255, 104, 104, 104),)
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),

                  ),

                ),
              );
                      },
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
  }
