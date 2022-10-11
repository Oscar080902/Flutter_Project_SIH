import 'package:flutter/material.dart';
import 'package:picozen_final/sem%20detail/iot.dart';


class CourseDetail extends StatefulWidget {
  const CourseDetail({Key? key}) : super(key: key);

  @override
  State<CourseDetail> createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Text('Curriculum'),
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
              Navigator.push(  
              context,  
              MaterialPageRoute(builder: (context) => iot()),  
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
              height: 80,
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 25),
                    child: Text('Internet of Things',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600,),),
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
              // MaterialPageRoute(builder: (context) => descriptionPage()),  
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
              height: 80,
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Text('Big Data and Machine learning',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
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
              // MaterialPageRoute(builder: (context) => descriptionPage()),  
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
              height: 80,
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Text('Web-Technology',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
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
              // MaterialPageRoute(builder: (context) => descriptionPage()),  
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
                    child: Text('Software Solutions for Bussiness Systems',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
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
              // MaterialPageRoute(builder: (context) => descriptionPage()),  
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
                    child: Text('Graphics design technology and virtual& augmented reality',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
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