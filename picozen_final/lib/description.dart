import 'package:flutter/material.dart';
import 'details.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class descriptionPage extends StatefulWidget {
  const descriptionPage({Key? key}) : super(key: key);

  @override
  State<descriptionPage> createState() => _descriptionPageState();
}

class _descriptionPageState extends State<descriptionPage> {

//   dynamic data;

//   Future<dynamic> getData() async {

//     // final DocumentReference document =   FirebaseFirestore.instance.collection("register").doc('snydTwLIySppVc3leDjU');
    final CollectionReference document =   FirebaseFirestore.instance.collection("register");

//     // await document.get().then<dynamic>(( DocumentSnapshot snapshot) async{
//     //  setState(() {
//     //    data =snapshot.data;
//     //  });
//     // });

//  }


// getData();
  // @override
  // void initState() {

  //   super.initState();
  //   getData();
  // }

  //String desc = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Center(child: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Text('Description'),
          )),
          backgroundColor: Colors.blueGrey,
          leading: IconButton(onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => Details()),
            // );
          },
            icon: Icon(Icons.arrow_back_ios_new),
          ),
        ),

        body: StreamBuilder(
          stream: document.snapshots(),
          builder: (context,AsyncSnapshot<QuerySnapshot> snapshot) {
            final docse=snapshot.data?.docs;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context,index){
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.asset('images/workshops.jpg',
                          height:200,
                          fit: BoxFit.fill,
                        ),
            
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  stops: [0.2,0.9],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [Color.fromARGB(0, 255, 255, 255),
                                    Colors.white
                                  ])
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('About Workshop: ',
                        style: TextStyle(fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                        child: Text(docse![0]['desc'],
                          textAlign: TextAlign.justify,
                          style: TextStyle(color: Color.fromARGB(255, 98, 98, 98),
                              fontSize: 17),
                        ),
                      ),
                    ),
            
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text("From date: ",
                            style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(docse[0]['address'],
                        style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                        ],
                      ),
                      
                    ),     
            
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text("To date: ",
                            style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(docse[0]['address'],
                        style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                        ],
                      ),
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text("Eligibility: ",
                            style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(docse[0]['criteria'],
                        style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                        ],
                      ),
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text("Course Fee: ₹",
                            style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(docse[0]['fees'],
                        style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                        ],
                      ),
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text("No of Candidates: ",
                            style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(docse[0]['noregis'],
                        style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                        ],
                      ),
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text("Incharge Name: ",
                            style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(docse[0]['facuname'],
                        style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                        ],
                      ),
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text("Contact Details: ",
                            style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(docse[0]['phone'],
                        style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                        ],
                      ),
                      
                    ),
                    Align(
                      alignment: Alignment.center,
                      child:
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SizedBox(
                          height: 50,
                          width: 200,
                          child: TextButton(onPressed: (){
                          //   Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => ()),
                          //  );
                          },
                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xff885566))),
                            child: Text('REGISTER ',
                              style: TextStyle(color: Colors.white,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              
            });
          }
        )







    );

  }
}