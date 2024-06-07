
import 'package:flutter/material.dart';
import 'package:patient_json_app/patientscreen/Screen5.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SAPDOS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Screen4(title: 'SAPDOS Booking Appointment'),
    );
  }
}

class Screen4 extends StatefulWidget {
  Screen4({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Screen4> createState() => _MyScreen4();
}

class _MyScreen4 extends State<Screen4> {
  String? selectedPayment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/Doctor.jpeg'),
                  SizedBox(width: 20), 
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Booking Appointment',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 10),
                        DropdownButton<String>(
                          hint: Text('Select Payment Method'),
                          value: selectedPayment,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedPayment = newValue;
                            });
                            if (newValue == 'Card') {
                             
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Screen5(title: '',)),
                              );
                            }
                          },
                          items: <String>['Net Banking', 'Card', 'UPI']
                            .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
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
    );
  }
}