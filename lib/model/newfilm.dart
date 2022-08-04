class NewFilm{
  String title;
  String tumbnail;
  String genre;
  String year;
  String description;
  String duration;
  List<String> imageTrailer;

  NewFilm({
    required this.title,
    required this.tumbnail,
    required this.genre,
    required this.year,
    required this.description,
    required this.duration,
    required this.imageTrailer,
  });
}

var newFilmList = [
  NewFilm(
    title: "Aladin",
    tumbnail: "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1626080531/xr7owkyu46wticyxxrp5.jpg",
    genre: "Animation",
    year: "2013",
    description: "When the newly crowned Queen Elsa accidentally uses her power to turn things into ice to curse her home in infinite winter, her sister Anna teams up with a mountain man, his playful reindeer, and a snowman to change the weather condition.",
    duration: "1h 42m",
    imageTrailer: [
      'https://asset.kompas.com/crops/d0nm8fXBiBG0BnJOFD4ZZqLSYwY=/0x0:780x390/750x500/data/photo/2014/10/06/1440071frozen2780x390.jpg',
      'https://blog.cakap.com/wp-content/uploads/2019/11/3223.jpg',
      'https://s2.glbimg.com/cpEpJBJNT57ogaArqWsLPUsImFA=/512x320/smart/e.glbimg.com/og/ed/f/original/2019/06/10/frozen1.png'
    ],
  ),
  NewFilm(
    title: "Star Wars The Last Jedi",
    tumbnail: "https://mir-s3-cdn-cf.behance.net/project_modules/1400/e4058f59786659.5a2f714d3b929.jpg",
    genre: "Animation",
    year: "2020",
    description: "When the newly crowned Queen Elsa accidentally uses her power to turn things into ice to curse her home in infinite winter, her sister Anna teams up with a mountain man, his playful reindeer, and a snowman to change the weather condition.",
    duration: "1h 42m",
    imageTrailer: [
      'https://static.republika.co.id/uploads/images/inpicture_slide/020616000-1624088728-60cab660a9477-film-animasi-dis.jpg',
      'https://blog.cakap.com/wp-content/uploads/2019/11/3223.jpg',
      'https://thumb.viva.co.id/media/frontend/thumbs3/2021/06/17/60cab84b1cad7-film-animasi-disney-luca_1265_711.jpg'
    ],
  ),
  NewFilm(
    title: "Mulan",
    tumbnail: "https://1.bp.blogspot.com/-bwndIAmAO9Q/X1mxcV82T0I/AAAAAAAAAG8/txQtTUfy2mQfnnTF3XT8Ki1R8ABMsSgFwCLcBGAsYHQ/w1200-h630-p-k-no-nu/review%2BMulan%2B2020.jpg",
    genre: "Animation",
    year: "2020",
    description: "When the newly crowned Queen Elsa accidentally uses her power to turn things into ice to curse her home in infinite winter, her sister Anna teams up with a mountain man, his playful reindeer, and a snowman to change the weather condition.",
    duration: "1h 42m",
    imageTrailer: [
      'https://cdns.klimg.com/dream.co.id/resized/640x320/news/2021/03/04/161718/raya-and-the-last-dragon-banyak-libatkan-seniman-indonesia-2103040.jpg',
      'https://img.beritasatu.com/cache/beritasatu/620x350-2/1615192968.jpg',
      'https://asset.kompas.com/crops/JeYEAQEfT-x-CAlyGELDVPkpIqk=/478x80:1442x724/750x500/data/photo/2021/01/27/6010f3c5e69c3.jpg'
    ],
  ),
];