import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  Screen5({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Screen5> createState() => _MyScreen5();
}

class _MyScreen5 extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset('assets/Doctor.jpeg', width: 500, height: 700),
              SizedBox(width: 50),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    SizedBox(height: 50),
                    Text(
                      'SAPDOS',
                      style: TextStyle(
                         fontSize: 60,
                       color:Color.fromARGB(223, 6, 25, 71),
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                     SizedBox(height: 50),
                    Text(
                       'Booking Appointment',
                         style: TextStyle(
                          fontSize: 24,
                    ),
                ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 1), 
                           borderRadius: BorderRadius.all(Radius.circular(4)), 
                          ),
                        
                      padding: EdgeInsets.all(8), 
                     child:  Text(
                          'Payment Method',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ),
                        SizedBox(width: 10),
                        DropdownButton<String>(
                          value: 'Card',
                          items: <String>['Card', 'Other'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Select the mode of payment you prefer',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Enter your details below',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Card Number',
                        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(width: 1, color: Colors.grey),
        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Card Holder',
                              border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(width: 10, color: Colors.grey),
                        ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'MM/YY',
                              border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                          ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'CVV',
                              border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                       ),


                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 35),
            //        ElevatedButton(
            //          style: ButtonStyle(
            //          backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 1, 22, 124)), 
            //          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))), 
            //          minimumSize: MaterialStateProperty.all(Size(300, 50)), 
            //  ),
            //      onPressed: () {
            //         Navigator.of(context).push(MaterialPageRoute(
            //                builder: (context) =>Screen6()
            //           ));
            //      },
            //    child: Text(
            //      'Pay now',
            //       style: TextStyle(
            //         color: Colors.white, 
            //      ),
            //    ),
            //        )
//             ElevatedButton(
//   style: ButtonStyle(
//     backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 1, 22, 124)),
//     shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
//     minimumSize: MaterialStateProperty.all(Size(300, 50)),
//   ),
//   onPressed: () {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text(
//             'Booking Confirmation',
//             style: TextStyle(
//               color: Colors.blue,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           content: Text(
//             'Your booking has been confirmed.',
//             style: TextStyle(
//               color: Colors.blue,
//             ),
//           ),
//           actions: [
//             TextButton(
//               child: Text('OK'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   },
//   child: Text(
//     'Pay now',
//     style: TextStyle(
//       color: Colors.white,
//     ),
//   ),
// )
ElevatedButton(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 1, 22, 124)),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
    minimumSize: MaterialStateProperty.all(Size(300, 50)),
  ),
  onPressed: () {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor:Color.fromARGB(255, 1, 22, 124) ,
          title: Text(
            'Booking Confirmation',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(
            'Your booking has been confirmed.',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: [
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              child: Text('OK', style: TextStyle(color: Colors.white),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  },
  child: Text(
    'Pay now',
    style: TextStyle(
      color: Colors.white,
    ),
  ),
)
                  ],
                ),
              ),
            ],
            
          ),
          
        ),
        

      ),
      
    );

}
  }
