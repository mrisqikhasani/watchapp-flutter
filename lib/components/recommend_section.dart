import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:watchapp/directory/model/movie_list_model.dart';
import 'package:watchapp/detail_page.dart';


class RecommendSection extends StatelessWidget {
  const RecommendSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return RecommendSectionWeb();
        } else {
          return RecommendSectionMobile();
        }
      },
    );
  }
}


class RecommendSectionMobile extends StatefulWidget {
  const RecommendSectionMobile({Key? key}) : super(key: key);

  @override
  State<RecommendSectionMobile> createState() => _RecommendSectionMobileState();
}

class _RecommendSectionMobileState extends State<RecommendSectionMobile> {
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
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(height: 16),

        SizedBox(
          height: 240,
          child: PageView(
            controller: _controller,
            children: recommendForYou
                .map((movie) => _buildMovieRecommendCardMobile(movie))
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

  Widget _buildMovieRecommendCardMobile(MovieListModel movie) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => DetailPage(movie: movie)),
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
                child: Image.network(
                  movie.posterImageLandscape!,
                  fit: BoxFit.cover,
                ),
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
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
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
                              fontWeight: FontWeight.w600,
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


class RecommendSectionWeb extends StatefulWidget {
  const RecommendSectionWeb({super.key});

  @override
  State<RecommendSectionWeb> createState() => _RecommendSectionWebState();
}

class _RecommendSectionWebState extends State<RecommendSectionWeb> {
  late final PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(viewportFraction: 0.55);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Recommend For You',
          style: TextStyle(
            color: Color(0xfff9f8ff),
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
        ),

        const SizedBox(height: 24),

        SizedBox(
          height: 420,
          child: PageView(
            controller: _controller,
            children: recommendForYou
                .map((movie) => _buildMovieCardRecommendWeb(movie))
                .toList(),
          ),
        ),

        const SizedBox(height: 20),

        Center(
          child: SmoothPageIndicator(
            controller: _controller,
            count: recommendForYou.length,
            effect: const ExpandingDotsEffect(
              activeDotColor: Colors.red,
              dotHeight: 10,
              dotWidth: 10,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMovieCardRecommendWeb(MovieListModel movie) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => DetailPage(movie: movie)),
      ),
      child: Container(
        margin: const EdgeInsets.only(right: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 18,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.network(movie.posterImageLandscape!, fit: BoxFit.cover),
              ),

              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: [
                        Colors.black.withOpacity(0.75),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 14,
                left: 14,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    movie.type,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              Positioned(
                bottom: 18,
                left: 18,
                right: 18,
                child: Row(
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
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "${movie.genre} • ${movie.year}",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.85),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.yellowAccent, size: 26),
                        const SizedBox(width: 6),
                        Text(
                          movie.rating.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
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


