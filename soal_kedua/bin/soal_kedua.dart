import 'dart:io';

void main(List<String> arguments) {
  print('====================================');
  print('----Aplikasi Cek Validasi Email----');
  print('====================================');
  print('Masukkan email : ');

  try {
    String? email = stdin.readLineSync();
    if (email != null && email != '') {
      var splitEt = email.split('@');
      if (splitEt.toList().length == 2) {
        var emailBeforeEt = splitEt[0].trim();
        var emailAfterEt = splitEt.sublist(1).join('@').trim();

        if (emailBeforeEt.length <= 20) {
          var splitDot = emailAfterEt.split('.');
          var emailBeforeDot = splitDot[0].trim();
          if (emailBeforeDot.length != '' && emailBeforeDot.length != 0) {
            var emailAfterDot = splitDot.sublist(1).join('.').trim();

            if (emailAfterDot == 'co.id' || emailAfterDot == 'id') {
              print('Emailmu : ${email}');
            } else {
              print('Domain yang diperbolehkan .id atau .co.id');
            }
          } else {
            print('Tidak ada nama domain setelah @');
          }
        } else {
          print('Panjang maksimum sebelum tanda @ sebanyak 20 digit');
        }
      } else {
        print('Tidak ada tanda @');
      }

      /* print('Email : ${emailAfterEt}'); */
      /* print('Email : ${emailBeforeEt}'); */
      /* print('Email : ${email}'); */
    } else {
      print("Email tidak boleh kosong");
    }
  } catch (e) {
    print('Error : ${e}');
  }
}
