class CastModel {
  String name;
  String character;
  String imageurlCast;

  CastModel({
    required this.name,
    required this.character,
    required this.imageurlCast,
  });
}

class MovieListModel {
  String title;
  String posterImagePotrait;
  String posterImageLandscape;
  num rating;
  String type;
  String genre;
  String year;
  String description;
  List<CastModel> castList;
  List<String> imageUrls;

  MovieListModel({
    required this.title,
    required this.posterImageLandscape,
    required this.posterImagePotrait,
    required this.rating,
    required this.type,
    required this.genre,
    required this.year,
    required this.description,
    required this.castList,
    required this.imageUrls,
  });
}

var recommendForYou = [
  MovieListModel(
    title: 'Demon Slayer: Infinity Castle',
    posterImagePotrait:
        'https://image.tmdb.org/t/p/w1280/fWVSwgjpT2D78VUh6X8UBd2rorW.jpg',
    posterImageLandscape:
        'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/1RgPyOhN4DRs225BGTlHJqCudII.jpg',
    rating: 8.5,
    type: 'Movie',
    genre: 'Animation, Action, Fantasy, Thiriller',
    year: '2025',
    description:
        'The Demon Slayer Corps are drawn into the Infinity Castle, where Tanjiro, Nezuko, and the Hashira face terrifying Upper Rank demons in a desperate fight as the final battle against Muzan Kibutsuji begins.',
    castList: [
      CastModel(
        name: 'Natsuki Hanae',
        character: 'Tanjiro Kamado (voice)',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/alTb0DlcPIbcwM08WSmxFai58sd.jpg',
      ),
      CastModel(
        name: 'Hiro Shimono',
        character: 'Zenitsu Agatsuma (voice)',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/yrSDcgFefHtWkFmLnTrcw2t0MV.jpg',
      ),
      CastModel(
        name: 'Takahiro Sakurai',
        character: 'Giyu Tomioka (voice)',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/8s8owcKmpRAuhzEGjSdRpztthUg.jpg',
      ),
    ],
    imageUrls: [
      'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/1RgPyOhN4DRs225BGTlHJqCudII.jpg',
      'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/A0yQAvkDmy6xaNOZF7WPwvjqGdt.jpg',
      'https://image.tmdb.org/t/p/original/j7MKdRIwfJejNlJQG1hzjFJmtlH.jpg',
      'https://image.tmdb.org/t/p/original/17dBoBgp58VUXUeC3ovuP7xOKWJ.jpg',
    ],
  ),

  MovieListModel(
    title: 'Love Untangled',
    posterImagePotrait:
        'https://media.themoviedb.org/t/p/w440_and_h660_face/e7jStO2xfBUAUK37LbINHd1qtgy.jpg',
    posterImageLandscape:
        'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/oBcvmHD7lbaX8RZ7NXvO05fIJef.jpg',
    rating: 7.1,
    type: 'Movie',
    genre: 'Romance, Drama, Comedy',
    year: '2025',
    description:
        'A lovestruck teen plans to win the school heartthrob by going from curly to straight hair — until a new transfer student changes everything.',
    castList: [
      CastModel(
        name: 'Shin Eun-soo',
        character: 'Park Se-ri',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/6JOcSSp46RUXTqb9lvAYxBSoqb8.jpg',
      ),
      CastModel(
        name: 'Gong Myoung',
        character: 'Han Yun-seok',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/gIWnp9BJwuRKj0BITIP8NYXOptX.jpg',
      ),
      CastModel(
        name: 'Kang Mi-na',
        character: 'Ko In-jeong',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/5uUTLbRI9zJFC3BN13iwtdbnnvg.jpg',
      ),
    ],
    imageUrls: [
      'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/oBcvmHD7lbaX8RZ7NXvO05fIJef.jpg',
      'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/YrBo9hEdamoZGmImjHFSGVnbqg.jpg',
      'https://image.tmdb.org/t/p/original/el9PPlcttxRNEya1K7p4T3yIFOk.jpg',
    ],
  ),

  MovieListModel(
    title: 'The Manipulated',
    rating: 8.3,
    posterImagePotrait:
        'https://image.tmdb.org/t/p/w1280/nOj4nsomFyAVJgpp68L0xq3cREc.jpg',
    posterImageLandscape:
        'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/1ZXakEXsrprKRPq3hsO7woUNLnu.jpg',
    type: 'TV Series',
    genre: 'Crime, Drama',
    year: '2025',
    description:
        'Mild-mannered Tae-jung is wrongfully imprisoned for a heinous crime. He soon discovers that a mysterious figure named Yo-han orchestrated his downfall. Fueled by vengeance, Tae-jung sets out to make Yo-han pay.',
    castList: [
      CastModel(
        name: 'Ji Chang-wook',
        character: 'Park Tae-jung',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/afgwHQJ3BP6ygM2ZUUZO60U84q0.jpg',
      ),

      CastModel(
        name: 'Doh Kyung-soo',
        character: 'Ahn Yo-han',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/qjeam8N9lJU6dXtNoJi4PLfEGmn.jpg',
      ),
      CastModel(
        name: 'Lee Kwang-soo',
        character: 'Baek Do-kyong',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/eqjZXCV4EutnoVxZwOveK6Nl5W9.jpg',
      ),
      CastModel(
        name: 'Jo Yoon-soo',
        character: 'Noh Eun-bi',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/7i3s0x8I3lzbhx7t1eK6rO8OScz.jpg',
      ),
    ],
    imageUrls: [
      'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/1ZXakEXsrprKRPq3hsO7woUNLnu.jpg',
      'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/hXEUj1GCq4FUe3DXSwInX62673F.jpg',
      'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/aP0rQd6HZrGwkFfeVke2Q4MRr3y.jpg',
      'https://image.tmdb.org/t/p/original/cqkmEHLE4LjPHSqKdLt4pJFJv0f.jpg',
    ],
  ),
];

var movieTrending = [
  MovieListModel(
    title: 'The Manipulated',
    rating: 8.3,
    posterImagePotrait:
        'https://image.tmdb.org/t/p/w1280/nOj4nsomFyAVJgpp68L0xq3cREc.jpg',
    posterImageLandscape:
        'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/1ZXakEXsrprKRPq3hsO7woUNLnu.jpg',
    type: 'TV Series',
    genre: 'Crime, Drama',
    year: '2025',
    description:
        'Mild-mannered Tae-jung is wrongfully imprisoned for a heinous crime. He soon discovers that a mysterious figure named Yo-han orchestrated his downfall. Fueled by vengeance, Tae-jung sets out to make Yo-han pay.',
    castList: [
      CastModel(
        name: 'Ji Chang-wook',
        character: 'Park Tae-jung',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/afgwHQJ3BP6ygM2ZUUZO60U84q0.jpg',
      ),

      CastModel(
        name: 'Doh Kyung-soo',
        character: 'Ahn Yo-han',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/qjeam8N9lJU6dXtNoJi4PLfEGmn.jpg',
      ),
      CastModel(
        name: 'Lee Kwang-soo',
        character: 'Baek Do-kyong',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/eqjZXCV4EutnoVxZwOveK6Nl5W9.jpg',
      ),
      CastModel(
        name: 'Jo Yoon-soo',
        character: 'Noh Eun-bi',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/7i3s0x8I3lzbhx7t1eK6rO8OScz.jpg',
      ),
    ],
    imageUrls: [
      'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/1ZXakEXsrprKRPq3hsO7woUNLnu.jpg',
      'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/hXEUj1GCq4FUe3DXSwInX62673F.jpg',
      'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/aP0rQd6HZrGwkFfeVke2Q4MRr3y.jpg',
      'https://image.tmdb.org/t/p/original/cqkmEHLE4LjPHSqKdLt4pJFJv0f.jpg',
    ],
  ),

  MovieListModel(
    title: 'Demon Slayer: Infinity Castle',
    posterImagePotrait:
        'https://image.tmdb.org/t/p/w1280/fWVSwgjpT2D78VUh6X8UBd2rorW.jpg',
    posterImageLandscape:
        'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/1RgPyOhN4DRs225BGTlHJqCudII.jpg',
    rating: 8.5,
    type: 'Movie',
    genre: 'Animation, Action, Fantasy, Thiriller',
    year: '2025',
    description:
        'The Demon Slayer Corps are drawn into the Infinity Castle, where Tanjiro, Nezuko, and the Hashira face terrifying Upper Rank demons in a desperate fight as the final battle against Muzan Kibutsuji begins.',
    castList: [
      CastModel(
        name: 'Natsuki Hanae',
        character: 'Tanjiro Kamado (voice)',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/alTb0DlcPIbcwM08WSmxFai58sd.jpg',
      ),
      CastModel(
        name: 'Hiro Shimono',
        character: 'Zenitsu Agatsuma (voice)',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/yrSDcgFefHtWkFmLnTrcw2t0MV.jpg',
      ),
      CastModel(
        name: 'Takahiro Sakurai',
        character: 'Giyu Tomioka (voice)',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/8s8owcKmpRAuhzEGjSdRpztthUg.jpg',
      ),
    ],
    imageUrls: [
      'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/1RgPyOhN4DRs225BGTlHJqCudII.jpg',
      'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/A0yQAvkDmy6xaNOZF7WPwvjqGdt.jpg',
      'https://image.tmdb.org/t/p/original/j7MKdRIwfJejNlJQG1hzjFJmtlH.jpg',
      'https://image.tmdb.org/t/p/original/17dBoBgp58VUXUeC3ovuP7xOKWJ.jpg',
    ],
  ),

  MovieListModel(
    title: 'Love Untangled',
    posterImagePotrait:
        'https://media.themoviedb.org/t/p/w440_and_h660_face/e7jStO2xfBUAUK37LbINHd1qtgy.jpg',
    posterImageLandscape:
        'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/oBcvmHD7lbaX8RZ7NXvO05fIJef.jpg',
    rating: 7.1,
    type: 'Movie',
    genre: 'Romance, Drama, Comedy',
    year: '2025',
    description:
        'A lovestruck teen plans to win the school heartthrob by going from curly to straight hair — until a new transfer student changes everything.',
    castList: [
      CastModel(
        name: 'Shin Eun-soo',
        character: 'Park Se-ri',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/6JOcSSp46RUXTqb9lvAYxBSoqb8.jpg',
      ),
      CastModel(
        name: 'Gong Myoung',
        character: 'Han Yun-seok',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/gIWnp9BJwuRKj0BITIP8NYXOptX.jpg',
      ),
      CastModel(
        name: 'Kang Mi-na',
        character: 'Ko In-jeong',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/5uUTLbRI9zJFC3BN13iwtdbnnvg.jpg',
      ),
    ],
    imageUrls: [
      'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/oBcvmHD7lbaX8RZ7NXvO05fIJef.jpg',
      'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/YrBo9hEdamoZGmImjHFSGVnbqg.jpg',
      'https://image.tmdb.org/t/p/original/el9PPlcttxRNEya1K7p4T3yIFOk.jpg',
    ],
  ),

  MovieListModel(
    title: 'Twinkling Watermelon',
    posterImagePotrait:
        'https://image.tmdb.org/t/p/w1280/bwTzW1wTgUxUOQruhT8DvinUYgR.jpg',
    posterImageLandscape:
        'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/efaMS00Fevc3fw2dbeP7rh22O6D.jpg',
    rating: 8.9,
    type: 'TV Series',
    genre: 'Sci-Fi & Fantasy, Drama',
    year: '2023',
    description:
        'A CODA (child of deaf adult) student born with a gift for music crash lands at an unfamiliar place after time traveling through a suspicious music shop. There, he forms the band Watermelon Sugar with other mysterious youths.',
    castList: [
      CastModel(
        name: 'Ryeon',
        character: 'Ha Eun-gyeol',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w276_and_h350_face/mvNrSDLu11RWAYiAlNnnWbZB0ff.jpg',
      ),
      CastModel(
        name: 'Choi Hyun-wook',
        character: 'Ha Yi-chan',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w276_and_h350_face/oHG5nnXAzkNBs0xEQlbwOaIFYPQ.jpg',
      ),
      CastModel(
        name: 'Seol In-a',
        character: 'Choi Se-gyeong / On Eun-yu',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w276_and_h350_face/nfHLot4nBfqWQKwcXykeol4Owjb.jpg',
      ),
      CastModel(
        name: 'Shin Eun-soo',
        character: 'Yoon Chung-ah',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w276_and_h350_face/6JOcSSp46RUXTqb9lvAYxBSoqb8.jpg',
      ),
    ],
    imageUrls: [
      'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/efaMS00Fevc3fw2dbeP7rh22O6D.jpg',
      'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/1sRp1aefPzFAJQkw5UUdLr59D4c.jpg',
      'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/1rAW1cSTtSoKGSuFpCAa7jukEiM.jpg',
      'https://media.themoviedb.org/t/p/w1000_and_h563_face/asMdxJystLveUL6M0NgiZsqxs9X.jpg',
      'https://media.themoviedb.org/t/p/w1000_and_h563_face/rXSFovuwqWqwwVqQinRHu9M7gZ3.jpg',
      'https://media.themoviedb.org/t/p/w1000_and_h563_face/eIL56eFFF6LJNXmmRLeD78PWevr.jpg',
    ],
  ),
  MovieListModel(
    title: 'Study Group',
    posterImagePotrait:
        'https://media.themoviedb.org/t/p/w440_and_h660_face/1x3xfnXQpxVfiRXUTqzX4CxU8yf.jpg',
    posterImageLandscape:
        'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/zmiOYuq4HWq2ohyTXjbOWj0fi3K.jpg',
    rating: 8.9,
    type: 'TV Series',
    genre: 'Action & Adventure, Comedy, Drama',
    year: '2025',
    description:
        'Nicknamed the "school for future criminals," Yuseong Technical High School isn\'t exactly the ideal place to study. A rarity among his peers, Ga-min is a student with just one goal: to get into university. At a school where it\'s every man for himself, he is rejected from countless study groups before he decides to form his own. Will he be able to defeat the odds and achieve his dreams?',
    castList: [
      CastModel(
        name: 'Minhyun',
        character: 'Yoon Ga-min',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w276_and_h350_face/3oZosX7hqc3Hs3hoABkWKpSJAqA.jpg',
      ),
      CastModel(
        name: 'Cha Woo-min',
        character: 'Phi Han-wool',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w276_and_h350_face/tTpNGMkd0DJPe6fJD8qfs0fmyO5.jpg',
      ),
      CastModel(
        name: 'Han Ji-eun',
        character: 'Lee Han-Kyung',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w276_and_h350_face/zIDcvAITf82sEDqfAcDfHDybEnM.jpg',
      ),
      CastModel(
        name: 'Shin Su-hyun',
        character: 'Lee Ji-woo',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w276_and_h350_face/aevYUC4Wz2QMFKQj3SBAmmGmrhp.jpg',
      ),
      CastModel(
        name: 'Yun Sang-jeong',
        character: 'Choi Hee-won',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w276_and_h350_face/pOwEfgsFJhYQ8PtxtQW0aaeW0nR.jpg',
      ),
    ],
    imageUrls: [
      'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/zmiOYuq4HWq2ohyTXjbOWj0fi3K.jpg',
      'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/iPUi8wpzOUj8QWw2fMgBwx66mgB.jpg',
      'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/3viu1BArnWbvR3eAQvPApbu3A4I.jpg',
      'https://image.tmdb.org/t/p/original/5VCyKMVojZA3fPfVuIgz0wBKSBL.jpg',
      'https://media.themoviedb.org/t/p/w1000_and_h563_face/zT9ULEImeF3jEfVVy0pIaSbcOig.jpg',
    ],
  ),
  MovieListModel(
    title: 'KPop Demon Hunters',
    posterImagePotrait:
        'https://image.tmdb.org/t/p/w1280/zT7Lhw3BhJbMkRqm9Zlx2YGMsY0.jpg',
    posterImageLandscape:
        'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/w3Bi0wygeFQctn6AqFTwhGNXRwL.jpg',
    rating: 7.6,
    type: 'Movie',
    genre: 'Fantasy, Music, Comedy, Animation',
    year: '2025',
    description:
        'When K-pop superstars Rumi, Mira and Zoey aren\'t selling out stadiums, they\'re using their secret powers to protect their fans from supernatural threats.',
    castList: [
      CastModel(
        name: 'Arden Cho',
        character: 'Rumi (voice)',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w276_and_h350_face/uPtfAFoEYeNGRl6n0GdxLPxdM9u.jpg',
      ),
      CastModel(
        name: 'May Hong',
        character: 'Mira (voice)',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w276_and_h350_face/hnWIn2hxnJt16j0rDTiqdbG5LQo.jpg',
      ),
      CastModel(
        name: 'Ji-young Yoo',
        character: 'Zoey (voice)',
        imageurlCast:
            'https://media.themoviedb.org/t/p/w276_and_h350_face/4jgtqpNWhMx8XOKQ9qQJvDdzbxG.jpg',
      ),
    ],
    imageUrls: [
      'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/w3Bi0wygeFQctn6AqFTwhGNXRwL.jpg',
      'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/rJjhOuRFldNF0OWSuSk4PiCLmeA.jpg',
      'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/z7PYbbFjiKrhInOaY08cjyTkdil.jpg',
    ],
  ),
];
