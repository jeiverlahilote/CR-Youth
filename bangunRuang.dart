import 'dart:math';

abstract class BangunDatar {
  double luas();
  double keliling();
}

class Persegi extends BangunDatar {
  double sisi;

  Persegi(this.sisi);

  @override
  double luas() {
    return sisi * sisi;
  }

  @override
  double keliling() {
    return 4 * sisi;
  }
}

class Segitiga extends BangunDatar {
  double alas, tinggi;

  Segitiga(this.alas, this.tinggi);

  @override
  double luas() {
    return 0.5 * (alas * tinggi);
  }

  @override
  double keliling() {
    return alas + tinggi + sqrt(alas * alas + tinggi * tinggi);
  }
}

class Lingkaran extends BangunDatar {
  double radius;

  Lingkaran(this.radius);

  @override
  double luas() {
    return pi * radius * radius;
  }

  @override
  double keliling() {
    return 2 * pi * radius;
  }
}

void main() {
  Persegi persegi = Persegi(4);
  Segitiga segitiga = Segitiga(4, 4);
  Lingkaran lingkaran = Lingkaran(4);
  print('Luas Persegi adalah ${persegi.luas()} cm ');
  print('Keliling Persegi adalah ${persegi.keliling()} cm');
  print('===================================');
  print('Luas segitiga adalah ${segitiga.luas()} cm ');
  print('Keliling segitiga adalah ${segitiga.keliling()} cm');
  print('===================================');
  print('Luas lingkaran adalah ${lingkaran.luas()} cm ');
  print('Keliling lingkaran adalah ${lingkaran.keliling()} cm');
  print('===================================');
  print('Jeiver Junior Lahilote');
}
