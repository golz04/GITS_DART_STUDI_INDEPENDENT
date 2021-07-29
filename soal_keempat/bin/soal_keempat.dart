import 'dart:io';

void main() {
  print('====================================');
  print('----Aplikasi Reverse Kata----');
  print('====================================');
  print('Masukkan kata : ');
  try {
    String? kata = stdin.readLineSync();

    if (kata != null && kata != '') {
      var reverse = kata.split('').reversed.join();
      print('Kata sebelum dibalik : ${kata}');
      print('Kata sesudah dibalik : ${reverse}');
    } else {
      print('Kata tidak boleh kosong.');
    }
  } catch (e) {
    print('Error : ${e}');
  }
}
