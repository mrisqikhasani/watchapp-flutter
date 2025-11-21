import 'package:flutter/material.dart';
import 'package:watchapp/directory/model/movie_list_model.dart';

class MediaDetail extends StatelessWidget {
  final MovieListModel movie;

  const MediaDetail({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
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

        LayoutBuilder(
          builder: (context, constraints) {
            double width = constraints.maxWidth;

            int crossAxisCount = 1; 

            if (width > 900) {
              crossAxisCount = 3; 
            } else if (width > 600) {
              crossAxisCount = 2;
            }

            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: movie.imageUrls.take(6).length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 16 / 9, 
              ),
              itemBuilder: (context, index) {
                final imageUrl = movie.imageUrls[index];

                return ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.network(imageUrl, fit: BoxFit.cover),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
