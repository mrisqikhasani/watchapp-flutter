import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:watchapp/directory/model/movie_list_model.dart';
import 'package:watchapp/detail_page.dart';

class RecommendSection extends StatefulWidget {
  const RecommendSection({Key? key}) : super(key: key);

  @override
  State<RecommendSection> createState() => _RecommendSectionState();
}

class _RecommendSectionState extends State<RecommendSection> {
  final PageController _controller = PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Recommend For You',
          style: TextStyle(
            color: Color(0xfff9f8ff),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 16),

        // SizedBox(
        //   height: 240,
        //   child: PageView.builder(
        //     controller: _controller,
        //     itemCount: recommendForYou.length,
        //     itemBuilder: (context, index) {
        //       return _buildMovieCard(movie s[index]);
        //     },
        //   ),
        // ),
        SizedBox(
          height: 240,
          child: PageView(
            controller: _controller,
            children: recommendForYou
                .map((movie) => _buildMovieCard(movie))
                .toList(),
          ),
        ),

        const SizedBox(height: 12),

        Center(
          child: SmoothPageIndicator(
            controller: _controller,
            count: recommendForYou.length,
            effect: const ExpandingDotsEffect(
              activeDotColor: Colors.red,
              dotHeight: 8,
              dotWidth: 8,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMovieCard(MovieListModel movie) {
  return InkWell(
    borderRadius: BorderRadius.circular(20),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => DetailPage(movie: movie),
        ),
      );
    },
    child: Container(
      width: 320,
      margin: const EdgeInsets.only(right: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.network(movie.posterImageLandscape!, fit: BoxFit.cover),
            ),

            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    colors: [
                      Colors.black.withValues(alpha: 0.7),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              top: 10,
              left: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  movie.type,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 14,
              left: 14,
              right: 14,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          movie.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "${movie.genre} • ${movie.year}",
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.8),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellowAccent,
                        size: 22,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        movie.rating.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

}
