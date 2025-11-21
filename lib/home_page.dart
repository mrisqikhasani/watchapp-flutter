import 'package:flutter/material.dart';
import 'package:watchapp/components/home_app_bar_components.dart';
import 'package:watchapp/components/list_movie.dart';
import 'package:watchapp/components/recommend_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0e1518),
      appBar: HomeAppBarComponents(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RecommendSection(),
            SizedBox(height: 20),
            ListMovie(),
          ],
        ),
      ),
    );
  }
}
