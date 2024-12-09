import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  final DatabaseReference _dbRef = FirebaseDatabase.instance.ref('patients');

  int patient1Count = 0;

  int patient2Count = 0;


  @override

  void initState() {

    super.initState();

    _dbRef.onValue.listen((event) {

      final data = event.snapshot.value as Map<dynamic, dynamic>;

      setState(() {

        patient1Count = data['satu'] ?? 0;

        patient2Count = data['dua'] ?? 0;

      });

    });

  }


  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('Nurse Help Requests')),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Text('Patient 1 = meminta bantuan $patient1Count kali'),
            // space between the text and the button
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Replace 'patient1' with the actual patient ID you want to send a request for

                resetPasien(1);
              },
              child: Text('Stop Help Request for Patient 1'),
            ),
            const SizedBox(height: 20),
            Text('Patient 2 = meminta bantuan $patient2Count kali'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Replace 'patient2' with the actual patient ID you want to send a request for

                resetPasien(2);
              },
              child: Text('Stop Help Request for Patient 2'),
            ),
          ],

        ),

      ),

    );

  }

  void resetPasien(int i) {
    // reset into 0
    var pasien = i == 1 ? 'satu_state' : 'dua_state';
    _dbRef.update({pasien: false}).then((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Pasien $i berhasil direset'),
        ),
      );
    }).catchError((error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Gagal mereset bantuan Pasien $i: $error'),
        ),
      );
    });
  }
}