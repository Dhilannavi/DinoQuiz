import 'package:flutter/material.dart';
import 'biodata_page.dart';
import 'quiz_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.45, // Ubah menjadi 45% dari tinggi layar
              decoration: BoxDecoration(
                color: Colors.green[300], // Ubah warna hijau
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20), // Border radius 20 hanya di bagian bawah
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 10), // Ubah nilai height menjadi lebih kecil
                  Image.asset(
                    'assets/images/logo.png', //  path gambar logo
                    height: 160, // Sesuaikan tinggi logo
                    width: 160, // Sesuaikan lebar logo
                  ),
                  SizedBox(height: 5), // Ubah nilai height menjadi lebih kecil
                  Text(
                    'DinoQuiz',
                    style: TextStyle(
                      color: Colors.green[800], // Warna teks green[800]
                      fontSize: 32, // Ukuran teks
                      fontWeight: FontWeight.bold, // Ketebalan teks
                    ),
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BiodataPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.green[800], backgroundColor: Colors.green[10], // Warna teks
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Mengatur border radius tombol
                      ),
                      minimumSize: Size(300, 120), // Mengatur ukuran tombol
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold, // Mengatur gaya teks menjadi bold
                        fontSize: 24, // Ukuran teks
                      ),
                    ),
                    child: Text('Biodata Kelompok'),
                  ),
                  SizedBox(height: 20), // Spasi antara tombol
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QuizPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.green[800], backgroundColor: Colors.green[10], // Warna teks
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Mengatur border radius tombol
                      ),
                      minimumSize: Size(300, 120), // Mengatur ukuran tombol
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold, // Mengatur gaya teks menjadi bold
                        fontSize: 24, // Ukuran teks
                      ),
                    ),
                    child: Text('Quiz'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
