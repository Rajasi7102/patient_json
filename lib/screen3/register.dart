
import 'package:flutter/material.dart';
import 'package:patient_json_app/Screen2/Login_Page.dart';


class Register extends StatefulWidget {
  Register({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
 State<Register> createState() => _Myregister();
}


class _Myregister extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // body: Row(
      //   children: [
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         color: const Color.fromARGB(255, 176, 179, 182),
      //         padding: const EdgeInsets.all(20.0),
      //         child: Column(
      //           children: [
      //             SizedBox(height: 100),
      //             Image.asset('assets/Doctor.jpeg', height: 500),
                 
                 
      //           ],
      //         ),
      //       ),
      //     ),
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
                  const Text(
                    'SAPDOS',
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color:Color.fromARGB(223, 6, 25, 71),
                    ),
                  ),
                  const SizedBox(height: 70),
                  const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 40,
                      color:Color.fromARGB(223, 6, 25, 71) ,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Enter existing account’s details',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 40),
                  
                  


                   Container(
                    width: 300, 
                    height: 40, 
                    child: TextField(
                     decoration: InputDecoration(
                       prefixIcon: const Icon(Icons.email),
                       hintText: 'Email address/Phone No.',
                      border: OutlineInputBorder(),
                     ),
                     
                    ),
                  ),
                  SizedBox(height: 20),
                   Container(
                    width: 300, 
                    height: 40, 
                    child: TextField(
                      
                     decoration: InputDecoration(
                       prefixIcon: const Icon(Icons.lock),
                       hintText: 'Password',
                      border: OutlineInputBorder(),
                      
                     ),
                     
                    ),
                    

                  ),
       
                       
                   
                  SizedBox(height: 20),
                   Container(
                    width: 300, 
                    height: 40, 
                    child: TextField(
                     decoration: InputDecoration(
                       prefixIcon: const Icon(Icons.lock),
                       hintText: ' Confirm Password',
                      border: OutlineInputBorder(),
                      
                     ),
                     
                    ),
                    

                  ),
                 
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>Login_Page(title: '',)
                        ));
                      
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 1, 21, 37),
                      padding: EdgeInsets.symmetric(
                          horizontal: 100, vertical: 15),
                      textStyle: TextStyle(fontSize: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'SIGN-UP',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already on Sapdos? ',
                        style: TextStyle(fontSize: 14, color: Color.fromARGB(174, 2, 5, 73)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>Login_Page(title: '',)
                      ));
                        },
                        child: Text(
                          'Sign-in',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(174, 2, 5, 73)),
                        ),
                      ),
                    ],
                  )
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
