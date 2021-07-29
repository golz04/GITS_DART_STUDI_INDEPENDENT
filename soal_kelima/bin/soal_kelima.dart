import 'dart:io';

void main() {
  print('====================================');
  print('----Aplikasi Cek Pallindrome----');
  print('====================================');
  print('Masukkan kata : ');
  try {
    var pallindrome;
    String? kata = stdin.readLineSync();
    if (kata != null && kata != '') {
      kata = kata.toLowerCase();
      var reverse = kata.split('').reversed.join();
      if (kata == reverse) {
        pallindrome = true;
      } else {
        pallindrome = false;
      }
      print(pallindrome);
    } else {
      print('Kata tidak boleh kosong.');
    }
  } catch (e) {
    print('Error : ${e}');
  }
}
