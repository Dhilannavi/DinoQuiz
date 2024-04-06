import 'package:flutter/material.dart';
import 'question.dart';

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int _currentIndex = 0;
  int _score = 0;
  List<Question> _questions = Question.getQuestions();
  String _selectedOption = '';

  void _answerQuestion(String selectedOption) {
    setState(() {
      _selectedOption = selectedOption;
      if (_questions[_currentIndex].correctAnswer == selectedOption) {
        _score++;
      }
    });
  }

  void _previousQuestion() {
    setState(() {
      if (_currentIndex > 0) {
        _currentIndex--;
        _selectedOption = ''; // Reset nilai _selectedOption
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Pertanyaan ${_currentIndex + 1} dari ${_questions.length}',
                  style: TextStyle(fontSize: 18, color: Colors.green[800]), // Ubah warna teks
                ),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          _questions[_currentIndex].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      _questions[_currentIndex].question,
                      style: TextStyle(fontSize: 20, color: Colors.green[800]), // Ubah warna teks
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: _questions[_currentIndex].options.map((option) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          _answerQuestion(option);
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              if (_selectedOption == option) {
                                return Colors.green[300]!;
                              }
                              return _selectedOption == option ? Colors.green[300]! : Colors.green[600]!;
                            },
                          ),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          elevation: MaterialStateProperty.all<double>(5),
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20), // Mengatur padding
                          ),
                          textStyle: MaterialStateProperty.all<TextStyle>(
                            TextStyle(fontSize: 16),
                          ),
                          minimumSize: MaterialStateProperty.all<Size>(Size(double.infinity, 60)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        child: Text(option),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: _previousQuestion,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.green[600]!),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        elevation: MaterialStateProperty.all<double>(5),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          TextStyle(fontSize: 18),
                        ),
                        minimumSize: MaterialStateProperty.all<Size>(Size(140, 50)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      child: Text('Sebelumnya'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (_selectedOption.isNotEmpty) {
                            if (_currentIndex < _questions.length - 1) {
                              _currentIndex++;
                              _selectedOption = '';
                            } else {
                              showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  title: Text('Selesai'),
                                  content: Text('Apakah Anda yakin ingin menyelesaikan quiz?'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        showDialog(
                                          context: context,
                                          builder: (_) => AlertDialog(
                                            title: Text('Hasil Quiz'),
                                            content: Text('Skor Anda: $_score'),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  Navigator.pop(context);
                                                },
                                                child: Text('Tutup'),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                      child: Text('Ya'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('Tidak'),
                                    ),
                                  ],
                                ),
                              );
                            }
                          }
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.green[600]!),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        elevation: MaterialStateProperty.all<double>(5),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          TextStyle(fontSize: 18),
                        ),
                        minimumSize: MaterialStateProperty.all<Size>(Size(140, 50)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      child: Text(_currentIndex == _questions.length - 1 ? 'Selesai' : 'Selanjutnya'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: QuizApp(),
  ));
}
