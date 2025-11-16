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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: AspectRatio(
            aspectRatio: 3 / 4,
            child: Image.network(
              movie.posterImagePotrait!,
              fit: BoxFit.cover,
            ),
          ),
        ),

        SizedBox(height: 8),

        Text(
          movie.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Color(0xfff9f8ff),
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),

        SizedBox(height: 4),

        Text(
          "${movie.genre} - ${movie.year}",
          style: TextStyle(
            color: Color(0xfff9f8ff),
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
