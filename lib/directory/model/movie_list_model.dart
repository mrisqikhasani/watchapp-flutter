class CastModel {
  String name;
  String character;
  String? imageurlCast;

  CastModel({required this.name, required this.character, this.imageurlCast});
}

class MovieListModel {
  String title;
  String? posterImagePotrait;
  String? posterImageLandscape;
  num rating;
  String type;
  String genre;
  String year;
  String description;
  List<CastModel> castList;
  List<String> imageUrls;

  MovieListModel({
    required this.title,
    this.posterImageLandscape,
    this.posterImagePotrait,
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
    ],
  ),
];
