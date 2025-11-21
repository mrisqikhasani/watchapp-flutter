import 'package:flutter/material.dart';
import 'package:watchapp/components/cast_detail.dart';
import 'package:watchapp/components/highlight_detail.dart';
import 'package:watchapp/components/media_detail.dart';
import 'package:watchapp/directory/model/movie_list_model.dart';

class DetailPage extends StatelessWidget {
  final MovieListModel movie;

  const DetailPage({super.key, required this.movie});

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

              MediaDetail(movie: movie),

              SizedBox(height: 30),
            ],
          ),
        ),
      ),

      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 10, 16, 20),
        child: Row(
          children: const [
            Expanded(child: WatchListButton()),
            SizedBox(width: 14),
            Expanded(child: FavoriteButton()),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  FavoriteButtonState createState() => FavoriteButtonState();
}

class FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: isFavorite ? Colors.red.withValues(alpha: 0.25) : Colors.red,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: Colors.white,
            ),
            const SizedBox(width: 6),
            Text(
              isFavorite ? "Favorited" : "Favorite",
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}


class WatchListButton extends StatefulWidget {
  const WatchListButton({super.key});

  @override
  WatchListButtonState createState() => WatchListButtonState();
}

class WatchListButtonState extends State<WatchListButton> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {
        setState(() {
          isAdded = !isAdded;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: isAdded ? Colors.green.withValues(alpha: 0.25) : Colors.white10,
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
            const SizedBox(width: 6),
            Text(
              isAdded ? "Added to Watchlist" : "Add to Watchlist",
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
