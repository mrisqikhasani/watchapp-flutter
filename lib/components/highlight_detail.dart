import 'package:flutter/material.dart';
import 'package:watchapp/directory/model/movie_list_model.dart';

class HighlightDetail extends StatelessWidget {
  final MovieListModel movie;

  const HighlightDetail({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {

        if (constraints.maxWidth >= 800) {
          return _buildWebLayout(context);
        } else {
          return _buildMobileLayout(context);
        }
      },
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Column(
      children: [
        _buildPoster(height: 420, width: 300),
        const SizedBox(height: 18),
        _buildTitleAndMeta(TextAlign.center),
        const SizedBox(height: 20),
        _buildDescription(),
      ],
    );
  }

  Widget _buildWebLayout(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 4,
          child: Align(
            alignment: Alignment.topCenter,
            child: _buildPoster(height: 520, width: 350),
          ),
        ),

        const SizedBox(width: 32),

        Expanded(
          flex: 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTitleAndMeta(TextAlign.left),
              const SizedBox(height: 30),
              _buildDescription(fontSize: 16, maxWidth: 600),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPoster({required double height, required double width}) {
    return Stack(
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23),
            image: DecorationImage(
              image: NetworkImage(movie.posterImagePotrait),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.red.withValues(alpha: 0.25),
                blurRadius: 25,
                spreadRadius: 2,
                offset: const Offset(0, 6),
              ),
            ],
          ),
        ),

        Positioned(
          top: 10,
          left: 10,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              movie.type,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTitleAndMeta(TextAlign align) {
    return Column(
      crossAxisAlignment: align == TextAlign.left
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        Text(
          movie.title,
          textAlign: align,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 6),

        Text(
          "${movie.genre} • ${movie.year}",
          textAlign: align,
          style: TextStyle(color: Colors.white70, fontSize: 14),
        ),

        const SizedBox(height: 10),

        Row(
          mainAxisAlignment: align == TextAlign.left
              ? MainAxisAlignment.start
              : MainAxisAlignment.center,
          children: [
            const Icon(Icons.star, color: Colors.yellow, size: 20),
            const SizedBox(width: 4),
            Text(
              movie.rating.toString(),
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(width: 4),
            const Text(
              "/ 10",
              style: TextStyle(color: Colors.white54, fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDescription({double fontSize = 15, double maxWidth = double.infinity}) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: maxWidth),
      child: Text(
        movie.description,
        style: TextStyle(
          color: Colors.white.withValues(alpha: 0.9),
          fontSize: fontSize,
          height: 1.4,
        ),
      ),
    );
  }
}
