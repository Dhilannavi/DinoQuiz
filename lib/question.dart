import 'dart:math'; // Import untuk mengakses metode shuffle()

class Question {
  final String question;
  final String image;
  final List<String> options;
  final String correctAnswer;
  String selectedAnswer;

  Question({
    required this.question,
    required this.image,
    required this.options,
    required this.correctAnswer,
    this.selectedAnswer = '',
  });

  static List<Question> getQuestions() {
    var random = Random(); // Objek random untuk mengacak opsi jawaban

    return [
      Question(
        question: 'Apa nama dinosaurus yang memiliki sayap dan dapat terbang?',
        image: 'assets/images/pterodactylus.png',
        options: ['Pterodactylus', 'Tyrannosaurus', 'Stegosaurus', 'Triceratops', 'Velociraptor']..shuffle(random),
        correctAnswer: 'Pterodactylus',
      ),
      Question(
        question: 'Dinosaurus yang memiliki leher panjang dan mengonsumsi dedaunan tinggi disebut?',
        image: 'assets/images/brachiosaurus.png',
        options: ['Brachiosaurus', 'Tyrannosaurus', 'Stegosaurus', 'Triceratops', 'Velociraptor']..shuffle(random),
        correctAnswer: 'Brachiosaurus',

      ),
      Question(
        question: 'Dinosaurus dengan leher panjang dan sering terdapat pada film adalah?',
        image: 'assets/images/brontosaurus.png',
        options: ['Brontosaurus', 'Tyrannosaurus', 'Stegosaurus', 'Triceratops', 'Velociraptor']..shuffle(random),
        correctAnswer: 'Brontosaurus',
      ),
      Question(
        question: 'Dinosaurus yang memiliki dua tanduk besar di kepalanya adalah?',
        image: 'assets/images/ceratosaurus.png',
        options: ['Ceratosaurus', 'Tyrannosaurus', 'Stegosaurus', 'Triceratops', 'Velociraptor']..shuffle(random),
        correctAnswer: 'Ceratosaurus',
      ),
      Question(
        question: 'Apa nama dinosaurus yang memiliki taring raksasa dan cakar kuat?',
        image: 'assets/images/allosaurus.png',
        options: ['Allosaurus', 'Tyrannosaurus', 'Stegosaurus', 'Triceratops', 'Velociraptor']..shuffle(random),
        correctAnswer: 'Allosaurus',
      ),
      Question(
        question: 'Dinosaurus dengan lempeng tulang besar di belakangnya disebut?',
        image: 'assets/images/ankylosaurus.png',
        options: ['Ankylosaurus', 'Tyrannosaurus', 'Stegosaurus', 'Triceratops', 'Velociraptor']..shuffle(random),
        correctAnswer: 'Ankylosaurus',
      ),
      Question(
        question: 'Dinosaurus yang memiliki panjang tubuh lebih dari 40 meter dan memiliki nama seperti negara adalah?',
        image: 'assets/images/argentinosaurus.png',
        options: ['Argentinosaurus', 'Tyrannosaurus', 'Stegosaurus', 'Triceratops', 'Velociraptor']..shuffle(random),
        correctAnswer: 'Argentinosaurus',
      ),
      Question(
        question: 'Apa nama dinosaurus yang memiliki tanduk melengkung di kepalanya?',
        image: 'assets/images/carnotaurus.png',
        options: ['Carnotaurus', 'Tyrannosaurus', 'Stegosaurus', 'Triceratops', 'Velociraptor']..shuffle(random),
        correctAnswer: 'Carnotaurus',
      ),
      Question(
        question: 'Dinosaurus dengan tubuh berat dan cakar besar disebut?',
        image: 'assets/images/giganotosaurus.png',
        options: ['Giganotosaurus', 'Tyrannosaurus', 'Stegosaurus', 'Triceratops', 'Velociraptor']..shuffle(random),
        correctAnswer: 'Giganotosaurus',
      ),
      Question(
        question: 'Dinosaurus yang memiliki tanduk besar dan bahan bakar tertawa adalah?',
        image: 'assets/images/parasaurolophus.png',
        options: ['Parasaurolophus', 'Tyrannosaurus', 'Stegosaurus', 'Triceratops', 'Velociraptor']..shuffle(random),
        correctAnswer: 'Parasaurolophus',
      ),
    ];
  }
}
