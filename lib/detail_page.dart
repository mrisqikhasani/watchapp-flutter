import 'package:flutter/material.dart';
import 'package:watchapp/directory/model/movie_list_model.dart';

bool isFavorite = false;
bool isWatchlist = false;

class DetailPage extends StatelessWidget {
  final MovieListModel movie;

  const DetailPage({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0e1518),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Back Button
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                ),
              ),

              SizedBox(height: 5),

              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 480,
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      image: DecorationImage(
                        image: NetworkImage(movie.posterImagePotrait!),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.red.withValues(alpha: 0.3),
                          blurRadius: 25,
                          spreadRadius: 2,
                          offset: Offset(0, 6),
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        movie.type,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // ===== END POSTER UPDATE =====
              SizedBox(height: 20),

              // Title
              Text(
                movie.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 6),

              // Genre + year + duration
              Text(
                "${movie.genre} • ${movie.year}",
                style: TextStyle(color: Colors.white70, fontSize: 14),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.yellow, size: 20),
                  SizedBox(width: 4),
                  Text(
                    movie.rating.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(width: 4),
                  Text(
                    "(15,697)",
                    style: TextStyle(color: Colors.white54, fontSize: 12),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Description
              Text(
                movie.description,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.9),
                  fontSize: 15,
                  height: 1.4,
                ),
              ),

              SizedBox(height: 25),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Cast",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        "${movie.castList.length}+",
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.7),
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  ListView.builder(
                    itemCount: movie.castList.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final cast = movie.castList[index];

                      return Container(
                        margin: const EdgeInsets.only(bottom: 14),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Photo
                            ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.network(
                                cast.imageurlCast!,
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                            ),

                            const SizedBox(width: 12),

                            // Text Info
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    cast.name,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),

                                  Text(
                                    cast.character,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white.withValues(
                                        alpha: .75,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 14),
                  const Text(
                    "Media",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 12),

                  // List Images (vertical)
                  Column(
                    children: movie.imageUrls.take(3).map((imageUrl) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(14),
                          child: AspectRatio(
                            aspectRatio: 16 / 9,
                            child: Image.network(imageUrl, fit: BoxFit.cover),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),

              SizedBox(height: 30),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(16, 10, 16, 20),
        decoration: BoxDecoration(
          color: Colors.transparent,
          boxShadow: [
            BoxShadow(
              color: Colors.transparent,
              blurRadius: 10,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          children: [
            const WatchListButton(),
            SizedBox(width: 14),
            const FavoriteButton(),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}


class WatchListButton extends StatefulWidget {
  const WatchListButton({Key? key}) : super(key: key);

  @override
  _WatchListButtonState createState() => _WatchListButtonState();
}

class _WatchListButtonState extends State<WatchListButton> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          setState(() {
            isAdded = !isAdded;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 250),
          padding: EdgeInsets.symmetric(vertical: 14),
          decoration: BoxDecoration(
            color: isAdded ? Colors.green.withValues(alpha: .25) : Colors.white10,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isAdded ? Colors.greenAccent : Colors.transparent,
              width: 1.3,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                isAdded ? Icons.check : Icons.bookmark_add_outlined,
                color: Colors.white,
              ),
              SizedBox(width: 6),
              Text(
                isAdded ? "Added to Watchlist" : "Add to Watchlist",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

