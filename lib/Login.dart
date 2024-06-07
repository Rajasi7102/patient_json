
import 'package:flutter/material.dart';
import 'package:patient_json_app/Screen2/Login_Page.dart';
import 'package:patient_json_app/screen3/register.dart';
class Login extends StatefulWidget {
  const Login ({super.key, required this.title});

 

  final String title;

  @override
  State<Login> createState() => _MyLogin();
}

class _MyLogin extends State<Login> {

 

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(widget.title),
    ),
    body: Container(
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Color.fromARGB(215, 209, 209, 214),
               child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 60),
                  Container(
                    width: 300,
                    height: 600,
                    child: Column(
                      children: [
                        Container(
                          height: 500, 
                    // adjust the height as needed
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset('assets/Doctor.jpeg'),
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'SAPDOS',
                    style: TextStyle(
                      fontSize: 60,
                       color:Color.fromARGB(223, 6, 25, 71),
                      fontWeight: FontWeight.bold,
                      
                    ),
                  ),
                  SizedBox(height:150),
                  Text(
                    'Login to your sapdos account or create one now.',
                    textAlign: TextAlign.center,
                    
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: ( ) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>Login_Page(title: '',)
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 2, 41, 147),
                      minimumSize: Size(350, 40),
                     
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          
                      textStyle: TextStyle(fontSize: 20),
                       foregroundColor: Colors.white,
                      
                   ),
                   child: Text('LOGIN'),
                ),
                  SizedBox(height: 30),
                 ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>Register(title: ''),
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 2, 41, 147),
                      minimumSize: Size(350, 40),
                     
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          
                      textStyle: TextStyle(fontSize: 20),
                       foregroundColor: Colors.white,
                      
                   ),
                    child: Text('SIGN-UP'),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Proceed as a Guest',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
              
                  

                  
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
}