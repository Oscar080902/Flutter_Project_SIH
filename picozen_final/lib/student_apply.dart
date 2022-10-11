import 'package:flutter/material.dart';


class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Text('Application Status'),
        )),
         backgroundColor: Colors.blueGrey,
         leading: IconButton(onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new),
         ),
      ),

      body:
      
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        child:ListView(children: [

          InkWell(
            highlightColor: Color.fromARGB(255, 188, 223, 255),
            onTap: (){
              // Navigator.push(  
              // context,  
              // MaterialPageRoute(builder: (context) => ()),  
              // );
              print('clicked');
            },
            child: Card(
            color: Color.fromARGB(255, 244, 250, 255),
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            child: Container(
              height: 102,
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Course Registered: ',
                                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                                Text("Internet of Things",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
                          ],
                        ),

                        Row(
                          children: [
                            Text('Status: ',
                                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                                Text("Waiting for Approval",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 212, 186, 19)),),
                          ],
                        ),
                        
                      ],
                    ),
                        
                        
                  ),                                       
                ],
                ),
              
              ),            
            ),
          ),

          InkWell(
            highlightColor: Color.fromARGB(255, 188, 223, 255),
            onTap: (){
              // Navigator.push(  
              // context,  
              // MaterialPageRoute(builder: (context) => ()),  
              // );
              print('clicked');
            },
            child: Card(
            color: Color.fromARGB(255, 244, 250, 255),
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            child: Container(
              height: 102,
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Course Registered: ',
                                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                                Text("Web-Technology",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
                          ],
                        ),

                        Row(
                          children: [
                            Text('Status: ',
                                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                                Text("Approved",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 19, 234, 62)),),
                          ],
                        ),
                        
                      ],
                    ),
                        
                        
                  ),                                       
                ],
                ),
              
              ),            
            ),
          ),

          InkWell(
            highlightColor: Color.fromARGB(255, 188, 223, 255),
            onTap: (){
              // Navigator.push(  
              // context,  
              // MaterialPageRoute(builder: (context) => ()),  
              // );
              print('clicked');
            },
            child: Card(
            color: Color.fromARGB(255, 244, 250, 255),
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            child: Container(
              height: 102,
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Course Registered: ',
                                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                                Text("Internet of Things",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
                          ],
                        ),

                        Row(
                          children: [
                            Text('Status: ',
                                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                                Text("Approval Declined",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 212, 19, 19)),),
                          ],
                        ),
                        
                      ],
                    ),
                        
                        
                  ),                                       
                ],
                ),
              
              ),            
            ),
          ),

               
        ],)
      ),      
    );    
  }
}