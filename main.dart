
class Ogrenci {
  String ad;
  int yas;


  Ogrenci(this.ad, this.yas);


  String get getAd => ad;
  set setAd(String yeniAd) => ad = yeniAd;

  int get getYas => yas;
  set setYas(int yeniYas) => yas = yeniYas;


  @override
  String toString() {
    return 'Ogrenci{ad: $ad, yas: $yas}';
  }
}


class SabitOgrenci {
  final String ad;
  final int yas;


  const SabitOgrenci(this.ad, this.yas);
}

// Generics
class ListeIslemleri<T> {
  List<T> liste = [];

  // Liste elemanı ekleyen metod
  void ekle(T eleman) {
    liste.add(eleman);
  }

  // Liste elemanlarını gösteren metod
  void listeyiGoster() {
    print(liste);
  }
}

void main() {

  Ogrenci ogrenci1 = Ogrenci('Ali', 20);
  print(ogrenci1);


  ogrenci1.setAd = 'Veli';
  ogrenci1.setYas = 22;
  print('Güncellenmiş öğrenci bilgileri: $ogrenci1');


  const SabitOgrenci sabitOgrenci = SabitOgrenci('Ayşe', 25);
  print('Sabit öğrenci bilgileri: $sabitOgrenci');

  // Generics
  ListeIslemleri<int> intListesi = ListeIslemleri<int>();
  intListesi.ekle(5);
  intListesi.ekle(10);
  intListesi.listeyiGoster();

  ListeIslemleri<String> stringListesi = ListeIslemleri<String>();
  stringListesi.ekle('Merhaba');
  stringListesi.ekle('Dart');
  stringListesi.listeyiGoster();
}


