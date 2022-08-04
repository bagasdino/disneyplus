class RecentlyWatch{
  String title;
  String tumbnail;
  String genre;
  String year;
  String kategori;
  String description;
  String duration;
  List<String> imageTrailer;

  RecentlyWatch({
    required this.title,
    required this.tumbnail,
    required this.genre,
    required this.year,
    required this.kategori,
    required this.description,
    required this.duration,
    required this.imageTrailer,
  });
}

var recentlyWatchList = [
  RecentlyWatch(
    title: "Frozen",
    tumbnail: "https://cdn-2.tstatic.net/wartakota/foto/bank/images/film-frozen-garapan-disney-terinspirasi-di-dunia-nyata.jpg",
    genre: "Animation",
    year: "2013",
    kategori: "recently",
    description: "When the newly crowned Queen Elsa accidentally uses her power to turn things into ice to curse her home in infinite winter, her sister Anna teams up with a mountain man, his playful reindeer, and a snowman to change the weather condition.",
    duration: "1h 42m",
    imageTrailer: [
      'https://asset.kompas.com/crops/d0nm8fXBiBG0BnJOFD4ZZqLSYwY=/0x0:780x390/750x500/data/photo/2014/10/06/1440071frozen2780x390.jpg',
      'https://blog.cakap.com/wp-content/uploads/2019/11/3223.jpg',
      'https://s2.glbimg.com/cpEpJBJNT57ogaArqWsLPUsImFA=/512x320/smart/e.glbimg.com/og/ed/f/original/2019/06/10/frozen1.png'
    ],
  ),
  RecentlyWatch(
    title: "Luca",
    tumbnail: "https://www.ruparupa.com/blog/wp-content/uploads/2022/03/Luca-Film-animasi-disney.jpeg",
    genre: "Animation",
    year: "2020",
    kategori: "recently",
    description: "When the newly crowned Queen Elsa accidentally uses her power to turn things into ice to curse her home in infinite winter, her sister Anna teams up with a mountain man, his playful reindeer, and a snowman to change the weather condition.",
    duration: "1h 42m",
    imageTrailer: [
      'https://static.republika.co.id/uploads/images/inpicture_slide/020616000-1624088728-60cab660a9477-film-animasi-dis.jpg',
      'https://blog.cakap.com/wp-content/uploads/2019/11/3223.jpg',
      'https://thumb.viva.co.id/media/frontend/thumbs3/2021/06/17/60cab84b1cad7-film-animasi-disney-luca_1265_711.jpg'
    ],
  ),
  RecentlyWatch(
    title: "Raya and The Last Dragon",
    tumbnail: "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2021/03/03/881720178.jpeg",
    genre: "Animation",
    year: "2020",
    kategori: "recently",
    description: "When the newly crowned Queen Elsa accidentally uses her power to turn things into ice to curse her home in infinite winter, her sister Anna teams up with a mountain man, his playful reindeer, and a snowman to change the weather condition.",
    duration: "1h 42m",
    imageTrailer: [
      'https://cdns.klimg.com/dream.co.id/resized/640x320/news/2021/03/04/161718/raya-and-the-last-dragon-banyak-libatkan-seniman-indonesia-2103040.jpg',
      'https://img.beritasatu.com/cache/beritasatu/620x350-2/1615192968.jpg',
      'https://asset.kompas.com/crops/JeYEAQEfT-x-CAlyGELDVPkpIqk=/478x80:1442x724/750x500/data/photo/2021/01/27/6010f3c5e69c3.jpg'
    ],
  ),

];