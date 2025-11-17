import 'package:flutter/material.dart';
import 'package:watchapp/components/cast_detail.dart';
import 'package:watchapp/components/highlight_detail.dart';
import 'package:watchapp/directory/model/movie_list_model.dart';


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

              HighlightDetail(movie: movie),

              SizedBox(height: 25),

              CastDetail(movie: movie),

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

