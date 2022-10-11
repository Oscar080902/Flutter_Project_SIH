import 'package:flutter/material.dart';
import 'package:picozen_final/sem%20detail/course_detail.dart';


class Semester1 extends StatefulWidget {
  const Semester1({Key? key}) : super(key: key);

  @override
  State<Semester1> createState() => _Semester1State();
}

class _Semester1State extends State<Semester1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Text('Department'),
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
              MaterialPageRoute(builder: (context) => CourseDetail()),  
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
                    child: Text('Computer Technology',
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
                    child: Text('Information Technology',
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
                    child: Text('Bio-Technology',
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
                    child: Text('Mechanical Engineering',
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
                    child: Text('Computer Science and Engineering',
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
                    child: Text('Bio-Medical Engineering',
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
                    child: Text('Civil Engineering',
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
                    child: Text('Information Science and Engineering',
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