
import 'package:flutter/material.dart';
import 'package:patient_json_app/patientscreen/Screen1.dart';
import 'package:patient_json_app/screen3/register.dart';






class Login_Page extends StatefulWidget {
  Login_Page({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Login_Page> createState() => _MyLoginPage();
}

class _MyLoginPage extends State<Login_Page> {
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
                    'Welcome Back',
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
                  const SizedBox(height: 10),
               
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
       
                   
                  
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                          ),
                          const Text('Remember me'),
                        ],
                      ),
                      TextButton(
                        style: TextButton.styleFrom(foregroundColor: Colors.black),
                        onPressed: () {},
                        child: const Text('Forgot Password?'),
                        
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                           builder: (context) =>MyHomePage(title: '')
                           ));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 80,
                        vertical: 15,
                      ),
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                     backgroundColor: Color.fromARGB(255, 2, 41, 147),
                     
                      minimumSize: Size(300, 40),
                     
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      
                       foregroundColor: Colors.white,
                    ),
                    child: const Text('LOGIN'),
                  ),
                  SizedBox(height: 16),
              TextButton(
                 style: TextButton.styleFrom(foregroundColor: Color.fromARGB(255, 1, 1, 16)),
                onPressed: () {
                   Navigator.of(context).push(MaterialPageRoute(
                           builder: (context) =>Register(title: '')
                      ));
                },
                child: Text('Not on Sapdos? Sign-up'),
                
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