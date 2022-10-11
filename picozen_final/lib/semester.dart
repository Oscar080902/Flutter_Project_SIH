import 'package:flutter/material.dart';
import 'package:picozen_final/sem%20detail/sem1.dart';


class Semester extends StatefulWidget {
  const Semester({Key? key}) : super(key: key);

  @override
  State<Semester> createState() => _SemesterState();
}

class _SemesterState extends State<Semester> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Text('Semester'),
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
              MaterialPageRoute(builder: (context) => Semester1()),  
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
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Text('Semester I',
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
                    child: Text('Semester II',
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
                    child: Text('Semester III',
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
                    child: Text('Semester IV',
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
                    child: Text('Semester V',
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
                    child: Text('Semester VI',
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
                    child: Text('Semester VII',
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
                    child: Text('Semester VIII',
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