
import 'package:flutter/material.dart';
import 'package:patient_json_app/patientscreen/Screen1.dart';
import 'package:patient_json_app/patientscreen/Screen4.dart';




class Screen2 extends StatefulWidget {
  const Screen2({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Screen2> createState() => _MyScreen2();
}

class _MyScreen2 extends State<Screen2> {
   String _groupValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
             Navigator.of(context).push(MaterialPageRoute(
                           builder: (context) =>Screen1()
                      ));
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Doctor Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            Container(
             
              child: Row(
                children: [
                  Image(
        height: 100, // adjust the height
        width: 150, // adjust the width
        fit: BoxFit.cover,
        image: NetworkImage(
          'https://media.istockphoto.com/id/1372002650/photo/cropped-portrait-of-an-attractive-young-female-doctor-standing-with-her-arms-folded-in-the.jpg?s=1024x1024&w=is&k=20&c=HwRi4NnrK9aKEC27BkXnJJfuggGABNmqnnmXL7D9aBs=',
        ),
      ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(

                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       
                        const Text(
                          'Dr. Pooja Patil',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                          Row(
                          children: [
                            const Icon(Icons.density_small_outlined),
                            const SizedBox(width: 4),
                            const Text('Dentist'),
                          ],
                        ), 


                        // const Text(
                        //   'Dentist (D.M.)',
                        //   style: TextStyle(
                        //     fontSize: 14,
                        //     color: Colors.grey,
                        //   ),
                        // ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Icon(Icons.school),
                            const SizedBox(width: 4),
                            const Text('BDS, DDS'),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              decoration: BoxDecoration(
                                color: Colors.blue.shade100,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Text(
                                '5 Years',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Icon(Icons.star_rate,
                                color: Colors.amber, size: 16),
                            const Icon(Icons.star_rate,
                                color: Colors.amber, size: 16),
                            const Icon(Icons.star_rate,
                                color: Colors.amber, size: 16),
                            const Icon(Icons.star_rate,
                                color: Colors.amber, size: 16),
                            const Icon(Icons.star_rate,
                                color: Colors.grey, size: 16),
                            const SizedBox(width: 4),
                            const Text('512'),
                             const SizedBox(height: 16),
         
            
            


                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Description',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                '  Dr. Pooja Patil is a dedicated and compassionate dentist with 5 years of experience in providing top-notch dental care to patients of all ages. With a strong focus on preventive care, Dr. Pooja Patil is committed to helping patients achieve healthy, beautiful smiles that last a lifetime..',
                style: const TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              // color: Colors.blue.shade100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Color.fromARGB(255, 3, 56, 110),
                    
                   width: 1700,
                   height:30,
                    child:  const Text(
                    'Available Slots',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      
                      fontWeight: FontWeight.bold, 

                  )
                 
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                      Row(
          children: [
            Radio(
              value: '10:00 - 10:15 AM',
              groupValue: _groupValue,
              onChanged: (value) {
                setState(() {
                  _groupValue = value!;
                });
              },
            ),
            const Text('10:00 - 10:15 AM'),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Radio(
              value: '10:15 - 10:30 AM',
              groupValue: _groupValue,
              onChanged: (value) {
                setState(() {
                  _groupValue = value!;
                });
              },
            ),
            const Text('10:15 - 10:30 AM'),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Radio(
              value: '10:30 - 10:45 AM',
              groupValue: _groupValue,
              onChanged: (value) {
                setState(() {
                  _groupValue = value!;
                });
              },
            ),
            const Text('10:30 - 10:45 AM'),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Radio(
              value: '10:45 - 11:00 AM',
              groupValue: _groupValue,
              onChanged: (value) {
                setState(() {
                  _groupValue = value!;
                });
              },
            ),
            const Text('10:45 - 11:00 AM'),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Radio(
              value: '11:00 - 11:15 AM',
              groupValue: _groupValue,
              onChanged: (value) {
                setState(() {
                  _groupValue = value!;
                });
              },
            ),
            const Text('11:00 - 11:15 AM'),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Radio(
              value: '11:15 - 11:30 AM',
              groupValue: _groupValue,
              onChanged: (value) {
                setState(() {
                  _groupValue = value!;
                });
              },
            ),
            const Text('11:15 - 11:30 AM'),
          ],
        ),
      ],
              ),
    ),
                       
              //     ElevatedButton(
              //       onPressed: () {
                      
              //       },
              //       child: const Text('Book Appointment'),
              //     ),
              //   ],
              // ),
            // ),
            // const SizedBox(height: 16),
            SizedBox(
  width: 400, // or a specific width, e.g. 200
  child:
            ElevatedButton(
  style: ElevatedButton.styleFrom(
    foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 3, 29, 50), 
    elevation: 2, 
    padding: EdgeInsets.all(6), 
    textStyle: TextStyle(fontSize: 18),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero), 
  ),
  onPressed: () {
    Navigator.of(context).push(MaterialPageRoute(
                           builder: (context) =>Screen4(title: "")
                      ));

  },
  child: Text('Book Appointment'),
),
        ),
     const SizedBox(height: 16),
          ],
        ),
      ),
    );
    
  
  }
}

