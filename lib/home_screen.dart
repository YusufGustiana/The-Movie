import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/widgets/top_rated_movie.dart';
import 'package:movie_app/widgets/trending.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          'assets/movie.png',
          fit: BoxFit.cover,
          height: 40,
          filterQuality: FilterQuality.high,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Trending Movies', style: GoogleFonts.aBeeZee(fontSize: 25)),
              const SizedBox(
                height: 32,
              ),
              Trending(),
              SizedBox(height: 32),
              Text(
                'Top rated movie',
                style: GoogleFonts.aBeeZee(fontSize: 25),
              ),
              SizedBox(height: 32),
              TopRatedMovie(),
              SizedBox(height: 32),
              Text(
                'Upcoming movie',
                style: GoogleFonts.aBeeZee(fontSize: 25),
              ),
              SizedBox(height: 32),
              TopRatedMovie(),
            ],
          ),
        ),
      ),
    );
  }
}
