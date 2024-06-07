
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import 'package:patient_json_app/patientscreen/Screen2.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SAPDOS',
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 30,
            fontStyle: FontStyle.italic,
            // color: const Color.fromARGB(255, 13, 25, 155),
          ),
        ),
      ),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<dynamic> _doctors = [];

  @override
  void initState() {
    super.initState();
    loadDoctors();
  }

  Future<void> loadDoctors() async {
    final String response = await rootBundle.loadString('assets/doctors.json');
    final List<dynamic> data = await json.decode(response);
    setState(() {
      _doctors = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        // backgroundColor: const Color.fromARGB(255, 13, 25, 155),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello!',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: const NetworkImage(
                        'https://media.istockphoto.com/id/1216426542/photo/portrait-of-happy-man-at-white-background-stock-photo.jpg?s=1024x1024&w=is&k=20&c=B5eyezdL3ZQT6taFl-begxfSf2VMUomVb_onTbJBpGI='),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Satish',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 30,
              decoration: BoxDecoration(
               color:  const Color.fromARGB(255, 13, 25, 155),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  'Doctor\'s List',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 400,
              width: 1500,
              child: _doctors.isNotEmpty
                  ? GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      childAspectRatio: 4,
                      children: _doctors.map((doctor) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Screen2(title: ''),
                            ));
                          },
                          child: DoctorCard(
                            doctorImage: doctor['doctorImage'],
                            doctorName: doctor['doctorName'],
                            doctorSpecialization:
                            doctor['doctorSpecialization'],
                            description: 
                            doctor['description'],
                            rating: doctor['rating'],
                          ),
                        );
                      }).toList(),
                    )
                  : Center(child: CircularProgressIndicator()),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
              
                
              color: const Color.fromARGB(255, 13, 25, 155),
              ),
              child: Center(
                child: Text(
                  'SAPDOS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.grid_view),
              title: Text('Categories'),
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Appointment'),
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('Chat'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  final String doctorImage;
  final String doctorName;
  final String doctorSpecialization;
  final String description;
  final int rating;
  
 

  DoctorCard( {
    required this.doctorImage,
    required this.doctorName,
    required this.doctorSpecialization,
    required this.description,

    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(doctorImage),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctorName,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      doctorSpecialization,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                     Text(
                      description,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                for (int i = 0; i < rating; i++)
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 16,
                  ),
                for (int i = rating; i < 5; i++)
                  Icon(
                    Icons.star_border,
                    color: Colors.amber,
                    size: 16,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}















