import 'package:flutter/material.dart';
import 'package:watchapp/directory/model/movie_list_model.dart';

class ListMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Trending",
          style: TextStyle(
            color: Color(0xfff9f8ff),
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 12),

        GridView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 5,
            crossAxisSpacing: 16,
            mainAxisSpacing: 20,
          ),
          children: recommendForYou
              .map((movie) => _buildMovieCard(movie))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildMovieCard(MovieListModel movie) {
  return GestureDetector(
    onTap: () {},
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Poster + badges
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: 3 / 4,
                child: Image.network(
                  movie.posterImagePotrait!,
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
                    color: Colors.black.withOpacity(0.65),
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

        // Movie Title (Under Poster)
        Text(
          "${movie.title} (${movie.year})",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Color(0xfff9f8ff),
            fontWeight: FontWeight.w700,
            fontSize: 14,
            height: 1.1,
          ),
        ),

        SizedBox(height: 4),

        // Genre + Year
        Text(
          movie.genre,
          maxLines: 1,
          overflow: TextOverflow.fade,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 11,
          ),
        ),
      ],
    ),
  );
}

}
