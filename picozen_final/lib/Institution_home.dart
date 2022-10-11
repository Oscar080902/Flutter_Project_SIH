import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:picozen_final/teacher.dart';
class Institution_Home extends StatefulWidget {
  const Institution_Home({Key? key}) : super(key: key);

  @override
  _Institution_HomeState createState() => _Institution_HomeState();
}

class _Institution_HomeState extends State<Institution_Home> {
  final CollectionReference _workshop_registration =
  FirebaseFirestore.instance.collection('workshop_registration');
  final TextEditingController _inst_namecontroller = TextEditingController();
  final TextEditingController _locationcontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _Name_of_workshopcontroller = TextEditingController();
  final TextEditingController _From_Datecontroller = TextEditingController();
  final TextEditingController _To_Datecontroller = TextEditingController();
  final TextEditingController _Phone_numbercontroller = TextEditingController();
  final TextEditingController _fac_namecontroller = TextEditingController();
  final TextEditingController _feescontroller = TextEditingController();
  final TextEditingController _eligibilitycontroller = TextEditingController();
  final TextEditingController _no_of_registercontroller = TextEditingController();
  final TextEditingController _addresscontroller = TextEditingController();
  final TextEditingController _descriptioncontroller = TextEditingController();


  Future<void> _update([DocumentSnapshot? documentSnapshot])async{
    if(documentSnapshot !=null){
      _inst_namecontroller.text = documentSnapshot['inst_name'];
      _locationcontroller.text= documentSnapshot['location'];
      _emailcontroller.text = documentSnapshot['email'];
      _Name_of_workshopcontroller.text= documentSnapshot['Name_of_workshop'];
      _From_Datecontroller.text= documentSnapshot['From_Date'];
      _To_Datecontroller.text= documentSnapshot['To_Date'];
      _Phone_numbercontroller.text =documentSnapshot['Phone_number'];
      _fac_namecontroller.text =documentSnapshot['fac_name'];
      _feescontroller.text= documentSnapshot['fees'];
      _eligibilitycontroller.text= documentSnapshot['eligibility'];
      _no_of_registercontroller.text= documentSnapshot['No_of_registrations'];
      _addresscontroller.text =documentSnapshot['address'];
      _descriptioncontroller.text =documentSnapshot['description'];


    }
    await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder:(BuildContext ctx){
          return Padding(padding: EdgeInsets.only(
              top: 20,
              left: 20,   
              right: 20,
              bottom: MediaQuery.of(ctx).viewInsets.bottom+20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: _inst_namecontroller,
                    decoration: const InputDecoration(labelText: 'Institute Name'),
                  ),
                  TextField(
                    controller: _locationcontroller,
                    decoration: const InputDecoration(labelText: 'Location'),
                  ),
                  TextField(
                    controller: _emailcontroller,
                    decoration: const InputDecoration(labelText: 'Email'),
                  ),
                  TextField(
                    controller: _Name_of_workshopcontroller,
                    decoration: const InputDecoration(labelText: 'Name of Workshop'),
                  ),
                  TextField(
                    controller: _From_Datecontroller,
                    decoration: const InputDecoration(labelText: 'From Date'),
                  ),
                  TextField(
                    controller: _To_Datecontroller,
                    decoration: const InputDecoration(labelText: 'To Date'),
                  ),
                  TextField(
                    controller: _Phone_numbercontroller,
                    decoration: const InputDecoration(labelText: 'Phone Number'),
                  ),
                  TextField(
                    controller: _fac_namecontroller,
                    decoration: const InputDecoration(labelText: 'Name of the Handling Faculty'),
                  ),
                  TextField(
                    controller: _feescontroller,
                    decoration: const InputDecoration(labelText: 'Fees'),
                  ),
                  TextField(
                    controller: _eligibilitycontroller,
                    decoration: const InputDecoration(labelText: 'Eligibility Criteria'),
                  ),
                  TextField(
                    controller: _no_of_registercontroller,
                    decoration: const InputDecoration(labelText: 'Total no. of Registrations'),
                  ),
                  TextField(
                    controller: _addresscontroller,
                    decoration: const InputDecoration(labelText: 'Address'),
                  ),
                  TextField(
                    controller: _descriptioncontroller,
                    decoration: const InputDecoration(labelText: 'Description'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      child: const Text('Update'),
                      onPressed: () async{
                        final String Institute_name = _inst_namecontroller.text;
                        final String Location = _locationcontroller.text;
                        final String Email = _emailcontroller.text;
                        final String Name_of_workshop = _Name_of_workshopcontroller.text;
                        final String From_Date = _From_Datecontroller.text;
                        final String To_Date = _To_Datecontroller.text;
                        final String Phone_number = _Phone_numbercontroller.text;
                        final String Fac_Name = _fac_namecontroller.text;
                        final String Fees = _feescontroller.text;
                        final String Eligibility = _eligibilitycontroller.text;
                        final String No_of_registrations = _no_of_registercontroller.text;
                        final String Address = _addresscontroller.text;
                        final String Description = _descriptioncontroller.text;
          
                        if(Name_of_workshop !=null){
                          await _workshop_registration
                              .doc(documentSnapshot!.id)
                              .update({"Institute Name" : Institute_name,
                              "Location": Location, 
                              "Email": Email, 
                              "Name of Workshop": Name_of_workshop,
                              "From Date": From_Date,
                              "To Date": To_Date,
                              "Phone Number": Phone_number,
                              "Faculty Name": Fac_Name,
                              "Fees": Fees,
                              "Eligibility Criteria": Eligibility,
                              "No of Registrations": No_of_registrations,
                              "Address": Address,
                              "Description": Description,
                              
                              });
                           _inst_namecontroller.text="";
                           _locationcontroller.text="";
                           _emailcontroller.text="";
                           _Name_of_workshopcontroller.text="";
                           _From_Datecontroller.text="";
                           _To_Datecontroller.text="";
                           _Phone_numbercontroller.text="";
                           _fac_namecontroller.text="";
                           _feescontroller.text="";
                           _eligibilitycontroller.text="";
                           _no_of_registercontroller.text="";
                           _addresscontroller.text="";
                           _descriptioncontroller.text="";
                          Navigator.of(context).pop();
                        }
                      }
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
  Future<void> _create([DocumentSnapshot? documentSnapshot])async{
    if(documentSnapshot !=null){
       _inst_namecontroller.text = documentSnapshot['inst_name'];
      _locationcontroller.text= documentSnapshot['location'];
      _emailcontroller.text = documentSnapshot['email'];
      _Name_of_workshopcontroller.text= documentSnapshot['Name_of_workshop'];
      _From_Datecontroller.text= documentSnapshot['From_Date'];
      _To_Datecontroller.text= documentSnapshot['To_Date'];
      _Phone_numbercontroller.text =documentSnapshot['Phone_number'];
      _fac_namecontroller.text =documentSnapshot['fac_name'];
      _feescontroller.text= documentSnapshot['fees'];
      _eligibilitycontroller.text= documentSnapshot['eligibility'];
      _no_of_registercontroller.text= documentSnapshot['No_of_registrations'];
      _addresscontroller.text =documentSnapshot['address'];
      _descriptioncontroller.text =documentSnapshot['description'];
    }
    await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder:(BuildContext ctx){
          return SingleChildScrollView(
            child: Padding(padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: MediaQuery.of(ctx).viewInsets.bottom+20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                      controller: _inst_namecontroller,
                      decoration: const InputDecoration(labelText: 'Institute Name'),
                    ),
                    TextField(
                      controller: _locationcontroller,
                      decoration: const InputDecoration(labelText: 'Location'),
                    ),
                    TextField(
                      controller: _emailcontroller,
                      decoration: const InputDecoration(labelText: 'Email'),
                    ),
                    TextField(
                      controller: _Name_of_workshopcontroller,
                      decoration: const InputDecoration(labelText: 'Name of Workshop'),
                    ),
                    TextField(
                      controller: _From_Datecontroller,
                      decoration: const InputDecoration(labelText: 'From Date'),
                    ),
                    TextField(
                      controller: _To_Datecontroller,
                      decoration: const InputDecoration(labelText: 'To Date'),
                    ),
                    TextField(
                      controller: _Phone_numbercontroller,
                      decoration: const InputDecoration(labelText: 'Phone Number'),
                    ),
                    TextField(
                      controller: _fac_namecontroller,
                      decoration: const InputDecoration(labelText: 'Name of the Handling Faculty'),
                    ),
                    TextField(
                      controller: _feescontroller,
                      decoration: const InputDecoration(labelText: 'Fees'),
                    ),
                    TextField(
                      controller: _eligibilitycontroller,
                      decoration: const InputDecoration(labelText: 'Eligibility Criteria'),
                    ),
                    TextField(
                      controller: _no_of_registercontroller,
                      decoration: const InputDecoration(labelText: 'Total no. of Registrations'),
                    ),
                    TextField(
                      controller: _addresscontroller,
                      decoration: const InputDecoration(labelText: 'Address'),
                    ),
                    TextField(
                      controller: _descriptioncontroller,
                      decoration: const InputDecoration(labelText: 'Description'),
                    ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    child: const Text('Create'),
                    onPressed: () async{
                      final String Institute_name = _inst_namecontroller.text;
                          final String Location = _locationcontroller.text;
                          final String Email = _emailcontroller.text;
                          final String Name_of_workshop = _Name_of_workshopcontroller.text;
                          final String From_Date = _From_Datecontroller.text;
                          final String To_Date = _To_Datecontroller.text;
                          final String Phone_number = _Phone_numbercontroller.text;
                          final String Fac_Name = _fac_namecontroller.text;
                          final String Fees = _feescontroller.text;
                          final String Eligibility = _eligibilitycontroller.text;
                          final String No_of_registrations = _no_of_registercontroller.text;
                          final String Address = _addresscontroller.text;
                          final String Description = _descriptioncontroller.text;
                      if(Name_of_workshop !=null){
                        await _workshop_registration.add(
                            {
                              "Institute Name" : Institute_name,
                              "Location": Location, 
                              "Email": Email, 
                              "Name of Workshop": Name_of_workshop,
                              "From Date": From_Date,
                              "To Date": To_Date,
                              "Phone Number": Phone_number,
                              "Faculty Name": Fac_Name,
                              "Fees": Fees,
                              "Eligibility Criteria": Eligibility,
                              "No of Registrations": No_of_registrations,
                              "Address": Address,
                              "Description": Description,
                            });
                             _inst_namecontroller.text="";
                             _locationcontroller.text="";
                             _emailcontroller.text="";
                             _Name_of_workshopcontroller.text="";
                             _From_Datecontroller.text="";
                             _To_Datecontroller.text="";
                             _Phone_numbercontroller.text="";
                             _fac_namecontroller.text="";
                             _feescontroller.text="";
                             _eligibilitycontroller.text="";
                             _no_of_registercontroller.text="";
                             _addresscontroller.text="";
                             _descriptioncontroller.text="";
                        Navigator.of(context).pop();
                      }
                    },
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
  Future<void> _delete(String productId) async{
    await _workshop_registration.doc(productId).delete();
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('you have sucessfully deleted a product')
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: new DrawerCodeOnly(),
      appBar: new AppBar(
        backgroundColor: Colors.blueGrey,
        title: new Text("Add Events"),
      ),
      body: StreamBuilder(
        stream: _workshop_registration.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot){
          if(streamSnapshot.hasData){
            return ListView.builder(
              itemCount: streamSnapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final DocumentSnapshot documentSnapshot=
                streamSnapshot.data!.docs[index];
                return Card(
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text(documentSnapshot['workshoptitle']),
                      subtitle: Text(documentSnapshot['about']),
                      trailing: SizedBox(
                        width: 100,
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: ()=>
                                  _update(documentSnapshot),
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: ()=>
                                  _delete(documentSnapshot.id),
                            )
                          ],
                        ),
                      ),
                    )
                );
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>_create(),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
