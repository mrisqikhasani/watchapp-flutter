import 'package:flutter/material.dart';
import 'package:watchapp/detail_page.dart';
import 'package:watchapp/directory/model/movie_list_model.dart';

class ListMovie extends StatelessWidget {
  const ListMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int crossAxisCount;

        if (constraints.maxWidth >= 1200) {
          crossAxisCount = 6;
        } else if (constraints.maxWidth >= 900) {
          crossAxisCount = 5;
        } else if (constraints.maxWidth >= 600) {
          crossAxisCount = 3;
        } else if (constraints.maxWidth >= 390){
          crossAxisCount = 2;
        } else {
          crossAxisCount = 1;
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Trending",
              style: TextStyle(
                color: Color(0xfff9f8ff),
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),

            SizedBox(height: 12),

            GridView.builder(
              itemCount: movieTrending.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                childAspectRatio: 3 / 6, // FIX: tambahin tinggi biar muat text
                crossAxisSpacing: 16,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (context, index) {
                final movie = movieTrending[index];
                return _buildMovieCard(context, movie);
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildMovieCard(BuildContext context, MovieListModel movie) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => DetailPage(movie: movie)),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Poster + badges
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3 / 4,
                  child: Image.network(
                    movie.posterImagePotrait,
                    fit: BoxFit.cover,
                  ),
                ),

                // Badge Type (Top-Left)
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      movie.type,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // Rating Badge (Top-Right)
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.65),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellowAccent, size: 12),
                        SizedBox(width: 3),
                        Text(
                          movie.rating.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 8),

          Text(
            "${movie.title} (${movie.year})",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Color(0xfff9f8ff),
              fontWeight: FontWeight.w600,
              fontSize: 14,
              height: 1.1,
            ),
          ),

          SizedBox(height: 4),

          // Genre
          Text(
            movie.genre,
            maxLines: 1,
            overflow: TextOverflow.fade,
            style: TextStyle(color: Colors.white70, fontSize: 11),
          ),
        ],
      ),
    );
  }
}
