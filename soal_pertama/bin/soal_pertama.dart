import 'dart:io';

void main() {
  print('====================================');
  print('--Aplikasi Menampilkan Hello World--');
  print('------------------------------------');
  print("o> Jika input bilangan habis di bagi 3 menampilkan kata 'Hello'");
  print("o> Jika input bilangan habis di bagi 5 menampilkan kata 'World'");
  print(
      "o> Jika input bilangan habis di bagi 5 dan 3 menampilkan kata 'Hello World'");
  print('====================================');
  print('Masukkan bilangannya : (n)');

  try {
    int? n = int.parse(stdin.readLineSync()!);
    if (n % 5 == 0 && n % 3 == 0) {
      print('Hello World.');
    } else if (n % 5 == 0) {
      print('World.');
    } else if (n % 3 == 0) {
      print('Hello.');
    } else {
      print('Tidak habis dibagi 5 dan atau 3.');
    }
  } catch (e) {
    print('Hanya bisa angka saja.');
  }
}
