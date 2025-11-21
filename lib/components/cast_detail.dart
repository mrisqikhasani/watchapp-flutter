import 'package:flutter/material.dart';
import 'package:watchapp/directory/model/movie_list_model.dart';

class CastDetail extends StatelessWidget {
  final MovieListModel movie;

  const CastDetail({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isWeb = constraints.maxWidth >= 800;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            const SizedBox(height: 12),
            isWeb ? _buildWebCardView() : _buildMobileList(),
          ],
        );
      },
    );
  }

  Widget _buildHeader() {
    return Row(
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
          style: TextStyle(color: Colors.white70, fontSize: 13),
        ),
      ],
    );
  }

  Widget _buildMobileList() {
    return ListView.builder(
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
              _photo(cast.imageurlCast, size: 60),
              const SizedBox(width: 12),
              Expanded(
                child: _textInfo(cast.name, cast.character, TextAlign.left),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildWebCardView() {
    return Wrap(
      spacing: 22,
      runSpacing: 22,
      children: movie.castList.map((cast) {
        return SizedBox(
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _photo(cast.imageurlCast, size: 100),
              const SizedBox(height: 8),
              _textInfo(cast.name, cast.character, TextAlign.center),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _photo(String url, {required double size}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2),
      child: Image.network(url, width: size, height: size, fit: BoxFit.cover),
    );
  }

  Widget _textInfo(String name, String role, TextAlign align) {
    return Column(
      crossAxisAlignment: align == TextAlign.left
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        Text(
          name,
          textAlign: align,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          role,
          textAlign: align,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 13, color: Colors.white.withValues(alpha: 0.75)),
        ),
      ],
    );
  }
}
