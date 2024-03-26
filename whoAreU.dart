import 'dart:io';

void main() {
  print('Masukkan Nama:');
  String nama = stdin.readLineSync()!;

  print('Masukkan Umur:');
  int umur = int.parse(stdin.readLineSync()!);

  print('Masukkan Kampus:');
  String kampus = stdin.readLineSync()!;

  print('Masukkan Jurusan:');
  String jurusan = stdin.readLineSync()!;

  print('================');
  print('Biodata CR Youth');
  print('================');
  print('Nama : $nama');
  print('Umur : $umur');
  print('Kampus: $kampus');
  print('Jurusan : $jurusan');
  print('==============');
}
