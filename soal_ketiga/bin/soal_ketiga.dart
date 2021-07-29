import 'dart:io';

void main() {
  print('====================================');
  print('----Aplikasi Konversi Waktu Email----');
  print('====================================');
  print('Masukkan jam [12:00 AM] / [12:00 PM] : ');

  try {
    String? waktu = stdin.readLineSync();
    if (waktu != null && waktu != '') {
      waktu = waktu.toLowerCase();
      var splitSpace = waktu.split(' ');
      var waktuBeforeSpace = splitSpace[0].trim();
      var waktuAfterSpace = splitSpace.sublist(1).join('').trim();
      if (splitSpace.toList().length == 2) {
        var splitDoubleDot = waktuBeforeSpace.split(':');
        var numberBeforeDot = splitDoubleDot[0].trim();
        var numberAfterDot = splitDoubleDot.sublist(1).join('').trim();

        if (waktuAfterSpace == 'pm') {
          if (numberBeforeDot == '12') {
            print('${numberBeforeDot}:${numberAfterDot}');
          } else {
            print('${int.parse(numberBeforeDot) + 12}:${numberAfterDot}');
          }
        } else if (waktuAfterSpace == 'am') {
          if (numberBeforeDot == '12') {
            print('00:${numberAfterDot}');
          } else {
            print('${numberBeforeDot}:${numberAfterDot}');
          }
        } else {
          print("Format waktu tidak diketahui, perhatikan spasi dan karakter");
        }
      } else {
        print("Format waktu tidak diketahui, perhatikan spasi dan karakter");
      }
    } else {
      print("Waktu tidak boleh kosong");
    }
  } catch (e) {
    print('Error : ${e}');
  }
}
