// ignore_for_file: file_names

class Films {
  
  Future<List<Filmler>> filmleriGetir() async{
    var filmlerListesi= <Filmler>[];

    var f1 = Filmler(filmId: 1,  filmResimAdi: "john-wick.png", );
    var f2 = Filmler(filmId: 2,  filmResimAdi: "fight-club.jpg" );
    var f3 = Filmler(filmId: 3,  filmResimAdi: "godfather.jpg" );
    var f4 = Filmler(filmId: 4,  filmResimAdi: "revenant.jpg", );
    var f5 = Filmler(filmId: 5,  filmResimAdi: "lor.jpg", );
    var f6 = Filmler(filmId: 6,  filmResimAdi: "imlegend.jpg" );
    var f7 = Filmler(filmId: 7,  filmResimAdi: "deadpool.jpg");
    var f8 = Filmler(filmId: 8,  filmResimAdi: "thewolfofwallstreet.jpg");
    var f9 = Filmler(filmId: 9,  filmResimAdi: "grindelwald.jpg" );
    var f10 = Filmler(filmId: 10,  filmResimAdi:"300.jpg", );
    var f11= Filmler(filmId: 11,  filmResimAdi: "batman.jpg" );
    var f12 = Filmler(filmId: 12,  filmResimAdi:"fast.jpg" );

    filmlerListesi.add(f1);
    filmlerListesi.add(f2);
    filmlerListesi.add(f3);
    filmlerListesi.add(f4);
    filmlerListesi.add(f5);
    filmlerListesi.add(f6);
    filmlerListesi.add(f7);
    filmlerListesi.add(f8);
    filmlerListesi.add(f9);
    filmlerListesi.add(f10);
    filmlerListesi.add(f11);
    filmlerListesi.add(f12);

    return filmlerListesi;
  }

}
class Filmler {
  int filmId;
  String filmResimAdi;

Filmler({
    required this.filmId,
    required this.filmResimAdi,
  });

}