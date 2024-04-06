import 'package:flutter/material.dart';
import 'quiz.dart'; // Import QuizApp

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuizApp()), // Ganti Quiz() dengan QuizApp()
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green.shade50), // Warna hijau yang menarik
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.green.shade800), // Teks putih untuk kontras yang baik
                  elevation: MaterialStateProperty.all<double>(5), // Efek bayangan tombol saat ditekan
                  minimumSize: MaterialStateProperty.all<Size>(Size(300, 120)), // Mengatur ukuran tombol
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    TextStyle(
                      fontSize: 24, // Ukuran teks
                      fontWeight: FontWeight.bold, // Ketebalan teks
                    ),
                  ),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Mengatur border radius tombol
                    ),
                  ),
                ),
                child: Text('Mulai Quiz'),
              ),
              SizedBox(height: 20), // Spasi antara tombol
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green.shade50), // Warna hijau yang menarik
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.green.shade800), // Teks putih untuk kontras yang baik
                  elevation: MaterialStateProperty.all<double>(5), // Efek bayangan tombol saat ditekan
                  minimumSize: MaterialStateProperty.all<Size>(Size(300, 120)), // Mengatur ukuran tombol
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    TextStyle(
                      fontSize: 24, // Ukuran teks
                      fontWeight: FontWeight.bold, // Ketebalan teks
                    ),
                  ),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Mengatur border radius tombol
                    ),
                  ),
                ),
                child: Text('Kembali'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
